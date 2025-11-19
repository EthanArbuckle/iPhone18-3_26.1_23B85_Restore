void PLPushPhotoLibraryClient(uint64_t a1)
{
  v2 = __clientStack;
  if (!__clientStack)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = __clientStack;
    __clientStack = v3;

    v2 = __clientStack;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  [v2 insertObject:v5 atIndex:0];

  __photoLibraryClient = a1;
}

void sub_19BF22E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19BF2322C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PLHandleSpotlightAddedOrUpdatedItems(void *a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v33 = a1;
  v37 = 0;
  v35 = [PLPhotoLibraryOpener runningLibraryServicesManagerForWellKnownPhotoLibraryIdentifier:3 error:&v37];
  v32 = v37;
  v1 = [v35 databaseContext];
  v2 = [v1 syndicationIngestMutex];
  v34 = [v2 tryUsingSyndicationIngestLibraryWithIdentifier:2 forceRetry:0];

  if (!v34)
  {
    v16 = [v35 databaseContext];
    if (v16)
    {
      v17 = v32 == 0;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    v19 = PLSyndicationGetLog();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (v18)
    {
      if (v20)
      {
        LOWORD(buf) = 0;
        v21 = "[sync.spotlightReceiver] Unable to create a short lived moc for syndication library (try failed)";
        v22 = v19;
        v23 = 2;
LABEL_28:
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, v21, &buf, v23);
      }
    }

    else if (v20)
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v32;
      v21 = "[sync.spotlightReceiver] Unable to create a short lived moc for syndication library: %@";
      v22 = v19;
      v23 = 12;
      goto LABEL_28;
    }

    v24 = 0;
    v15 = 1;
    goto LABEL_30;
  }

  v3 = v34;
  v4 = v33;
  v5 = [MEMORY[0x1E695DF70] array];
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v42 objects:&buf count:16];
  if (v7)
  {
    v8 = *v43;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        if (PLSearchableItemRepresentsConversation(v10))
        {
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __PLHandleSpotlightAddedOrUpdatedItemsForSyndicationLibrary_block_invoke;
          v38[3] = &unk_1E75778C0;
          v38[4] = v10;
          v12 = v3;
          v39 = v12;
          v41 = &v46;
          v40 = v5;
          [v12 performTransactionAndWait:v38];
        }

        else if (PLSearchableItemRepresentsAsset(v10))
        {
          *(v47 + 24) = 1;
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v6 countByEnumeratingWithState:&v42 objects:&buf count:16];
    }

    while (v7);
  }

  if (*(v47 + 24) == 1)
  {
    v13 = [v5 copy];
    v14 = v13;
    v15 = *(v47 + 24);
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  _Block_object_dispose(&v46, 8);

  v24 = v13;
  v19 = [v35 databaseContext];
  v25 = [v19 syndicationIngestMutex];
  [v25 stopUsingSyndicationIngestLibraryWithIdentifier:2];

LABEL_30:
  if ([v24 count])
  {
    v36 = 0;
    v26 = PLCreateShortLivedWellKnownPhotoLibrary(1, "BOOL PLHandleSpotlightAddedOrUpdatedItems(NSArray<CSSearchableItem *> * _Nonnull __strong)", &v36);
    v27 = v36;
    if (v26)
    {
      v28 = v26;
      v29 = v24;
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v51 = __PLDeleteAssetImmediatelyForSystemLibrary_block_invoke;
      v52 = &unk_1E7578848;
      v53 = v28;
      v54 = v29;
      [v28 performTransactionAndWait:&buf];
    }

    else
    {
      v30 = PLSyndicationGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v27;
        _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "[sync.spotlightReceiver] Unable to create a short lived moc for system library: %@", &buf, 0xCu);
      }
    }
  }

  return v15 & 1;
}

BOOL PLSyndicationRuntimeEnabled()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 valueForKey:@"PLSyndicationRuntimeEnabled"];

  v2 = !v1 || [v1 BOOLValue];
  return v2;
}

id PLAllCloudDeletionKeys()
{
  pl_dispatch_once();
  v0 = PLAllCloudDeletionKeys_pl_once_object_17;

  return v0;
}

void __PLRegisterAttributeTransformers_block_invoke()
{
  v3 = objc_alloc_init(PLUUIDStringFromUUIDDataTransformer);
  [MEMORY[0x1E696B0A0] setValueTransformer:v3 forName:@"PLUUIDStringFromUUIDData"];
  v0 = objc_alloc_init(PLPropertyListFromDataTransformer);
  [MEMORY[0x1E696B0A0] setValueTransformer:v0 forName:@"PLPropertyListFromData"];
  v1 = objc_alloc_init(PLRectValueFromDataTransformer);
  [MEMORY[0x1E696B0A0] setValueTransformer:v1 forName:@"PLRectValueFromData"];
  v2 = objc_alloc_init(PLGlobalKeyValueAnyTransformer);
  [MEMORY[0x1E696B0A0] setValueTransformer:v2 forName:@"PLGlobalKeyValueAnyTransformer"];
}

void sub_19BF24F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

NSObject *s_dispatch_queue_create_for_notifications(const char *a1, void *a2)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_attr_make_initially_inactive(v4);
  v6 = a2;

  v7 = dispatch_queue_create(a1, v5);
  dispatch_set_qos_class_fallback();
  dispatch_set_target_queue(v7, v6);

  dispatch_activate(v7);

  return v7;
}

void sub_19BF25B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __PLAllCloudDeletionKeys_block_invoke()
{
  v3[17] = *MEMORY[0x1E69E9840];
  v3[0] = @"cloudAssetDeleteGUIDs";
  v3[1] = @"cloudAlbumDeleteGUIDs";
  v3[2] = @"cloudMemoryDeleteGUIDs";
  v3[3] = @"cloudPersonDeleteGUIDs";
  v3[4] = @"cloudFaceCropDeleteGUIDs";
  v3[5] = @"cloudOwnedCMMDeleteGUIDs";
  v3[6] = @"cloudSubscribedCMMDeleteGUIDs";
  v3[7] = @"cloudOwnedLibraryScopeDeleteGUIDs";
  v3[8] = @"cloudSubscribedLibraryScopeDeleteGUIDs";
  v3[9] = @"cloudSuggestionDeleteGUIDs";
  v3[10] = @"cloudUserFeedbackDeleteGUIDs";
  v3[11] = @"cloudInternalResourceUUIDToResourceTypeMappings";
  v3[12] = @"cloudSocialGroupDeleteGUIDs";
  v3[13] = @"cloudOwnedCollectionShareDeleteGUIDs";
  v3[14] = @"cloudSubscribedCollectionShareDeleteGUIDs";
  v3[15] = @"cloudReactDeleteGUIDs";
  v3[16] = @"cloudTextCommentDeleteGUIDs";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:17];
  v1 = [v0 copy];
  v2 = PLAllCloudDeletionKeys_pl_once_object_17;
  PLAllCloudDeletionKeys_pl_once_object_17 = v1;
}

const __CFString *PLIsRunningInStoreDemoMode()
{
  result = CPCopySharedResourcesPreferencesDomainForDomain();
  if (result)
  {
    v1 = result;
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"StoreDemoMode", result, &keyExistsAndHasValidFormat);
    CFRelease(v1);
    if (AppBooleanValue)
    {
      v3 = keyExistsAndHasValidFormat == 0;
    }

    else
    {
      v3 = 1;
    }

    return !v3;
  }

  return result;
}

id PLXPCStoreAllowedEntityNames()
{
  pl_dispatch_once();
  v0 = PLXPCStoreAllowedEntityNames_pl_once_object_15;

  return v0;
}

id PLSafeEntityForNameInManagedObjectContext(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = [MEMORY[0x1E695D5B8] entityForName:a1 inManagedObjectContext:a2];
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSManagedObjectContext is NULL looking for entity named %@", a1];
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v5;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    if (a3)
    {
      v7 = MEMORY[0x1E696ABC0];
      v8 = *MEMORY[0x1E69BFF48];
      v11 = *MEMORY[0x1E696A578];
      v12 = v5;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      *a3 = [v7 errorWithDomain:v8 code:46301 userInfo:v9];
    }

    v4 = 0;
  }

  return v4;
}

void sub_19BF2655C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _PLIsCloudPhotoLibraryEnabledForCurrentUserWithDataclass(void *a1)
{
  v1 = a1;
  if (PLPlatformCloudPhotosPrimarySyncSupported())
  {
    v2 = +[PLAccountStore pl_sharedAccountStore];
    v3 = [v2 cachedPrimaryAppleAccount];

    v4 = [v3 isEnabledForDataclass:v1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_19BF26A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PLSearchableItemRepresentsConversation(void *a1)
{
  v1 = a1;
  v2 = [v1 bundleID];
  if ([v2 isEqualToString:*MEMORY[0x1E69BFF00]])
  {
    v3 = [v1 attributeSet];
    v4 = [v3 domainIdentifier];
    v5 = [v4 isEqualToString:@"chatDomain"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t PLSearchableItemRepresentsAsset(void *a1)
{
  v1 = a1;
  v2 = [v1 bundleID];
  v3 = [v2 isEqualToString:*MEMORY[0x1E69BFF00]];

  if (v3)
  {
    v4 = [v1 attributeSet];
    v5 = [v4 domainIdentifier];
    v6 = [v5 isEqualToString:@"attachmentDomain"];
LABEL_8:

    goto LABEL_9;
  }

  v7 = [v1 bundleID];
  v8 = [v7 isEqualToString:*MEMORY[0x1E69BFF20]];

  if (v8)
  {
    v4 = [v1 attributeSet];
    v5 = [v4 attributeDictionary];
    v9 = [v5 objectForKeyedSubscript:@"_ICItemSearchResultType"];
    v6 = [v9 integerValue] == 1;

    goto LABEL_8;
  }

  v10 = [v1 bundleID];
  v11 = [v10 isEqualToString:*MEMORY[0x1E69BFFC8]];

  if ((v11 & 1) == 0)
  {
    v4 = [v1 attributeSet];
    v5 = [v4 fileProviderID];
    v6 = v5 != 0;
    goto LABEL_8;
  }

  v6 = 1;
LABEL_9:

  return v6;
}

uint64_t PLSearchNaturalLanguageInitialSuggestionsSupportedForLocale(void *a1)
{
  v1 = [a1 languageCode];
  v2 = [&unk_1F0FBFE80 containsObject:v1];

  return v2;
}

id PLThumbnailManagerForPathManager()
{
  v0 = PLLibraryIDFromPathManager();
  v1 = PLDataStoreForClassIDAndLibraryID(1, v0);
  v2 = [v1 thumbnailManager];

  return v2;
}

id PLDataStoreClassForID(int a1)
{
  v2 = 0;
  v6 = *MEMORY[0x1E69E9840];
  if (a1 <= 1)
  {
    if (a1 > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (a1 == 2 || a1 == 3)
  {
LABEL_9:
    v2 = objc_opt_class();
    goto LABEL_10;
  }

  if (a1 == 4)
  {
    v3 = PLImageManagerGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = 4;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "PLDataStoreClassForID unsupported classID: %d", v5, 8u);
    }

    v2 = 0;
  }

LABEL_10:

  return v2;
}

uint64_t PLCloudPhotoLibraryLocalModeEnabled(void *a1)
{
  v1 = [a1 cplLocalModeEnabledMarkerFilePathForReading];
  v2 = PLDoesIndicatorFileExistAtPath();

  return v2;
}

id PLDataStoreForClassIDAndLibraryID(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v4 = PLImageManagerGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 67109120;
      v22 = a1;
      v5 = "PLDataStoreForClassIDAndLibraryID called for storeClassID: %d without libraryID.";
      v6 = v4;
      v7 = 8;
      goto LABEL_7;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_20;
  }

  if (a1 >= 4)
  {
    v4 = PLImageManagerGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 67109378;
      v22 = a1;
      v23 = 2112;
      v24 = v3;
      v5 = "PLDataStoreForClassIDAndLibraryID called for out of range storeClassID: %d for libraryID: %@";
      v6 = v4;
      v7 = 18;
LABEL_7:
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, v5, &v21, v7);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  os_unfair_lock_lock(&s_lock);
  v9 = s_dataStoresByClassIDByLibraryID;
  if (!s_dataStoresByClassIDByLibraryID)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = s_dataStoresByClassIDByLibraryID;
    s_dataStoresByClassIDByLibraryID = v10;

    v9 = s_dataStoresByClassIDByLibraryID;
  }

  v4 = [v9 objectForKeyedSubscript:v3];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
    [s_dataStoresByClassIDByLibraryID setObject:v4 forKeyedSubscript:v3];
  }

  v12 = 0x1E696A000uLL;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:a1];
  v8 = [v4 objectForKeyedSubscript:v13];

  if (!v8)
  {
    v14 = PLPathManagerFromLibraryID();
    v15 = PLDataStoreClassForID(a1);
    v16 = PLImageManagerGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v21 = 67109378;
      v22 = a1;
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEBUG, "[RM]: Initializing resource data store for class ID %d, libraryID: %@...", &v21, 0x12u);
    }

    v8 = [objc_msgSend(v15 "alloc")];
    if (!v8)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<PLResourceDataStore>  _Nullable PLDataStoreForClassIDAndLibraryID(PLResourceDataStoreClassID, __strong PLPhotoLibraryID _Nonnull)"}];
      [v19 handleFailureInFunction:v20 file:@"PLResourceDataStoreManager.m" lineNumber:104 description:@"couldn't create store"];

      v12 = 0x1E696A000;
    }

    v17 = [*(v12 + 3480) numberWithUnsignedShort:a1];
    [v4 setObject:v8 forKeyedSubscript:v17];
  }

  os_unfair_lock_unlock(&s_lock);
LABEL_20:

  return v8;
}

void sub_19BF27F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

unint64_t PLPropertyIndexSetValidateIndex(unint64_t result)
{
  if (result >= 0x40)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"index %tu exceeds maximum index set count of %tu", result, 64, v1, v2];
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v3);
  }

  return result;
}

void sub_19BF285E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19BF28898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19BF28C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _fileExtensionFromFileType(uint64_t a1, unsigned int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (onceToken != -1)
  {
    dispatch_once(&onceToken, &__block_literal_global_81513);
  }

  if (a2 > 2 || (v4 = *off_1E75728F8[a2], [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "objectForKeyedSubscript:", v5), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
      v14 = 138543362;
      v15 = v8;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "On-demand lookup of preferred extension for file type: %{public}@...", &v14, 0xCu);
    }

    v9 = kFileTypesToIdentifiers;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
    v11 = [v9 objectForKeyedSubscript:v10];

    v12 = [MEMORY[0x1E6982C40] typeWithIdentifier:v11];
    v6 = [MEMORY[0x1E69C08F0] preferredOrFallbackFilenameExtensionForType:v12 fallbackIdentifier:v11];
  }

  return v6;
}

void ___populateExtensionFileTypeMappings_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = *MEMORY[0x1E6982E58];
  _addExtensionToFileTypeMappingForCoreType(*MEMORY[0x1E6982E58], 1, v0, v1, v4);
  [v0 setObject:&unk_1F0FBDB88 forKeyedSubscript:@"JPG"];
  [v0 setObject:&unk_1F0FBDB88 forKeyedSubscript:@"jpg"];
  [v1 setObject:@"jpg" forKeyedSubscript:&unk_1F0FBDB88];
  _addExtensionToFileTypeMappingForCoreType(*MEMORY[0x1E6982E00], 3, v0, v1, v4);
  _addExtensionToFileTypeMappingForCoreType(*MEMORY[0x1E6982E10], 4, v0, v1, v4);
  _addExtensionToFileTypeMappingForCoreType(*MEMORY[0x1E6982F28], 6, v0, v1, v4);
  _addExtensionToFileTypeMappingForCoreType(*MEMORY[0x1E6982DE8], 7, v0, v1, v4);
  _addExtensionToFileTypeMappingForCoreType(*MEMORY[0x1E6983008], 8, v0, v1, v4);
  _addExtensionToFileTypeMappingForNonCoreIdentifier(*MEMORY[0x1E6987470], 5, v0, v1, v4);
  v6 = [MEMORY[0x1E69C08F0] avifIdentifier];
  _addExtensionToFileTypeMappingForNonCoreIdentifier(v6, 38, v0, v1, v4);

  v7 = [MEMORY[0x1E69C08F0] jpegXLIdentifier];
  _addExtensionToFileTypeMappingForNonCoreIdentifier(v7, 39, v0, v1, v4);

  v8 = [MEMORY[0x1E69C08F0] canonCR2RAWImageIdentifier];
  _addExtensionToFileTypeMappingForNonCoreIdentifier(v8, 11, v0, v1, v4);

  v9 = [MEMORY[0x1E69C08F0] canonCRWRAWImageIdentifier];
  _addExtensionToFileTypeMappingForNonCoreIdentifier(v9, 12, v0, v1, v4);

  v10 = [MEMORY[0x1E69C08F0] olympusRAWImageIdentifier];
  _addExtensionToFileTypeMappingForNonCoreIdentifier(v10, 13, v0, v1, v4);

  v11 = [MEMORY[0x1E69C08F0] panasonicRW2RAWImageIdentifier];
  _addExtensionToFileTypeMappingForNonCoreIdentifier(v11, 14, v0, v1, v4);

  v12 = [MEMORY[0x1E69C08F0] panasonicRAWImageIdentifier];
  _addExtensionToFileTypeMappingForNonCoreIdentifier(v12, 15, v0, v1, v4);

  v13 = [MEMORY[0x1E69C08F0] pentaxRAWImageIdentifier];
  _addExtensionToFileTypeMappingForNonCoreIdentifier(v13, 16, v0, v1, v4);

  v14 = [MEMORY[0x1E69C08F0] nikonRAWImageIdentifier];
  _addExtensionToFileTypeMappingForNonCoreIdentifier(v14, 17, v0, v1, v4);

  v15 = [MEMORY[0x1E69C08F0] samsungRAWImageIdentifier];
  _addExtensionToFileTypeMappingForNonCoreIdentifier(v15, 18, v0, v1, v4);

  v16 = [MEMORY[0x1E69C08F0] fujiRAWImageIdentifier];
  _addExtensionToFileTypeMappingForNonCoreIdentifier(v16, 21, v0, v1, v4);

  v17 = [MEMORY[0x1E69C08F0] leafamericaRAWImageIdentifier];
  _addExtensionToFileTypeMappingForNonCoreIdentifier(v17, 19, v0, v1, v4);

  v18 = [MEMORY[0x1E69C08F0] hasselblad3FRRAWImageIdentifier];
  _addExtensionToFileTypeMappingForNonCoreIdentifier(v18, 20, v0, v1, v4);

  v19 = [MEMORY[0x1E69C08F0] hasselbladFFFRAWImageIdentifier];
  _addExtensionToFileTypeMappingForNonCoreIdentifier(v19, 22, v0, v1, v4);

  v20 = [MEMORY[0x1E69C08F0] sonyARWRAWImageIdentifier];
  _addExtensionToFileTypeMappingForNonCoreIdentifier(v20, 10, v0, v1, v4);

  v21 = [*MEMORY[0x1E6982D58] identifier];
  _addExtensionToFileTypeMappingForNonCoreIdentifier(v21, 9, v0, v1, v4);

  _addExtensionToFileTypeMappingForCoreType(*MEMORY[0x1E6982F80], 23, v0, v1, v4);
  _addExtensionToFileTypeMappingForCoreType(*MEMORY[0x1E6982EC8], 24, v0, v1, v4);
  _addExtensionToFileTypeMappingForCoreType(*MEMORY[0x1E6982C78], 27, v0, v1, v4);
  _addExtensionToFileTypeMappingForNonCoreIdentifier(*MEMORY[0x1E6987480], 25, v0, v1, v4);
  _addExtensionToFileTypeMappingForNonCoreIdentifier(*MEMORY[0x1E6987448], 26, v0, v1, v4);
  _addExtensionToFileTypeMappingForCoreType(*MEMORY[0x1E6983090], 30, v0, v1, v4);
  _addExtensionToFileTypeMappingForCoreType(*MEMORY[0x1E6982C68], 32, v0, v1, v4);
  _addExtensionToFileTypeMappingForCoreType(*MEMORY[0x1E6982EA0], 33, v0, v1, v4);
  _addExtensionToFileTypeMappingForNonCoreIdentifier(*MEMORY[0x1E6987488], 29, v0, v1, v4);
  _addExtensionToFileTypeMappingForNonCoreIdentifier(*MEMORY[0x1E6987450], 34, v0, v1, v4);
  _addExtensionToFileTypeMappingForNonCoreIdentifier(*MEMORY[0x1E6987458], 31, v0, v1, v4);
  _addExtensionToFileTypeMappingForNonCoreIdentifier(*MEMORY[0x1E6987478], 28, v0, v1, v4);
  _addExtensionToFileTypeMappingForCoreType(*MEMORY[0x1E6982F68], 35, v0, v1, v4);
  _addExtensionToFileTypeMappingForCoreType(*MEMORY[0x1E6982D60], 36, v0, v1, v4);
  v22 = [MEMORY[0x1E69C08F0] supplementalResourceAAEIdentifier];
  _addExtensionToFileTypeMappingForNonCoreIdentifier(v22, 37, v0, v1, v4);

  v23 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v0];
  v24 = kFileIdentifierKeyExtensionsToFileTypes;
  kFileIdentifierKeyExtensionsToFileTypes = v23;

  v25 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v1];
  v26 = kFileIdentifierKeyFileTypesToExtensions;
  kFileIdentifierKeyFileTypesToExtensions = v25;

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = ___populateExtensionFileTypeMappings_block_invoke_79;
  v42[3] = &unk_1E75728B0;
  v43 = v2;
  v44 = v3;
  v27 = v3;
  v28 = v2;
  [v1 enumerateKeysAndObjectsUsingBlock:v42];
  v29 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v28];
  v30 = kFileIdentifierKeyFileTypesToExtensionsLowercased;
  kFileIdentifierKeyFileTypesToExtensionsLowercased = v29;

  v31 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v27];
  v32 = kFileIdentifierKeyFileTypesToExtensionsUppercased;
  kFileIdentifierKeyFileTypesToExtensionsUppercased = v31;

  v33 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v4];
  v34 = kIdentifiersToFileTypes;
  kIdentifiersToFileTypes = v33;

  v35 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = ___populateExtensionFileTypeMappings_block_invoke_2;
  v40[3] = &unk_1E75728D8;
  v41 = v35;
  v36 = v35;
  [v4 enumerateKeysAndObjectsUsingBlock:v40];
  v37 = [v5 identifier];
  [v36 setObject:v37 forKeyedSubscript:&unk_1F0FBDB88];

  v38 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v36];
  v39 = kFileTypesToIdentifiers;
  kFileTypesToIdentifiers = v38;
}

void _addExtensionToFileTypeMappingForNonCoreIdentifier(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x1E6982C40] typeWithIdentifier:v9];
  v14 = [MEMORY[0x1E69C08F0] preferredOrFallbackFilenameExtensionForType:v13 fallbackIdentifier:v9];
  if (!v14)
  {
    v25 = PLBackendGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v13;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "Failed to retrieve extension for type: %@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v15 = [v10 objectForKeyedSubscript:v14];

  if (v15)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _addExtensionToFileTypeMappingForNonCoreIdentifier(NSString *__strong, UniformFileStrategyFileType, NSMutableDictionary *__strong, NSMutableDictionary *__strong, NSMutableDictionary<NSString *, NSNumber *> *__strong)"}];
    [v26 handleFailureInFunction:v27 file:@"PLPrimaryResourceDataStoreUniformFileKey.m" lineNumber:237 description:{@"entry already exists in extensionsToFileTypes for: %@", v14}];
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  [v10 setObject:v16 forKeyedSubscript:v14];

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  v18 = [v14 lowercaseString];
  [v10 setObject:v17 forKeyedSubscript:v18];

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  v20 = [v14 uppercaseString];
  [v10 setObject:v19 forKeyedSubscript:v20];

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  v22 = [v11 objectForKeyedSubscript:v21];

  if (v22)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _addExtensionToFileTypeMappingForNonCoreIdentifier(NSString *__strong, UniformFileStrategyFileType, NSMutableDictionary *__strong, NSMutableDictionary *__strong, NSMutableDictionary<NSString *, NSNumber *> *__strong)"}];
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
    [v32 handleFailureInFunction:v28 file:@"PLPrimaryResourceDataStoreUniformFileKey.m" lineNumber:243 description:{@"entry already exists in fileTypesToExtensions for: %@", v29}];
  }

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  [v11 setObject:v14 forKeyedSubscript:v23];

  if (v9)
  {
    v24 = [v12 objectForKeyedSubscript:v9];

    if (v24)
    {
      v30 = [MEMORY[0x1E696AAA8] currentHandler];
      v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _addExtensionToFileTypeMappingForNonCoreIdentifier(NSString *__strong, UniformFileStrategyFileType, NSMutableDictionary *__strong, NSMutableDictionary *__strong, NSMutableDictionary<NSString *, NSNumber *> *__strong)"}];
      [v30 handleFailureInFunction:v31 file:@"PLPrimaryResourceDataStoreUniformFileKey.m" lineNumber:247 description:{@"entry already exists in identifiersToFileTypes for: %@", v9}];
    }

    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
    [v12 setObject:v25 forKeyedSubscript:v9];
LABEL_12:
  }
}

void _addExtensionToFileTypeMappingForCoreType(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v9)
  {
    v13 = [v9 identifier];
    v14 = [v12 objectForKeyedSubscript:v13];

    if (v14)
    {
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _addExtensionToFileTypeMappingForCoreType(UTType *__strong, UniformFileStrategyFileType, NSMutableDictionary *__strong, NSMutableDictionary *__strong, NSMutableDictionary<NSString *, NSNumber *> *__strong)"}];
      v30 = [v9 identifier];
      [v28 handleFailureInFunction:v29 file:@"PLPrimaryResourceDataStoreUniformFileKey.m" lineNumber:199 description:{@"entry already exists in identifiersToFileTypes for: %@", v30}];
    }

    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
    v16 = [v9 identifier];
    [v12 setObject:v15 forKeyedSubscript:v16];

    v17 = [MEMORY[0x1E69C08F0] preferredOrFallbackFilenameExtensionForType:v9];
    if (v17)
    {
      v18 = [v10 objectForKeyedSubscript:v17];

      if (v18)
      {
        v31 = [MEMORY[0x1E696AAA8] currentHandler];
        v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _addExtensionToFileTypeMappingForCoreType(UTType *__strong, UniformFileStrategyFileType, NSMutableDictionary *__strong, NSMutableDictionary *__strong, NSMutableDictionary<NSString *, NSNumber *> *__strong)"}];
        [v31 handleFailureInFunction:v32 file:@"PLPrimaryResourceDataStoreUniformFileKey.m" lineNumber:204 description:{@"entry already exists in extensionsToFileTypes for: %@", v17}];
      }

      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
      [v10 setObject:v19 forKeyedSubscript:v17];

      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
      v21 = [v17 lowercaseString];
      [v10 setObject:v20 forKeyedSubscript:v21];

      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
      v23 = [v17 uppercaseString];
      [v10 setObject:v22 forKeyedSubscript:v23];

      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
      v25 = [v11 objectForKeyedSubscript:v24];

      if (v25)
      {
        v33 = [MEMORY[0x1E696AAA8] currentHandler];
        v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _addExtensionToFileTypeMappingForCoreType(UTType *__strong, UniformFileStrategyFileType, NSMutableDictionary *__strong, NSMutableDictionary *__strong, NSMutableDictionary<NSString *, NSNumber *> *__strong)"}];
        v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
        [v33 handleFailureInFunction:v34 file:@"PLPrimaryResourceDataStoreUniformFileKey.m" lineNumber:210 description:{@"entry already exists in fileTypesToExtensions for: %@", v35}];
      }

      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
      [v11 setObject:v17 forKeyedSubscript:v26];
    }

    else
    {
      v26 = PLBackendGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = v9;
        _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "Failed to retrieve extension for type: %@", buf, 0xCu);
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
    *buf = 138543362;
    v37 = v27;
    _os_log_fault_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "nil UTType provided as core type for fileType: %{public}@", buf, 0xCu);
  }
}

void ___populateExtensionFileTypeMappings_block_invoke_79(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v5 lowercaseString];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];

  v8 = [v5 uppercaseString];

  [*(a1 + 40) setObject:v8 forKeyedSubscript:v6];
}

void PLDiffArrays(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, CFTypeRef *a7, void *a8)
{
  v94 = a6;
  v95 = a8;
  v93 = a5;
  v92 = a4;
  v106 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v96 = a7;
  v97 = a3;
  *a7 = 0;
  v91 = objc_autoreleasePoolPush();
  v13 = [v12 count];
  v14 = [v11 count];
  v90 = [MEMORY[0x1E695DF88] dataWithLength:8 * (v14 + v13)];
  v15 = [v90 mutableBytes];
  v16 = &v15[8 * v14];
  v99 = v11;
  [v11 getObjects:v15 range:{0, v14}];
  v98 = v12;
  [v12 getObjects:v16 range:{0, v13}];
  v89 = [MEMORY[0x1E695DF88] dataWithLength:8 * (v14 + v13)];
  v17 = [v89 mutableBytes];
  v18 = &v17[v14];
  qsort(v15, v14, 8uLL, _pointerComparator);
  qsort(v16, v13, 8uLL, _pointerComparator);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (v14 && v13)
  {
    v22 = 0;
    v21 = 0;
    v20 = 0;
    v19 = 0;
    do
    {
      v23 = *&v15[8 * v20];
      v24 = *&v16[8 * v19];
      if (v23 >= v24)
      {
        if (v23 == v24)
        {
          ++v20;
        }

        else
        {
          v18[v21++] = v24;
        }

        ++v19;
      }

      else
      {
        v17[v22++] = v23;
        ++v20;
      }
    }

    while (v20 < v14 && v19 < v13);
  }

  v25 = v14 - v20;
  if (v14 > v20)
  {
    v26 = v14 + v22 - v20;
    v27 = &v17[v22];
    v28 = &v15[8 * v20];
    do
    {
      v29 = *v28;
      v28 += 8;
      *v27++ = v29;
      --v25;
    }

    while (v25);
    v22 = v26;
  }

  v30 = v13 - v19;
  if (v13 > v19)
  {
    v31 = v13 + v21 - v19;
    v32 = &v17[v14 + v21];
    v33 = &v15[8 * v14 + 8 * v19];
    do
    {
      v34 = *v33;
      v33 += 8;
      *v32++ = v34;
      --v30;
    }

    while (v30);
    v21 = v31;
  }

  if (v22)
  {
    [v99 getObjects:v15 range:{0, v14}];
    v35 = [MEMORY[0x1E696AD50] indexSet];
    if (v14)
    {
      for (i = 0; i != v14; ++i)
      {
        if (bsearch(v15, v17, v22, 8uLL, _pointerComparator))
        {
          [v35 addIndex:i];
        }

        v15 += 8;
      }
    }

    v37 = v35;
    v38 = [v99 mutableCopy];
    [v38 removeObjectsAtIndexes:v37];
  }

  else
  {
    v38 = 0;
    v37 = 0;
  }

  v88 = v37;
  v39 = [v98 getObjects:v16 range:{0, v13}];
  if (v21)
  {
    v87 = &v86;
    if (v21 >= 0x201)
    {
      v40 = 1;
    }

    else
    {
      v40 = v21;
    }

    v41 = 8 * v40;
    MEMORY[0x1EEE9AC00](v39);
    v43 = &v86 - v42;
    bzero(&v86 - v42, v41);
    if (v21 > 0x200)
    {
      v43 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v43, v41);
    }

    v45 = [MEMORY[0x1E696AD50] indexSet];
    if (v13)
    {
      v46 = 0;
      v47 = 0;
      for (j = 0; j != v13; ++j)
      {
        if (bsearch(&v16[v46], v18, v21, 8uLL, _pointerComparator))
        {
          [v45 addIndex:j];
          *&v43[8 * v47++] = *&v16[8 * j];
        }

        v46 += 8;
      }
    }

    else
    {
      v47 = 0;
    }

    v44 = v45;
    if (!v38)
    {
      v38 = [v99 mutableCopy];
    }

    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:v47];
    [v38 insertObjects:v49 atIndexes:v44];
    if (v21 >= 0x201)
    {
      NSZoneFree(0, v43);
    }
  }

  else
  {
    v44 = 0;
  }

  v50 = v99;
  if (v38)
  {
    v51 = [v38 count];
    v52 = [v98 count];
    v50 = v38;
    if (v51 != v52)
    {
      v81 = [MEMORY[0x1E696AAA8] currentHandler];
      v82 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PLDiffArrays(NSArray *__strong, NSArray *__strong, PLSortedChangedObjects *__strong, NSIndexSet *__autoreleasing *, NSIndexSet *__autoreleasing *, NSIndexSet *__autoreleasing *, CFArrayRef *, NSMutableIndexSet *__autoreleasing *)"}];
      v83 = [v38 count];
      [v81 handleFailureInFunction:v82 file:@"NSArrayAdditions.m" lineNumber:342 description:{@"Mismatched value counts after additions and subtractions: array: %p, array.count: %tu, newArray: %p, newArray.count: %tu", v38, v83, v98, objc_msgSend(v98, "count")}];

      v50 = v38;
    }
  }

  v53 = v50;
  v54 = [v53 count];
  v55 = v54;
  if (v54 <= 1)
  {
    v56 = 1;
  }

  else
  {
    v56 = v54;
  }

  if (v54 >= 0x201)
  {
    v57 = 1;
  }

  else
  {
    v57 = v56;
  }

  v58 = 8 * v57;
  MEMORY[0x1EEE9AC00](v54);
  v60 = &v86 - v59;
  bzero(&v86 - v59, v58);
  if (v55 > 0x200)
  {
    v60 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v60, v58);
  }

  [v53 getObjects:v60 range:{0, v55}];
  v61 = [MEMORY[0x1E696AD50] indexSet];
  if (v55)
  {
    for (k = 0; k != v55; ++k)
    {
      if (*&v16[8 * k] != *&v60[8 * k])
      {
        [v61 addIndex:k];
      }
    }
  }

  if ([v61 count])
  {
    v86 = &v86;
    v87 = v38;
    v63 = [v61 copy];
    callBacks = *byte_1F0F04508;
    v64 = CFArrayCreateMutable(0, [v61 count], &callBacks);
    v65 = v96;
    *v96 = v64;
    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 3221225472;
    v100[2] = __PLDiffArrays_block_invoke;
    v100[3] = &unk_1E7570268;
    v101 = v61;
    v102 = v16;
    v103 = v60;
    v104 = v64;
    [v63 enumerateIndexesUsingBlock:v100];
    Count = CFArrayGetCount(*v65);
    if (Count != [v63 count])
    {
      v84 = [MEMORY[0x1E696AAA8] currentHandler];
      v85 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PLDiffArrays(NSArray *__strong, NSArray *__strong, PLSortedChangedObjects *__strong, NSIndexSet *__autoreleasing *, NSIndexSet *__autoreleasing *, NSIndexSet *__autoreleasing *, CFArrayRef *, NSMutableIndexSet *__autoreleasing *)"}];
      [v84 handleFailureInFunction:v85 file:@"NSArrayAdditions.m" lineNumber:396 description:@"Mismatched move counts."];
    }

    v38 = v87;
  }

  else
  {
    v63 = 0;
  }

  if (v55 >= 0x201)
  {
    NSZoneFree(0, v60);
  }

  v67 = v97;
  if ([v97 count])
  {
    v68 = [MEMORY[0x1E696AD50] indexSet];
    v69 = [v67 count];
    v70 = [v67 sortedObjectPointers];
    if (v13)
    {
      v71 = v70;
      v72 = 0;
      v73 = 0;
      while (1)
      {
        if (bsearch(v16, v71, v69, 8uLL, _pointerComparator))
        {
          [v68 addIndex:v72];
          if (++v73 == v69)
          {
            break;
          }
        }

        ++v72;
        v16 += 8;
        if (v13 == v72)
        {
          if (!v73)
          {
            goto LABEL_84;
          }

          goto LABEL_79;
        }
      }

      if (!v69)
      {
        goto LABEL_84;
      }

LABEL_79:
      v74 = [v44 count];
      v67 = v97;
      if (v74)
      {
        [v68 removeIndexes:v44];
      }

      v75 = v68;
    }

    else
    {
LABEL_84:
      v75 = 0;
      v67 = v97;
    }
  }

  else
  {
    v75 = 0;
  }

  objc_autoreleasePoolPop(v91);
  v76 = v88;
  v77 = v88;
  *v92 = v76;
  v78 = v44;
  *v93 = v44;
  v79 = v63;
  *v94 = v63;
  if (*v96)
  {
    CFAutorelease(*v96);
  }

  v80 = v75;
  *v95 = v75;
}

uint64_t _pointerComparator(void *a1, void *a2)
{
  if (*a1 >= *a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

void sub_19BF2C338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PLArrayMapFastPath(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  v16[1] = v16;
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v16 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v7, 8 * v5);
  v17 = v3;
  v8 = [v3 getObjects:v7 range:{0, v5}];
  MEMORY[0x1EEE9AC00](v8);
  v9 = v7;
  bzero(v7, 8 * v5);
  v10 = 0;
  if (v5)
  {
    v11 = v5;
    do
    {
      v12 = *v7;
      v13 = v4[2](v4, v12);
      if (v13)
      {
        objc_storeStrong(&v9[v10++], v13);
      }

      ++v7;
      --v11;
    }

    while (v11);
  }

  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:v10];
  if (v5)
  {
    do
    {
    }

    while (v6 * 8);
  }

  return v14;
}

id _hashForSQL(void *a1)
{
  v1 = a1;
  v2 = [v1 UTF8String];
  v3 = [MEMORY[0x1E695DF88] dataWithLength:32];
  v4 = [v1 length];

  CC_SHA256(v2, v4, [v3 mutableBytes]);

  return v3;
}

uint64_t _limiterDepthPop()
{
  if (_limiterDepthThreadKey_s_onceToken != -1)
  {
    dispatch_once(&_limiterDepthThreadKey_s_onceToken, &__block_literal_global_94);
  }

  v0 = pthread_getspecific(_limiterDepthThreadKey_s_key);
  if (v0 <= 0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _limiterDepthPop(void)"];
    [v3 handleFailureInFunction:v4 file:@"PLConcurrencyLimiter.m" lineNumber:101 description:@"unbalanced calls to PLConcurrencyLimiter _limiterDepthPush/Pop()"];
  }

  if (_limiterDepthThreadKey_s_onceToken != -1)
  {
    dispatch_once(&_limiterDepthThreadKey_s_onceToken, &__block_literal_global_94);
  }

  v1 = _limiterDepthThreadKey_s_key;

  return pthread_setspecific(v1, v0 - 1);
}

void LogBundlesToProcessByCriteria(void *a1, int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"Current state of _bundlesToProcessByCriteriaShortCode:\n"];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = +[PLBackgroundJobCriteria allKnownShortCodes];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v3 objectForKeyedSubscript:v10];
        [v4 appendFormat:@"\tCriteria: %@: %@\n", v10, v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  v12 = PLBackgroundJobServiceGetLog();
  v13 = v12;
  if (a2)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v4;
      v14 = v13;
      v15 = OS_LOG_TYPE_INFO;
LABEL_13:
      _os_log_impl(&dword_19BF1F000, v14, v15, "%@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v21 = v4;
    v14 = v13;
    v15 = OS_LOG_TYPE_DEBUG;
    goto LABEL_13;
  }
}

uint64_t PLPropertyIsIncludedInChangeHub_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 userInfo];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.photos.photoKit.ignoreForUpdates"];
  v4 = [v3 BOOLValue];

  return v4 ^ 1u;
}

uint64_t sub_19BF2FBF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19BF2FC38()
{
  OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_19BF2FC78()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19BF2FCB0()
{

  v0 = OUTLINED_FUNCTION_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_19BF2FCE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19BF2FD28()
{

  v1 = OUTLINED_FUNCTION_4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_19BF2FD60()
{

  v1 = OUTLINED_FUNCTION_4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_19BF2FD98()
{

  v1 = OUTLINED_FUNCTION_5();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_19BF2FDD8()
{

  v1 = OUTLINED_FUNCTION_5();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_19BF2FE20()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19BF2FE5C()
{

  v1 = OUTLINED_FUNCTION_4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_19BF2FE9C()
{

  OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_19BF2FED0()
{
  v1 = OUTLINED_FUNCTION_5();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_19BF2FF20()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_19BF2FFDC()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19BF3002C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19BF4039C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_19BF300AC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19BF300E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_19BF30154()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19BF3018C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19BF301C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19BF30210()
{
  MEMORY[0x19EAF0830](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19BF31050()
{
  v0 = sub_19C5C453C();
  __swift_allocate_value_buffer(v0, qword_1EAFF3A98);
  __swift_project_value_buffer(v0, qword_1EAFF3A98);
  sub_19BF3B340(0, &qword_1EAFF3D08);
  sub_19C5C479C();
  return sub_19C5C454C();
}

id sub_19BF31180(uint64_t a1)
{
  v2 = v1;
  sub_19C5C473C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  v5 = sub_19C5C457C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_6();
  v6 = sub_19C5C474C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v10 = v9 - v8;
  v11 = &v1[OBJC_IVAR___PLBackgroundAssetResourceUploader_lockedSessionsByBundleID];
  sub_19BF3B340(0, &qword_1EAFF3D58);
  v12 = MEMORY[0x1E69E7CC0];
  v13 = sub_19C5C45AC();
  *v11 = 0;
  *(v11 + 1) = v13;
  *&v1[OBJC_IVAR___PLBackgroundAssetResourceUploader_photoLibraryFactory] = a1;
  sub_19BF3B340(0, &qword_1EAFF3D70);
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8098], v6);
  swift_unknownObjectRetain();
  sub_19C5C456C();
  *&v25[0] = v12;
  sub_19BF3B424(&qword_1EAFF3D78, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3D80);
  sub_19BF3B46C(&qword_1EAFF3D88, &qword_1EAFF3D80);
  sub_19C5C47BC();
  *&v1[OBJC_IVAR___PLBackgroundAssetResourceUploader_queue] = sub_19C5C475C();
  v14 = [objc_opt_self() standardUserDefaults];
  v15 = sub_19C5C45CC();
  v16 = [v14 valueForKey_];

  if (v16)
  {
    sub_19C5C47AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (*(&v24 + 1))
  {
    v17 = swift_dynamicCast();
    v18 = v21;
    if (!v17)
    {
      v18 = 2;
    }
  }

  else
  {
    sub_19BF3B4B4(v25, &qword_1EAFF3D68);
    v18 = 2;
  }

  v2[OBJC_IVAR___PLBackgroundAssetResourceUploader_discretionaryTaskOverride] = v18;
  v22.receiver = v2;
  v22.super_class = PLBackgroundAssetResourceUploader;
  v19 = objc_msgSendSuper2(&v22, sel_init);
  swift_unknownObjectRelease();
  return v19;
}

id sub_19BF315A4(uint64_t a1, unint64_t a2)
{
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    __break(1u);
LABEL_52:
    OUTLINED_FUNCTION_0();
    goto LABEL_11;
  }

  v6 = 0xD00000000000002BLL;
  v124[0] = sub_19C5C45DC();
  v124[1] = v9;
  MEMORY[0x19EAEC490](46, 0xE100000000000000);
  v10 = OUTLINED_FUNCTION_8();
  MEMORY[0x19EAEC490](v10);
  v11 = objc_opt_self();
  OUTLINED_FUNCTION_13();
  v12 = sub_19C5C45CC();

  v2 = [v11 backgroundSessionConfigurationWithIdentifier_];

  [v2 setSessionSendsLaunchEvents_];
  v13 = OUTLINED_FUNCTION_8();
  sub_19BF3AEF8(v13, v14, v2);
  v3 = [objc_opt_self() standardUserDefaults];
  v5 = "<unknown configuration ID>";
  v15 = sub_19C5C45CC();
  v16 = OUTLINED_FUNCTION_15();
  v18 = [v16 v17];

  if (v18)
  {
    OUTLINED_FUNCTION_23();
    v19 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_20();
  }

  OUTLINED_FUNCTION_7(v19, v20, v21, v22, v23, v24, v25, v26, v108, v111, v115, v118, v121);
  v4 = 0x1EAFF3000;
  v27 = &OBJC_INSTANCE_METHODS_PLSyncContext;
  if (!v28)
  {
    sub_19BF3B4B4(v124, &qword_1EAFF3D68);
    goto LABEL_15;
  }

  if ((OUTLINED_FUNCTION_3() & 1) == 0)
  {
    goto LABEL_15;
  }

  v7 = v111;
  OUTLINED_FUNCTION_18();
  if (!v29)
  {
    goto LABEL_52;
  }

LABEL_11:
  v30 = sub_19C5C453C();
  OUTLINED_FUNCTION_10(v30, qword_1EAFF3A98);
  v31 = sub_19C5C452C();
  v32 = sub_19C5C471C();
  if (OUTLINED_FUNCTION_17(v32))
  {
    v33 = swift_slowAlloc();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_14();
    *v33 = 134218242;
    *(v33 + 4) = v7;
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_19BF40E88(v34 + 12, v5 | 0x8000000000000000, v124);
    OUTLINED_FUNCTION_21(&dword_19BF1F000, v35, v36, "Overriding URLSession.timeoutIntervalForRequest to %ld via %s user default");
    __swift_destroy_boxed_opaque_existential_0(v4);
    v4 = v6;
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_9();
  }

  [v2 setTimeoutIntervalForRequest_];
  v27 = &OBJC_INSTANCE_METHODS_PLSyncContext;
LABEL_15:
  v37 = sub_19C5C45CC();
  v38 = OUTLINED_FUNCTION_15();
  v40 = [v38 v39];

  if (v40)
  {
    OUTLINED_FUNCTION_23();
    v41 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_20();
  }

  OUTLINED_FUNCTION_7(v41, v42, v43, v44, v45, v46, v47, v48, v108, v111, v115, v118, v121);
  if (v49)
  {
    if (OUTLINED_FUNCTION_3())
    {
      OUTLINED_FUNCTION_18();
      if (!v29)
      {
        OUTLINED_FUNCTION_0();
      }

      v50 = sub_19C5C453C();
      OUTLINED_FUNCTION_10(v50, qword_1EAFF3A98);
      v51 = sub_19C5C452C();
      v52 = sub_19C5C471C();
      if (OUTLINED_FUNCTION_17(v52))
      {
        v53 = swift_slowAlloc();
        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_14();
        *v53 = v27[414];
        *(v53 + 4) = v112;
        *(v53 + 12) = 2080;
        *(v53 + 14) = sub_19BF40E88(v54 + 13, 0x800000019C611790, v124);
        OUTLINED_FUNCTION_21(&dword_19BF1F000, v55, v56, "Overriding URLSession.timeoutIntervalForResource to %ld via %s user default");
        __swift_destroy_boxed_opaque_existential_0(v4);
        OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_9();
      }

      [v2 setTimeoutIntervalForResource_];
    }
  }

  else
  {
    sub_19BF3B4B4(v124, &qword_1EAFF3D68);
  }

  v57 = sub_19C5C45CC();
  v58 = OUTLINED_FUNCTION_15();
  v60 = [v58 v59];

  if (v60)
  {
    OUTLINED_FUNCTION_23();
    v61 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_20();
  }

  OUTLINED_FUNCTION_7(v61, v62, v63, v64, v65, v66, v67, v68, v109, v112, v116, v119, v122);
  v69 = &OBJC_INSTANCE_METHODS_PLSyncContext;
  if (!v70)
  {
    sub_19BF3B4B4(v124, &qword_1EAFF3D68);
    goto LABEL_37;
  }

  if ((OUTLINED_FUNCTION_3() & 1) == 0)
  {
LABEL_37:
    v71 = 1;
    goto LABEL_38;
  }

  v71 = v113;
  OUTLINED_FUNCTION_18();
  if (!v29)
  {
    OUTLINED_FUNCTION_0();
  }

  v72 = sub_19C5C453C();
  OUTLINED_FUNCTION_10(v72, qword_1EAFF3A98);
  v73 = sub_19C5C452C();
  v74 = sub_19C5C471C();
  if (OUTLINED_FUNCTION_17(v74))
  {
    v75 = swift_slowAlloc();
    v76 = OUTLINED_FUNCTION_16();
    v124[0] = v76;
    OUTLINED_FUNCTION_19(1.5047e-36);
    *(v75 + 10) = sub_19BF40E88(0xD00000000000002DLL, 0x800000019C6117D0, v124);
    OUTLINED_FUNCTION_11();
    _os_log_impl(v77, v78, v79, v80, v81, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v76);
    v69 = &OBJC_INSTANCE_METHODS_PLSyncContext;
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_9();
  }

LABEL_38:
  [v2 setDiscretionary_];
  v82 = sub_19C5C45CC();
  v83 = OUTLINED_FUNCTION_15();
  v85 = [v83 v84];

  if (v85)
  {
    OUTLINED_FUNCTION_23();
    v86 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_20();
  }

  OUTLINED_FUNCTION_7(v86, v87, v88, v89, v90, v91, v92, v93, v110, v113, v117, v120, v123);
  if (v94)
  {
    if (OUTLINED_FUNCTION_3())
    {
      OUTLINED_FUNCTION_18();
      if (!v29)
      {
        OUTLINED_FUNCTION_0();
      }

      v95 = sub_19C5C453C();
      OUTLINED_FUNCTION_10(v95, qword_1EAFF3A98);
      v96 = sub_19C5C452C();
      v97 = sub_19C5C471C();
      if (OUTLINED_FUNCTION_17(v97))
      {
        v98 = swift_slowAlloc();
        v99 = OUTLINED_FUNCTION_16();
        v100 = v69;
        v101 = v99;
        v124[0] = v99;
        OUTLINED_FUNCTION_19(COERCE_FLOAT(*&v100[415]));
        *(v98 + 10) = sub_19BF40E88(0xD00000000000002BLL, 0x800000019C611800, v124);
        OUTLINED_FUNCTION_11();
        _os_log_impl(v102, v103, v104, v105, v106, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v101);
        OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_9();
      }

      [v2 setUsesClassicLoadingMode_];
    }
  }

  else
  {

    sub_19BF3B4B4(v124, &qword_1EAFF3D68);
  }

  return v2;
}

uint64_t sub_19BF31C94(uint64_t a1, unint64_t a2)
{
  swift_getObjectType();
  v5 = &v2[OBJC_IVAR___PLBackgroundAssetResourceUploader_lockedSessionsByBundleID];
  os_unfair_lock_lock(&v2[OBJC_IVAR___PLBackgroundAssetResourceUploader_lockedSessionsByBundleID]);
  sub_19BF31D1C(v5 + 1, a1, a2, v2, &v7);
  os_unfair_lock_unlock(v5);
  return v7;
}

void sub_19BF31D1C(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  if (*(*a1 + 16) && (v11 = sub_19BF391F8(a2, a3), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    *a5 = v13;
    v14 = v13;
  }

  else
  {
    v15 = sub_19BF315A4(a2, a3);
    v16 = sub_19BF3B000(v15, &selRef_identifier);
    v18 = 0xD00000000000001ALL;
    if (v17)
    {
      v18 = v16;
    }

    v32 = v18;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0x800000019C611730;
    }

    sub_19BF3B340(0, &qword_1EAFF3D58);
    v20 = v15;
    v21 = a4;
    v33 = v20;
    v22 = sub_19BF32014(v20, a4, 0);
    if (qword_1EAFF3A90 != -1)
    {
      swift_once();
    }

    v23 = sub_19C5C453C();
    __swift_project_value_buffer(v23, qword_1EAFF3A98);

    v24 = sub_19C5C452C();
    v25 = sub_19C5C472C();

    if (os_log_type_enabled(v24, v25))
    {
      v31 = v22;
      v26 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34 = v30;
      *v26 = 136315394;
      *(v26 + 4) = sub_19BF40E88(a2, a3, &v34);
      *(v26 + 12) = 2080;
      v27 = sub_19BF40E88(v32, v19, &v34);

      *(v26 + 14) = v27;
      _os_log_impl(&dword_19BF1F000, v24, v25, "Created background URLSession for %s with configuration ID: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19EAF07E0](v30, -1, -1);
      v28 = v26;
      v22 = v31;
      MEMORY[0x19EAF07E0](v28, -1, -1);
    }

    else
    {
    }

    v29 = v22;
    swift_isUniquelyReferenced_nonNull_native();
    v34 = *a1;
    sub_19BF39324(v29, a2, a3);

    *a1 = v34;
    *a5 = v29;
  }
}

id sub_19BF32014(void *a1, uint64_t a2, void *a3)
{
  v5 = [swift_getObjCClassFromMetadata() sessionWithConfiguration:a1 delegate:a2 delegateQueue:a3];

  swift_unknownObjectRelease();
  return v5;
}

void sub_19BF320F8()
{
  v1 = [v0 photoLibraryFactory];
  if (v1 && (v2 = [v1 newShortLivedLibraryWithName_], swift_unknownObjectRelease(), v2))
  {
    OUTLINED_FUNCTION_22();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v0;
    OUTLINED_FUNCTION_22();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_19BF390A4;
    *(v4 + 24) = v3;
    aBlock[4] = sub_19BF390AC;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_2();
    aBlock[2] = v5;
    aBlock[3] = &block_descriptor;
    v6 = _Block_copy(aBlock);
    v7 = v2;
    v8 = v0;

    v9 = OUTLINED_FUNCTION_15();
    [v9 v10];
    _Block_release(v6);
  }

  else
  {
    if (qword_1EAFF3A90 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v11 = sub_19C5C453C();
    OUTLINED_FUNCTION_10(v11, qword_1EAFF3A98);
    oslog = sub_19C5C452C();
    v12 = sub_19C5C471C();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_19BF1F000, oslog, v12, "Unable to create library for background resource uploader launch event", v13, 2u);
      OUTLINED_FUNCTION_9();
    }
  }
}

void sub_19BF32300(void *a1, void *a2)
{
  v34[1] = *MEMORY[0x1E69E9840];
  v3 = [a1 managedObjectContext];
  if (!v3)
  {
    __break(1u);
  }

  v4 = v3;
  v34[0] = 0;
  v5 = [objc_opt_self() fetchAllConfigurationsInContext:v3 error:v34];

  v6 = v34[0];
  if (v5)
  {
    sub_19BF3B340(0, &qword_1EAFF3CF8);
    v7 = sub_19C5C466C();
    v8 = v6;

    v9 = sub_19BF34880(v7);
    if (!v9)
    {

      v12 = MEMORY[0x1E69E7CC0];
LABEL_18:
      v27 = v12[2];
      if (v27)
      {
        v28 = v12 + 5;
        do
        {

          v29 = sub_19C5C45CC();

          v28 += 2;
          --v27;
        }

        while (v27);
      }

      if (qword_1EAFF3A90 != -1)
      {
        swift_once();
      }

      v30 = sub_19C5C453C();
      __swift_project_value_buffer(v30, qword_1EAFF3A98);
      v24 = sub_19C5C452C();
      v31 = sub_19C5C472C();
      if (os_log_type_enabled(v24, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_19BF1F000, v24, v31, "Handled background resource uploader launch event", v32, 2u);
        MEMORY[0x19EAF07E0](v32, -1, -1);
      }

      goto LABEL_25;
    }

    v10 = v9;
    v34[0] = MEMORY[0x1E69E7CC0];
    sub_19BF3950C(0, v9 & ~(v9 >> 63), 0);
    if ((v10 & 0x8000000000000000) == 0)
    {
      v33 = a2;
      v11 = 0;
      v12 = v34[0];
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x19EAEC6D0](v11, v7);
        }

        else
        {
          v13 = *(v7 + 8 * v11 + 32);
        }

        v14 = v13;
        v15 = [v14 bundleIdentifier];
        v16 = sub_19C5C45DC();
        v18 = v17;

        v34[0] = v12;
        v20 = v12[2];
        v19 = v12[3];
        if (v20 >= v19 >> 1)
        {
          sub_19BF3950C((v19 > 1), v20 + 1, 1);
          v12 = v34[0];
        }

        ++v11;
        v12[2] = v20 + 1;
        v21 = &v12[2 * v20];
        v21[4] = v16;
        v21[5] = v18;
      }

      while (v10 != v11);

      a2 = v33;
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_27;
  }

  v22 = v34[0];
  v10 = sub_19C5C44AC();

  swift_willThrow();
  if (qword_1EAFF3A90 != -1)
  {
LABEL_27:
    swift_once();
  }

  v23 = sub_19C5C453C();
  __swift_project_value_buffer(v23, qword_1EAFF3A98);
  v24 = sub_19C5C452C();
  v25 = sub_19C5C472C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_19BF1F000, v24, v25, "Caught error while handling background resource uploader launch event", v26, 2u);
    MEMORY[0x19EAF07E0](v26, -1, -1);
  }

LABEL_25:
}

uint64_t sub_19BF32708(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v16 = [objc_allocWithZone(PLResourceLocalAvailabilityRequestOptions) init];
  v17 = [objc_allocWithZone(MEMORY[0x1E6994BA8]) initWithIntent:17 priority:0];
  [v16 setDownloadOptions_];

  [v16 setNetworkAccessAllowed_];
  sub_19BF3AF50(a4, a5, v16);
  v27 = 0;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  v18[6] = a1;
  v18[7] = &v27;
  v18[8] = v16;
  v18[9] = a7;
  v18[10] = a8;
  OUTLINED_FUNCTION_22();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_19BF3B290;
  *(v19 + 24) = v18;
  aBlock[4] = sub_19BF3B5F0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_2();
  aBlock[2] = v20;
  aBlock[3] = &block_descriptor_125;
  v21 = _Block_copy(aBlock);

  v22 = a1;
  v23 = v16;

  [a6 performBlockAndWait_];

  _Block_release(v21);
  v24 = v27;

  LOBYTE(a8) = swift_isEscapingClosureAtFileLocation();

  if ((a8 & 1) == 0)
  {
    return v24;
  }

  __break(1u);
  return result;
}

void sub_19BF32938(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, void **a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (qword_1EAFF3A90 != -1)
  {
    swift_once();
  }

  v16 = sub_19C5C453C();
  __swift_project_value_buffer(v16, qword_1EAFF3A98);

  v17 = a5;
  v18 = sub_19C5C452C();
  v19 = sub_19C5C472C();

  if (!os_log_type_enabled(v18, v19))
  {

    goto LABEL_7;
  }

  v30 = a7;
  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  aBlock[0] = v21;
  *v20 = 136446722;
  *(v20 + 4) = sub_19BF40E88(a1, a2, aBlock);
  *(v20 + 12) = 2080;
  *(v20 + 14) = sub_19BF40E88(a3, a4, aBlock);
  *(v20 + 22) = 2082;
  v22 = sub_19BF3B000(v17, &selRef_pl_shortDescription);
  v24 = v23;

  if (v24)
  {
    v25 = sub_19BF40E88(v22, v24, aBlock);

    *(v20 + 24) = v25;
    _os_log_impl(&dword_19BF1F000, v18, v19, "Start resource download for job %{public}s, bundle ID: %s, resource: %{public}s", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x19EAF07E0](v21, -1, -1);
    MEMORY[0x19EAF07E0](v20, -1, -1);

    a7 = v30;
LABEL_7:
    v26 = swift_allocObject();
    *(v26 + 16) = a8;
    *(v26 + 24) = a9;
    aBlock[4] = sub_19BF3B2C8;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19BF32C20;
    aBlock[3] = &block_descriptor_131;
    v27 = _Block_copy(aBlock);

    v28 = [v17 makeResourceLocallyAvailableWithOptions:a7 completion:v27];
    _Block_release(v27);
    v29 = *a6;
    *a6 = v28;

    return;
  }

  __break(1u);
}

uint64_t sub_19BF32C20(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3D50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_19C5C44CC();
    v10 = sub_19C5C44DC();
    v11 = 0;
  }

  else
  {
    v10 = sub_19C5C44DC();
    v11 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v11, 1, v10);

  v12 = a3;
  v9(v8, a3);

  return sub_19BF3B4B4(v8, &qword_1EAFF3D50);
}

void sub_19BF32E50(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3D50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_19BF3B3C8(a1, &v11 - v7, &qword_1EAFF3D50);
  v9 = sub_19C5C44DC();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    v10 = sub_19C5C44BC();
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  if (a2)
  {
    a2 = sub_19C5C449C();
  }

  (*(a3 + 16))(a3, v10, a2);
}

void sub_19BF32F88(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v11 = sub_19C5C45CC();
  v30 = [v5 urlSessionForBundleID_];

  v12 = sub_19C5C446C();
  v13 = sub_19C5C44BC();
  v14 = [v30 uploadTaskWithRequest:v12 fromFile:v13];

  v15 = v14;
  sub_19BF3AFA8(a2, a3, v15);
  v16 = v6[OBJC_IVAR___PLBackgroundAssetResourceUploader_discretionaryTaskOverride];
  if (v16 == 2)
  {

    v17 = 0xE700000000000000;
    v18 = 0x746C7561666564;
  }

  else
  {
    v18 = 0xD000000000000014;
    if (v16)
    {
      [v15 set:1 discretionaryOverride:?];

      v17 = 0x800000019C6116F0;
    }

    else
    {
      [v15 set:2 discretionaryOverride:?];

      v17 = 0x800000019C6116D0;
      v18 = 0xD000000000000018;
    }
  }

  if (qword_1EAFF3A90 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v19 = sub_19C5C453C();
  __swift_project_value_buffer(v19, qword_1EAFF3A98);
  v20 = v15;

  v21 = sub_19C5C452C();
  v22 = sub_19C5C472C();

  if (os_log_type_enabled(v21, v22))
  {
    v28 = a5;
    v23 = a4;
    v24 = swift_slowAlloc();
    v29 = v18;
    v25 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v24 = 136446978;
    *(v24 + 4) = sub_19BF40E88(a2, a3, &v31);
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_19BF40E88(v23, v28, &v31);
    *(v24 + 22) = 2112;
    *(v24 + 24) = v20;
    *v25 = v20;
    *(v24 + 32) = 2080;
    v26 = v20;
    v27 = sub_19BF40E88(v29, v17, &v31);

    *(v24 + 34) = v27;
    _os_log_impl(&dword_19BF1F000, v21, v22, "Started upload task for job %{public}s, bundle ID: %s, task: %@, discretionary: %s", v24, 0x2Au);
    sub_19BF3B4B4(v25, &qword_1EAFF3D30);
    OUTLINED_FUNCTION_9();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_9();
  }

  else
  {
  }

  [v20 resume];
}

void sub_19BF334D8(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = [objc_opt_self() transaction_];
  v9 = [objc_opt_self() sharedLimiter];
  v10 = [v4 queue];
  v11 = swift_allocObject();
  v11[2] = v4;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = v8;
  OUTLINED_FUNCTION_1();
  v18[1] = 1107296256;
  v18[2] = sub_19BF3B5E4;
  v18[3] = &block_descriptor_112;
  v12 = _Block_copy(v18);
  v13 = v4;
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = v8;

  [v9 dispatchAsync:v10 block:v12];
  _Block_release(v12);
}

void sub_19BF33654(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v7 = sub_19C5C449C();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [a1 queue:a2 urlSession:a3 task:? didCompleteWithError:?];
}

void sub_19BF336EC(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_19C5C458C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = [v3 queue];
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v10 = sub_19C5C459C();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v11 = [a2 response];
    sub_19BF3B000(a2, &selRef_taskDescription);
    if (v12)
    {
      v13 = sub_19C5C45CC();

      if (!a3)
      {
LABEL_5:
        [v3 handleTaskCompletionWithResponse:v11 jobUUID:v13 error:a3];

        return;
      }
    }

    else
    {
      v13 = 0;
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    a3 = sub_19C5C449C();
    goto LABEL_5;
  }

  __break(1u);
}

void sub_19BF338B4(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(id, id, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6(v10, v11, a5);
}

id sub_19BF33950(void *a1, int a2, uint64_t a3, id a4)
{
  if (a4)
  {
    v6 = a4;
    if (qword_1EAFF3A90 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v7 = sub_19C5C453C();
    OUTLINED_FUNCTION_10(v7, qword_1EAFF3A98);
    v8 = a4;
    v9 = sub_19C5C452C();
    v10 = sub_19C5C471C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = a4;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_19BF1F000, v9, v10, "Upload task failed with error: %@", v11, 0xCu);
      sub_19BF3B4B4(v12, &qword_1EAFF3D30);
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_9();
    }

    else
    {
    }

    return 0;
  }

  if (!a1 || (v16 = v4, objc_opt_self(), (v18 = swift_dynamicCastObjCClass()) == 0))
  {
    if (qword_1EAFF3A90 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v33 = sub_19C5C453C();
    OUTLINED_FUNCTION_10(v33, qword_1EAFF3A98);
    v20 = sub_19C5C452C();
    v34 = sub_19C5C471C();
    if (os_log_type_enabled(v20, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_19BF1F000, v20, v34, "Upload task completed with non-HTTP response", v35, 2u);
      OUTLINED_FUNCTION_9();
    }

    goto LABEL_32;
  }

  if (!a3)
  {
    v48 = qword_1EAFF3A90;
    v20 = a1;
    if (v48 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v49 = sub_19C5C453C();
    OUTLINED_FUNCTION_10(v49, qword_1EAFF3A98);
    v37 = sub_19C5C452C();
    v50 = sub_19C5C471C();
    if (!OUTLINED_FUNCTION_17(v50))
    {
      goto LABEL_31;
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_19BF1F000, v37, v50, "Upload task completed without a job UUID", v51, 2u);
    goto LABEL_30;
  }

  v19 = v18;
  v20 = a1;
  v21 = [v16 photoLibraryFactory];
  if (!v21 || (v22 = [v21 newShortLivedLibraryWithName_], swift_unknownObjectRelease(), !v22))
  {
    if (qword_1EAFF3A90 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v36 = sub_19C5C453C();
    OUTLINED_FUNCTION_10(v36, qword_1EAFF3A98);

    v37 = sub_19C5C452C();
    v38 = sub_19C5C471C();

    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_31;
    }

    v39 = swift_slowAlloc();
    v62 = OUTLINED_FUNCTION_16();
    *v39 = 136446210;
    v40 = OUTLINED_FUNCTION_8();
    *(v39 + 4) = sub_19BF40E88(v40, v41, v42);
    OUTLINED_FUNCTION_11();
    _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    OUTLINED_FUNCTION_9();
LABEL_30:
    OUTLINED_FUNCTION_9();
LABEL_31:

LABEL_32:
    return 0;
  }

  v23 = [v19 statusCode];
  if (sub_19BF33F84(v23, &unk_1F0F007D0))
  {
    if (qword_1EAFF3A90 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v24 = sub_19C5C453C();
    OUTLINED_FUNCTION_10(v24, qword_1EAFF3A98);

    v25 = sub_19C5C452C();
    v26 = sub_19C5C472C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v61 = OUTLINED_FUNCTION_16();
      *v27 = 136446210;
      v28 = OUTLINED_FUNCTION_8();
      *(v27 + 4) = sub_19BF40E88(v28, v29, v30);
      _os_log_impl(&dword_19BF1F000, v25, v26, "Upload task for job %{public}s succeeded", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_9();
    }

    OUTLINED_FUNCTION_8();
    v31 = sub_19C5C45CC();
    v32 = [v16 updateJobWithUUID:v31 withState:4 inLibrary:v22];
  }

  else
  {
    if (qword_1EAFF3A90 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v54 = sub_19C5C453C();
    OUTLINED_FUNCTION_10(v54, qword_1EAFF3A98);

    v55 = sub_19C5C452C();
    v56 = sub_19C5C471C();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v63 = OUTLINED_FUNCTION_16();
      *v57 = 136446466;
      v58 = OUTLINED_FUNCTION_8();
      *(v57 + 4) = sub_19BF40E88(v58, v59, v60);
      *(v57 + 12) = 2048;
      *(v57 + 14) = v23;
      _os_log_impl(&dword_19BF1F000, v55, v56, "Upload task for job %{public}s failed with HTTP status code: %ld", v57, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v63);
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_9();
    }

    OUTLINED_FUNCTION_8();
    v31 = sub_19C5C45CC();
    v32 = [v16 updateJobWithUUID:v31 withState:3 inLibrary:v22];
  }

  v52 = v32;

  return v52;
}

BOOL sub_19BF33F84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

void sub_19BF3405C(void *a1, void (**a2)(void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  if (qword_1EAFF3A90 != -1)
  {
    swift_once();
  }

  v5 = sub_19C5C453C();
  __swift_project_value_buffer(v5, qword_1EAFF3A98);
  v6 = sub_19C5C452C();
  v7 = sub_19C5C46FC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_19BF1F000, v6, v7, "Verifying background upload job consistency", v8, 2u);
    MEMORY[0x19EAF07E0](v8, -1, -1);
  }

  v9 = [a1 photoLibraryFactory];
  if (v9 && (v10 = [v9 newShortLivedLibraryWithName_], swift_unknownObjectRelease(), v10))
  {
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = a1;
    v11[4] = sub_19BF3B5EC;
    v11[5] = v4;
    v18[4] = sub_19BF3B24C;
    v18[5] = v11;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = sub_19BF3B5E4;
    v18[3] = &block_descriptor_100;
    v12 = _Block_copy(v18);
    v13 = v10;
    v14 = a1;

    [v13 performBlock_];
    _Block_release(v12);

    _Block_release(a2);
  }

  else
  {
    v15 = sub_19C5C452C();
    v16 = sub_19C5C471C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_19BF1F000, v15, v16, "Unable to create library to verify upload job consistency", v17, 2u);
      MEMORY[0x19EAF07E0](v17, -1, -1);
    }

    a2[2](a2);

    _Block_release(a2);
  }
}

void sub_19BF34350(void *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  aBlock[7] = *MEMORY[0x1E69E9840];
  v7 = [a1 managedObjectContext];
  if (!v7)
  {
    __break(1u);
  }

  v8 = v7;
  aBlock[0] = 0;
  v9 = [objc_opt_self() fetchAllConfigurationsInContext:v7 error:aBlock];

  v10 = aBlock[0];
  if (v9)
  {
    v45 = a2;
    sub_19BF3B340(0, &qword_1EAFF3CF8);
    v11 = sub_19C5C466C();
    v12 = v10;

    if (qword_1EAFF3A90 != -1)
    {
      swift_once();
    }

    v13 = sub_19C5C453C();
    __swift_project_value_buffer(v13, qword_1EAFF3A98);

    v14 = sub_19C5C452C();
    v15 = sub_19C5C46FC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = a3;
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = sub_19BF34880(v11);

      _os_log_impl(&dword_19BF1F000, v14, v15, "Verifying %ld background upload configurations", v17, 0xCu);
      v18 = v17;
      a3 = v16;
      MEMORY[0x19EAF07E0](v18, -1, -1);
    }

    else
    {
    }

    v28 = sub_19BF34880(v11);
    if (!v28)
    {

LABEL_23:
      v41 = sub_19C5C465C();

      v42 = swift_allocObject();
      v42[2] = a3;
      v42[3] = a4;
      aBlock[4] = sub_19BF3B5F4;
      aBlock[5] = v42;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_19BF3B5E4;
      aBlock[3] = &block_descriptor_106;
      v43 = _Block_copy(aBlock);

      [v45 verifyJobsForBundleIDs:v41 completion:v43];
      _Block_release(v43);

      return;
    }

    v29 = v28;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_19BF3950C(0, v28 & ~(v28 >> 63), 0);
    if ((v29 & 0x8000000000000000) == 0)
    {
      v44 = a3;
      v30 = 0;
      v31 = aBlock[0];
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x19EAEC6D0](v30, v11);
        }

        else
        {
          v32 = *(v11 + 8 * v30 + 32);
        }

        v33 = v32;
        v34 = [v33 bundleIdentifier];
        v35 = sub_19C5C45DC();
        v37 = v36;

        aBlock[0] = v31;
        v39 = v31[2];
        v38 = v31[3];
        if (v39 >= v38 >> 1)
        {
          sub_19BF3950C((v38 > 1), v39 + 1, 1);
          v31 = aBlock[0];
        }

        ++v30;
        v31[2] = v39 + 1;
        v40 = &v31[2 * v39];
        v40[4] = v35;
        v40[5] = v37;
      }

      while (v29 != v30);

      a3 = v44;
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_25;
  }

  v19 = aBlock[0];
  v11 = sub_19C5C44AC();

  swift_willThrow();
  if (qword_1EAFF3A90 != -1)
  {
LABEL_25:
    swift_once();
  }

  v20 = sub_19C5C453C();
  __swift_project_value_buffer(v20, qword_1EAFF3A98);
  v21 = v11;
  v22 = sub_19C5C452C();
  v23 = sub_19C5C471C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    v26 = v11;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 4) = v27;
    *v25 = v27;
    _os_log_impl(&dword_19BF1F000, v22, v23, "Got an error verifying background upload configurations: %@", v24, 0xCu);
    sub_19BF3B4B4(v25, &qword_1EAFF3D30);
    MEMORY[0x19EAF07E0](v25, -1, -1);
    MEMORY[0x19EAF07E0](v24, -1, -1);
  }

  a3();
}

uint64_t sub_19BF34880(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_19C5C48FC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_19BF348A4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_19BF3494C(void *a1, void *a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_19BF3B5EC;
  *(v7 + 24) = v6;
  *&v18 = a1;
  *(&v18 + 1) = sub_19BF3B5F4;
  v19 = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = a1[2];
  _Block_copy(a3);
  if (v9)
  {
    v10 = a1[4];
    v11 = a1[5];

    v12 = a2;

    sub_19BF3B0DC(0, 1);
    v17[0] = v10;
    v17[1] = v11;
    v13 = v19;
    v14 = swift_allocObject();
    *(v14 + 16) = v18;
    *(v14 + 32) = v13;
    *(v14 + 40) = sub_19BF3B0D4;
    *(v14 + 48) = v8;

    sub_19BF34B4C(v17, sub_19BF3B1CC, v14, v12);
  }

  else
  {
    v15 = a3[2];

    v16 = a2;
    v15(a3);
  }

  _Block_release(a3);
}

uint64_t RecursiveAsyncIterator.init(items:completionHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void sub_19BF34B4C(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *a1;
  v7 = a1[1];
  if (qword_1EAFF3A90 != -1)
  {
    swift_once();
  }

  v9 = sub_19C5C453C();
  __swift_project_value_buffer(v9, qword_1EAFF3A98);

  v10 = sub_19C5C452C();
  v11 = sub_19C5C472C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_19BF40E88(v8, v7, v19);
    _os_log_impl(&dword_19BF1F000, v10, v11, "Verifying jobs for background upload configuration with bundle ID: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x19EAF07E0](v13, -1, -1);
    MEMORY[0x19EAF07E0](v12, -1, -1);
  }

  v14 = sub_19C5C45CC();
  v15 = [a4 urlSessionForBundleID_];

  v16 = sub_19C5C45CC();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v19[4] = sub_19BF3B224;
  v19[5] = v17;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_19BF3B5E4;
  v19[3] = &block_descriptor_90;
  v18 = _Block_copy(v19);

  [a4 verifyJobsForSession_bundleID:v15 :{v16, v18}];
  _Block_release(v18);
}

uint64_t RecursiveAsyncIterator.next(_:)(void (*a1)(uint64_t, uint64_t (*)(), uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_6();
  v11 = v10 - v9;
  sub_19C5C46AC();
  swift_getWitnessTable();
  if (sub_19C5C46DC())
  {
    return (*(v3 + 8))();
  }

  swift_getWitnessTable();
  sub_19C5C46EC();
  v13 = *(v3 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = v7;
  *(v14 + 24) = *v4;
  *(v14 + 40) = v13;
  *(v14 + 48) = a1;
  *(v14 + 56) = a2;

  a1(v11, sub_19BF38F54, v14);

  return (*(v8 + 8))(v11, v7);
}

void sub_19BF35000(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  v11[6] = a5;
  v14[4] = sub_19BF39780;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_19BF35378;
  v14[3] = &block_descriptor_57;
  v12 = _Block_copy(v14);
  v13 = v5;

  [a1 getTasksWithCompletionHandler_];
  _Block_release(v12);
}

void sub_19BF35108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v4 photoLibraryFactory];
  if (v8 && (v9 = [v8 newShortLivedLibraryWithName_], swift_unknownObjectRelease(), v9))
  {
    v10 = swift_allocObject();
    v10[2] = v4;
    v10[3] = a2;
    v10[4] = a3;
    v10[5] = v9;
    v10[6] = a1;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_19BF397C8;
    *(v11 + 24) = v10;
    aBlock[4] = sub_19BF3B5F0;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19BF3B838;
    aBlock[3] = &block_descriptor_67;
    v12 = _Block_copy(aBlock);
    v13 = v4;

    v14 = v9;

    [v14 performTransactionAndWait_];
    _Block_release(v12);
  }

  else
  {
    if (qword_1EAFF3A90 != -1)
    {
      swift_once();
    }

    v15 = sub_19C5C453C();
    __swift_project_value_buffer(v15, qword_1EAFF3A98);
    oslog = sub_19C5C452C();
    v16 = sub_19C5C471C();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_19BF1F000, oslog, v16, "Unable to create library to verify job consistency", v17, 2u);
      MEMORY[0x19EAF07E0](v17, -1, -1);
    }
  }
}

uint64_t sub_19BF35378(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_19BF3B340(0, &qword_1EAFF3D10);
  v2 = sub_19C5C466C();
  sub_19BF3B340(0, &qword_1EAFF3D18);
  v3 = sub_19C5C466C();
  sub_19BF3B340(0, &qword_1EAFF3D20);
  v4 = sub_19C5C466C();

  v1(v2, v3, v4);
}

void sub_19BF35540(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = sub_19C5C45CC();
  v9 = [a1 fetchPendingJobsForBundleID:v8 in:a4];

  if (v9)
  {
    v10 = sub_19BF3B340(0, &qword_1EAFF3D28);
    v11 = sub_19C5C466C();

    if (qword_1EAFF3A90 != -1)
    {
      goto LABEL_50;
    }

    while (1)
    {
      v12 = sub_19C5C453C();
      __swift_project_value_buffer(v12, qword_1EAFF3A98);

      v13 = sub_19C5C452C();
      v14 = sub_19C5C470C();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v67[0] = v16;
        *v15 = 136315138;
        v17 = MEMORY[0x19EAEC500](v11, v10);
        v19 = sub_19BF40E88(v17, v18, v67);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_19BF1F000, v13, v14, "All pending jobs: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x19EAF07E0](v16, -1, -1);
        MEMORY[0x19EAF07E0](v15, -1, -1);
      }

      v20 = sub_19C5C452C();
      v21 = sub_19C5C470C();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v67[0] = v23;
        *v22 = 136315138;
        v24 = sub_19BF3B340(0, &qword_1EAFF3D18);
        v25 = MEMORY[0x19EAEC500](a5, v24);
        v27 = sub_19BF40E88(v25, v26, v67);

        *(v22 + 4) = v27;
        _os_log_impl(&dword_19BF1F000, v20, v21, "All upload tasks: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        MEMORY[0x19EAF07E0](v23, -1, -1);
        MEMORY[0x19EAF07E0](v22, -1, -1);
      }

      v28 = sub_19BF35C48(a5);
      v29 = sub_19BF35F58(v28);
      a5 = sub_19BF361A0(v11);

      v31 = sub_19BF363F4(v30);

      v33 = sub_19BF363F4(v32);

      v34 = sub_19BF36510(v33, v31);
      v11 = sub_19BF36510(v31, v33);

      if (!*(v34 + 16) && !*(v11 + 16))
      {
        break;
      }

      v35 = MEMORY[0x1E69E7CC0];
      v67[0] = MEMORY[0x1E69E7CC0];
      v36 = 1 << *(v34 + 32);
      v37 = -1;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      v38 = v37 & *(v34 + 56);
      v39 = (v36 + 63) >> 6;

      v10 = 0;
      v65 = v35;
      while (v38)
      {
        v40 = v38;
LABEL_18:
        v38 = (v40 - 1) & v40;
        if (*(v29 + 16))
        {
          v42 = (*(v34 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v40)))));
          v43 = *v42;
          v44 = v42[1];

          v45 = sub_19BF391F8(v43, v44);
          if (v46)
          {
            *(*(v29 + 56) + 8 * v45);

            MEMORY[0x19EAEC4D0](v47);
            if (*((v67[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_19C5C468C();
            }

            sub_19C5C469C();
            v65 = v67[0];
          }

          else
          {
          }
        }
      }

      while (1)
      {
        v41 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        if (v41 >= v39)
        {
          break;
        }

        v40 = *(v34 + 56 + 8 * v41);
        ++v10;
        if (v40)
        {
          v10 = v41;
          goto LABEL_18;
        }
      }

      v48 = MEMORY[0x1E69E7CC0];
      v67[0] = MEMORY[0x1E69E7CC0];
      v49 = 1 << *(v11 + 32);
      v50 = -1;
      if (v49 < 64)
      {
        v50 = ~(-1 << v49);
      }

      v51 = v50 & *(v11 + 56);
      v52 = (v49 + 63) >> 6;

      v10 = 0;
      while (v51)
      {
        v53 = v51;
LABEL_33:
        v51 = (v53 - 1) & v53;
        if (*(a5 + 16))
        {
          v55 = (*(v11 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v53)))));
          v56 = *v55;
          v57 = v55[1];

          v58 = sub_19BF391F8(v56, v57);
          if (v59)
          {
            v60 = *(*(a5 + 56) + 8 * v58);

            MEMORY[0x19EAEC4D0](v61);
            if (*((v67[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_19C5C468C();
            }

            sub_19C5C469C();
            v48 = v67[0];
          }

          else
          {
          }
        }
      }

      while (1)
      {
        v54 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v54 >= v52)
        {

          sub_19BF36564(v65);

          sub_19BF367DC(v48, v62);

          return;
        }

        v53 = *(v11 + 56 + 8 * v54);
        ++v10;
        if (v53)
        {
          v10 = v54;
          goto LABEL_33;
        }
      }

LABEL_49:
      __break(1u);
LABEL_50:
      swift_once();
    }

    oslog = sub_19C5C452C();
    v63 = sub_19C5C46FC();
    if (os_log_type_enabled(oslog, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_19BF1F000, oslog, v63, "No orphaned asset resource upload jobs or upload tasks", v64, 2u);
      MEMORY[0x19EAF07E0](v64, -1, -1);
    }
  }
}

uint64_t sub_19BF35C48(unint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  v23 = MEMORY[0x1E69E7CC0];
  v24 = MEMORY[0x1E69E7CC0];
  v4 = sub_19BF34880(a1);
  if (v4)
  {
    v5 = v4;
    if (v4 < 1)
    {
      __break(1u);
LABEL_25:
      swift_once();
      goto LABEL_19;
    }

    v6 = 0;
    v1 = v3;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x19EAEC6D0](v6, a1);
      }

      else
      {
        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      sub_19BF3B000(v7, &selRef_taskDescription);
      if (v9)
      {

        v10 = v8;
        MEMORY[0x19EAEC4D0]();
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_19C5C468C();
        }

        sub_19C5C469C();

        v1 = v24;
      }

      else
      {
        v11 = v8;
        MEMORY[0x19EAEC4D0]();
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_19C5C468C();
        }

        sub_19C5C469C();

        v3 = v23;
      }

      ++v6;
    }

    while (v5 != v6);
  }

  else
  {
    v1 = v3;
  }

  if (!sub_19BF34880(v3))
  {

    return v1;
  }

  if (qword_1EAFF3A90 != -1)
  {
    goto LABEL_25;
  }

LABEL_19:
  v12 = sub_19C5C453C();
  __swift_project_value_buffer(v12, qword_1EAFF3A98);

  v13 = sub_19C5C452C();
  v14 = sub_19C5C471C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 134218242;
    *(v15 + 4) = sub_19BF34880(v3);

    *(v15 + 12) = 2080;
    v17 = sub_19BF3B340(0, &qword_1EAFF3D18);
    v18 = MEMORY[0x19EAEC500](v3, v17);
    v20 = v19;

    v21 = sub_19BF40E88(v18, v20, &v24);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_19BF1F000, v13, v14, "Found %ld upload tasks without a corresponding asset resource upload job UUID: %s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x19EAF07E0](v16, -1, -1);
    MEMORY[0x19EAF07E0](v15, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return v1;
}

uint64_t sub_19BF35F58(unint64_t a1)
{
  sub_19BF3B340(0, &qword_1EAFF3D18);
  v2 = sub_19C5C45AC();
  v26 = a1;
  v27 = sub_19BF34880(a1);
  v3 = 0;
  v24 = a1 & 0xFFFFFFFFFFFFFF8;
  v25 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v27 == v3)
    {

      return v2;
    }

    if (v25)
    {
      v4 = MEMORY[0x19EAEC6D0](v3, v26);
    }

    else
    {
      if (v3 >= *(v24 + 16))
      {
        goto LABEL_20;
      }

      v4 = *(v26 + 8 * v3 + 32);
    }

    v5 = v4;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    v6 = sub_19BF3B000(v4, &selRef_taskDescription);
    if (!v7)
    {
      goto LABEL_23;
    }

    v8 = v6;
    v9 = v7;
    v10 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_19BF391F8(v8, v9);
    if (__OFADD__(v2[2], (v12 & 1) == 0))
    {
      goto LABEL_21;
    }

    v13 = v11;
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3D48);
    if (sub_19C5C48CC())
    {
      v15 = sub_19BF391F8(v8, v9);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_24;
      }

      v13 = v15;
    }

    if (v14)
    {
      v17 = v2[7];
      v18 = *(v17 + 8 * v13);
      *(v17 + 8 * v13) = v10;

      v10 = v18;
    }

    else
    {
      v2[(v13 >> 6) + 8] |= 1 << v13;
      v19 = (v2[6] + 16 * v13);
      *v19 = v8;
      v19[1] = v9;
      *(v2[7] + 8 * v13) = v10;
      v20 = v2[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_22;
      }

      v2[2] = v22;
    }

    ++v3;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_19C5C498C();
  __break(1u);
  return result;
}

uint64_t sub_19BF361A0(unint64_t a1)
{
  sub_19BF3B340(0, &qword_1EAFF3D28);
  v2 = sub_19C5C45AC();
  v26 = a1;
  v27 = sub_19BF34880(a1);
  v3 = 0;
  v24 = a1 & 0xFFFFFFFFFFFFFF8;
  v25 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v27 == v3)
    {

      return v2;
    }

    if (v25)
    {
      v4 = MEMORY[0x19EAEC6D0](v3, v26);
    }

    else
    {
      if (v3 >= *(v24 + 16))
      {
        goto LABEL_19;
      }

      v4 = *(v26 + 8 * v3 + 32);
    }

    v5 = v4;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    v6 = [v4 uuid];
    v7 = sub_19C5C45DC();
    v9 = v8;

    v10 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_19BF391F8(v7, v9);
    if (__OFADD__(v2[2], (v12 & 1) == 0))
    {
      goto LABEL_20;
    }

    v13 = v11;
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3D40);
    if (sub_19C5C48CC())
    {
      v15 = sub_19BF391F8(v7, v9);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_22;
      }

      v13 = v15;
    }

    if (v14)
    {
      v17 = v2[7];
      v18 = *(v17 + 8 * v13);
      *(v17 + 8 * v13) = v10;

      v10 = v18;
    }

    else
    {
      v2[(v13 >> 6) + 8] |= 1 << v13;
      v19 = (v2[6] + 16 * v13);
      *v19 = v7;
      v19[1] = v9;
      *(v2[7] + 8 * v13) = v10;
      v20 = v2[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_21;
      }

      v2[2] = v22;
    }

    ++v3;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_19C5C498C();
  __break(1u);
  return result;
}

uint64_t sub_19BF363F4(uint64_t a1)
{
  result = MEMORY[0x19EAEC550](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_19BF397E0(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19BF36510(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_19BF3992C(a1);
    return a2;
  }

  else
  {

    return sub_19BF39A58(a1, a2);
  }
}

void sub_19BF36564(unint64_t a1)
{
  v1 = a1;
  v25 = sub_19BF34880(a1);
  v2 = 0;
  v3 = v1 & 0xC000000000000001;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  v23 = v1 & 0xFFFFFFFFFFFFFF8;
  v24 = v1;
  while (v25 != v2)
  {
    if (v3)
    {
      v5 = MEMORY[0x19EAEC6D0](v2, v1);
    }

    else
    {
      if (v2 >= *(v4 + 16))
      {
        goto LABEL_17;
      }

      v5 = *(v1 + 8 * v2 + 32);
    }

    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    v6 = v5;
    v7 = sub_19BF3B05C(v6);
    if (!v8)
    {
      goto LABEL_18;
    }

    v9 = v7;
    v10 = v8;
    if (qword_1EAFF3A90 != -1)
    {
      swift_once();
    }

    v11 = sub_19C5C453C();
    __swift_project_value_buffer(v11, qword_1EAFF3A98);
    v12 = v6;

    v13 = sub_19C5C452C();
    v14 = sub_19C5C471C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = v3;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v15 = 136446466;
      v19 = sub_19BF40E88(v9, v10, &v26);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2112;
      *(v15 + 14) = v12;
      *v17 = v12;
      v20 = v12;
      _os_log_impl(&dword_19BF1F000, v13, v14, "Cancelling orphaned upload task for job with UUID: %{public}s %@", v15, 0x16u);
      sub_19BF3B4B4(v17, &qword_1EAFF3D30);
      v21 = v17;
      v3 = v16;
      v4 = v23;
      MEMORY[0x19EAF07E0](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v18);
      v22 = v18;
      v1 = v24;
      MEMORY[0x19EAF07E0](v22, -1, -1);
      MEMORY[0x19EAF07E0](v15, -1, -1);
    }

    else
    {
    }

    [v12 cancel];
    ++v2;
  }
}

void sub_19BF367DC(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    v2 = sub_19C5C48FC();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    v4 = a1 & 0xC000000000000001;
    v5 = &OBJC_IVAR___PLSearchSuggestionTemplate__firstIndexCategory;
    v6 = qword_1EAFF3A98;
    a2.n128_u64[0] = 136446466;
    v25 = a2;
    v7 = &_OBJC_LABEL_PROTOCOL___PLSyndicationSanitizedResourceGeneratorDelegate;
    do
    {
      if (v4)
      {
        v8 = MEMORY[0x19EAEC6D0](v3, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v3 + 32);
      }

      v9 = v8;
      if (*(v5 + 338) != -1)
      {
        swift_once();
      }

      v10 = sub_19C5C453C();
      __swift_project_value_buffer(v10, v6);
      v11 = v9;
      v12 = sub_19C5C452C();
      v13 = sub_19C5C471C();

      if (os_log_type_enabled(v12, v13))
      {
        v28 = v13;
        v14 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v31 = v29;
        *v14 = v25.n128_u32[0];
        log = v12;
        v15 = v5;
        v16 = v4;
        v17 = [v11 uuid];
        v18 = sub_19C5C45DC();
        v19 = v6;
        v20 = v2;
        v22 = v21;

        v4 = v16;
        v5 = v15;
        v23 = sub_19BF40E88(v18, v22, &v31);
        v2 = v20;
        v6 = v19;
        v7 = &_OBJC_LABEL_PROTOCOL___PLSyndicationSanitizedResourceGeneratorDelegate;

        *(v14 + 4) = v23;
        *(v14 + 12) = 2112;
        *(v14 + 14) = v11;
        *v27 = v11;
        v24 = v11;
        _os_log_impl(&dword_19BF1F000, log, v28, "Failing orphaned asset resource upload job: %{public}s %@", v14, 0x16u);
        sub_19BF3B4B4(v27, &qword_1EAFF3D30);
        MEMORY[0x19EAF07E0](v27, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x19EAF07E0](v29, -1, -1);
        MEMORY[0x19EAF07E0](v14, -1, -1);
      }

      else
      {
      }

      ++v3;
      [v11 v7[84]];
    }

    while (v2 != v3);
  }
}

uint64_t sub_19BF36AA0(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = &v13;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_19BF39764;
  *(v7 + 24) = v6;
  aBlock[4] = sub_19BF3B5F0;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19BF3B838;
  aBlock[3] = &block_descriptor_48;
  v8 = _Block_copy(aBlock);

  v9 = a3;

  [v9 performBlockAndWait_];
  _Block_release(v8);
  v10 = v13;

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v10;
  }

  __break(1u);
  return result;
}

void sub_19BF36C1C(void **a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v8 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3D00);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_19C609D50;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;

  v10 = sub_19C5C465C();

  v27[0] = 0;
  v11 = [v8 uploadJobsWithUUIDs:v10 inPhotoLibrary:a4 error:v27];

  v12 = v27[0];
  if (v11)
  {
    sub_19BF3B340(0, &qword_1EAFF3D28);
    a3 = sub_19C5C466C();
    v13 = v12;

    if (!sub_19BF34880(a3))
    {

      v15 = 0;
      goto LABEL_11;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x19EAEC6D0](0, a3);
      goto LABEL_6;
    }

    if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(a3 + 32);
LABEL_6:
      v15 = v14;

LABEL_11:
      v26 = *a1;
      *a1 = v15;

      return;
    }

    __break(1u);
  }

  else
  {
    v16 = v27[0];
    v12 = sub_19C5C44AC();

    swift_willThrow();
    if (qword_1EAFF3A90 == -1)
    {
      goto LABEL_8;
    }
  }

  swift_once();
LABEL_8:
  v17 = sub_19C5C453C();
  __swift_project_value_buffer(v17, qword_1EAFF3A98);

  v18 = v12;
  v19 = sub_19C5C452C();
  v20 = sub_19C5C471C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v27[0] = v23;
    *v21 = 136446466;
    *(v21 + 4) = sub_19BF40E88(a2, a3, v27);
    *(v21 + 12) = 2112;
    v24 = v12;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v25;
    *v22 = v25;
    _os_log_impl(&dword_19BF1F000, v19, v20, "Unable to fetch upload job with UUID: %{public}s: %@", v21, 0x16u);
    sub_19BF3B4B4(v22, &qword_1EAFF3D30);
    MEMORY[0x19EAF07E0](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x19EAF07E0](v23, -1, -1);
    MEMORY[0x19EAF07E0](v21, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_19BF36FFC(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = &v13;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_19BF39758;
  *(v7 + 24) = v6;
  aBlock[4] = sub_19BF3B5F0;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19BF3B838;
  aBlock[3] = &block_descriptor_38;
  v8 = _Block_copy(aBlock);

  v9 = a3;

  [v9 performTransactionAndWait_];
  _Block_release(v8);
  v10 = v13;

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v10;
  }

  __break(1u);
  return result;
}

void sub_19BF37178(uint64_t a1, unint64_t a2, id a3, uint64_t *a4)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v8 = [a3 managedObjectContext];
  if (!v8)
  {
    __break(1u);
  }

  v9 = v8;
  sub_19BF3B340(0, &qword_1EAFF3CF8);

  v19 = sub_19BF37494(a1, a2, v9);
  v27[0] = 0;
  v20 = [objc_opt_self() uploadJobsWithConfiguration:v19 state:2 inPhotoLibrary:a3 error:v27];
  v21 = v27[0];
  if (v20)
  {
    v22 = v20;
    sub_19BF3B340(0, &qword_1EAFF3D28);
    v23 = sub_19C5C466C();
    v24 = v21;

    *a4 = v23;
  }

  else
  {
    v25 = v27[0];
    v26 = sub_19C5C44AC();

    swift_willThrow();
    if (qword_1EAFF3A90 != -1)
    {
      swift_once();
    }

    v10 = sub_19C5C453C();
    __swift_project_value_buffer(v10, qword_1EAFF3A98);

    v11 = v26;
    v12 = sub_19C5C452C();
    v13 = sub_19C5C471C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27[0] = v16;
      *v14 = 136315394;
      *(v14 + 4) = sub_19BF40E88(a1, a2, v27);
      *(v14 + 12) = 2112;
      v17 = v26;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v18;
      *v15 = v18;
      _os_log_impl(&dword_19BF1F000, v12, v13, "Unable to fetch pending upload  jobs for bundle ID %s: %@", v14, 0x16u);
      sub_19BF3B4B4(v15, &qword_1EAFF3D30);
      MEMORY[0x19EAF07E0](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x19EAF07E0](v16, -1, -1);
      MEMORY[0x19EAF07E0](v14, -1, -1);
    }

    else
    {
    }
  }
}

id sub_19BF37494(uint64_t a1, uint64_t a2, void *a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = sub_19C5C45CC();

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() configurationWithBundleIdentifier:v4 managedObjectContext:a3 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_19C5C44AC();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_19BF3764C(uint64_t a1, uint64_t a2, __int16 a3, void *a4)
{
  v17 = 1;
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 40) = a4;
  *(v9 + 48) = a3;
  *(v9 + 56) = &v17;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_19BF39744;
  *(v10 + 24) = v9;
  aBlock[4] = sub_19BF3B5F0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19BF3B838;
  aBlock[3] = &block_descriptor_28;
  v11 = _Block_copy(aBlock);
  v12 = v4;

  v13 = a4;

  [v13 performTransactionAndWait_];
  _Block_release(v11);
  v14 = v17;

  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    return v14;
  }

  __break(1u);
  return result;
}

void sub_19BF377E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, _BYTE *a6)
{
  v10 = sub_19C5C45CC();
  v11 = [a1 fetchJobWithUUID:v10 in:a4];

  if (v11)
  {
    [v11 updateState_];
  }

  else
  {
    *a6 = 0;
  }
}

void sub_19BF37934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10 = sub_19C5C45CC();
  v11 = [v5 urlSessionForBundleID_];

  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = ObjectType;
  OUTLINED_FUNCTION_1();
  v14[1] = 1107296256;
  v14[2] = sub_19BF35378;
  v14[3] = &block_descriptor_18;
  v13 = _Block_copy(v14);

  [v11 getTasksWithCompletionHandler_];
  _Block_release(v13);
}

uint64_t sub_19BF37A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t))
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_19BF3B340(0, &qword_1EAFF3D18);
  v8 = sub_19C5C465C();
  v9 = &selRef_shortDescriptionForTasks_;
  v10 = &selRef_longDescriptionForTasks_;
  if (a4 != 2)
  {
    v10 = &selRef_normalDescriptionForTasks_;
  }

  if (a4 != 1)
  {
    v9 = v10;
  }

  v11 = [ObjCClassFromMetadata *v9];

  v12 = sub_19C5C45DC();
  v14 = v13;

  if (qword_1EAFF3A90 != -1)
  {
    swift_once();
  }

  v15 = sub_19C5C453C();
  __swift_project_value_buffer(v15, qword_1EAFF3A98);

  v16 = sub_19C5C452C();
  v17 = sub_19C5C472C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v22 = v19;
    *v18 = 136315138;
    v20 = sub_19BF40E88(v12, v14, &v22);

    *(v18 + 4) = v20;
    _os_log_impl(&dword_19BF1F000, v16, v17, "PLBackgroundAssetResourceUploader status:\n%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x19EAF07E0](v19, -1, -1);
    MEMORY[0x19EAF07E0](v18, -1, -1);
  }

  else
  {
  }

  a5(v12, v14);
}

void sub_19BF37D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_19C5C45CC();
  (*(a3 + 16))(a3, v4);
}

uint64_t sub_19BF37DB0(unint64_t a1)
{
  sub_19C5C482C();

  strcpy(v4, "Upload tasks: ");
  sub_19BF34880(a1);
  v2 = sub_19C5C493C();
  MEMORY[0x19EAEC490](v2);

  return v4[0];
}

char *sub_19BF37E6C(unint64_t a1)
{
  v19 = a1;
  v1 = sub_19BF34880(a1);
  v2 = v1;
  if (!v1)
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3DA0);
    sub_19BF3B46C(&qword_1EAFF3DA8, &qword_1EAFF3DA0);
    v17 = sub_19C5C45BC();

    v18 = sub_19C5C493C();
    MEMORY[0x19EAEC490](v18);

    MEMORY[0x19EAEC490](0x203A746E756F430ALL, 0xE800000000000000);

    return v17;
  }

  v20 = MEMORY[0x1E69E7CC0];
  result = sub_19BF3950C(0, v1 & ~(v1 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = 0;
    v6 = v19 & 0xC000000000000001;
    v7 = v2;
    do
    {
      if (v6)
      {
        v8 = MEMORY[0x19EAEC6D0](v5, v19);
      }

      else
      {
        v8 = *(v19 + 8 * v5 + 32);
      }

      v9 = v8;
      v10 = [ObjCClassFromMetadata normalDescriptionForTask_];
      v11 = sub_19C5C45DC();
      v13 = v12;

      v15 = *(v20 + 16);
      v14 = *(v20 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_19BF3950C((v14 > 1), v15 + 1, 1);
      }

      ++v5;
      *(v20 + 16) = v15 + 1;
      v16 = v20 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while (v7 != v5);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_19BF380B0(void *a1)
{
  v2 = [swift_getObjCClassFromMetadata() descriptionForTaskState_];
  v3 = sub_19C5C45DC();
  v5 = v4;

  v6 = sub_19BF3B000(a1, &selRef_taskDescription);
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x3E6C696E3CLL;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  sub_19C5C482C();
  v10 = [a1 description];
  v11 = sub_19C5C45DC();

  MEMORY[0x19EAEC490](0x3A6574617473202CLL, 0xE900000000000020);
  MEMORY[0x19EAEC490](v3, v5);

  MEMORY[0x19EAEC490](0x495555626F6A202CLL, 0xEB00000000203A44);
  MEMORY[0x19EAEC490](v8, v9);

  return v11;
}

char *sub_19BF38248(unint64_t a1)
{
  v19 = a1;
  v1 = sub_19BF34880(a1);
  v2 = v1;
  if (!v1)
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3DA0);
    sub_19BF3B46C(&qword_1EAFF3DA8, &qword_1EAFF3DA0);
    v17 = sub_19C5C45BC();

    v18 = sub_19C5C493C();
    MEMORY[0x19EAEC490](v18);

    MEMORY[0x19EAEC490](0x3A746E756F430A0ALL, 0xE900000000000020);

    return v17;
  }

  v20 = MEMORY[0x1E69E7CC0];
  result = sub_19BF3950C(0, v1 & ~(v1 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = 0;
    v6 = v19 & 0xC000000000000001;
    v7 = v2;
    do
    {
      if (v6)
      {
        v8 = MEMORY[0x19EAEC6D0](v5, v19);
      }

      else
      {
        v8 = *(v19 + 8 * v5 + 32);
      }

      v9 = v8;
      v10 = [ObjCClassFromMetadata longDescriptionForTask_];
      v11 = sub_19C5C45DC();
      v13 = v12;

      v15 = *(v20 + 16);
      v14 = *(v20 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_19BF3950C((v14 > 1), v15 + 1, 1);
      }

      ++v5;
      *(v20 + 16) = v15 + 1;
      v16 = v20 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while (v7 != v5);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id sub_19BF38490(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_19BF3B340(0, &qword_1EAFF3D18);
  v5 = sub_19C5C466C();
  swift_getObjCClassMetadata();
  a4(v5);

  OUTLINED_FUNCTION_13();
  v6 = sub_19C5C45CC();

  return v6;
}

uint64_t sub_19BF38538(void *a1)
{
  v2 = sub_19C5C448C();
  v44 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v43 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3D90);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v43 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v43 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v43 - v17;
  v19 = [swift_getObjCClassFromMetadata() normalDescriptionForTask_];
  v20 = sub_19C5C45DC();
  v22 = v21;

  v47 = v20;
  v48 = v22;
  v45 = 0;
  v46 = 0xE000000000000000;
  v23 = [a1 originalRequest];
  if (v23)
  {
    v24 = v23;
    sub_19C5C447C();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  __swift_storeEnumTagSinglePayload(v18, v25, 1, v2);
  sub_19BF3B3C8(v18, v16, &qword_1EAFF3D90);
  if (__swift_getEnumTagSinglePayload(v16, 1, v2) == 1)
  {
    sub_19BF3B4B4(v16, &qword_1EAFF3D90);
    MEMORY[0x19EAEC490](7104878, 0xE300000000000000);
  }

  else
  {
    v26 = v44;
    (*(v44 + 32))(v6, v16, v2);
    sub_19BF3B424(&qword_1EAFF3D98, MEMORY[0x1E6967EC8]);
    v27 = sub_19C5C493C();
    v29 = v28;
    (*(v26 + 8))(v6, v2);
    MEMORY[0x19EAEC490](v27, v29);
  }

  sub_19BF3B4B4(v18, &qword_1EAFF3D90);
  v31 = v45;
  v30 = v46;
  v45 = 0;
  v46 = 0xE000000000000000;
  v32 = [a1 currentRequest];
  if (v32)
  {
    v33 = v32;
    sub_19C5C447C();

    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v34, 1, v2);
  sub_19BF3B3C8(v13, v10, &qword_1EAFF3D90);
  if (__swift_getEnumTagSinglePayload(v10, 1, v2) == 1)
  {
    sub_19BF3B4B4(v10, &qword_1EAFF3D90);
    MEMORY[0x19EAEC490](7104878, 0xE300000000000000);
  }

  else
  {
    v35 = v43;
    v36 = v44;
    (*(v44 + 32))(v43, v10, v2);
    sub_19BF3B424(&qword_1EAFF3D98, MEMORY[0x1E6967EC8]);
    v37 = sub_19C5C493C();
    v39 = v38;
    (*(v36 + 8))(v35, v2);
    MEMORY[0x19EAEC490](v37, v39);
  }

  sub_19BF3B4B4(v13, &qword_1EAFF3D90);
  v41 = v45;
  v40 = v46;
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_19C5C482C();

  v45 = 0xD000000000000015;
  v46 = 0x800000019C611870;
  MEMORY[0x19EAEC490](v31, v30);

  MEMORY[0x19EAEC490](v45, v46);

  v45 = 0;
  v46 = 0xE000000000000000;
  sub_19C5C482C();

  v45 = 0xD000000000000015;
  v46 = 0x800000019C611890;
  MEMORY[0x19EAEC490](v41, v40);

  MEMORY[0x19EAEC490](v45, v46);

  return v47;
}

id sub_19BF38AB8(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  swift_getObjCClassMetadata();
  v6 = a3;
  a4();

  OUTLINED_FUNCTION_13();
  v7 = sub_19C5C45CC();

  return v7;
}

uint64_t sub_19BF38B34(uint64_t a1)
{
  result = 0x676E696E6E7572;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x65646E6570737573;
      break;
    case 2:
      result = 0x6E696C65636E6163;
      break;
    case 3:
      result = 0x6574656C706D6F63;
      break;
    default:
      v3 = sub_19C5C493C();
      MEMORY[0x19EAEC490](v3);

      result = 0x206E776F6E6B6E75;
      break;
  }

  return result;
}

void __swiftcall PLBackgroundAssetResourceUploader.init()(PLBackgroundAssetResourceUploader *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_19BF38D68(void *a1, void (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, uint64_t (*)(), uint64_t), uint64_t a5)
{
  *&v15 = a1;
  *(&v15 + 1) = a2;
  v16 = a3;
  if (a1[2])
  {
    v8 = a1[4];
    v7 = a1[5];

    sub_19BF3B0DC(0, 1);
    v14[0] = v8;
    v14[1] = v7;
    v9 = v16;
    v10 = swift_allocObject();
    *(v10 + 16) = v15;
    *(v10 + 32) = v9;
    *(v10 + 40) = a4;
    *(v10 + 48) = a5;

    a4(v14, sub_19BF3B5E8, v10);
  }

  else
  {

    a2(v12);
  }
}

uint64_t sub_19BF38EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for RecursiveAsyncIterator();

  RecursiveAsyncIterator.next(_:)(a4, a5, v7);
}

uint64_t sub_19BF38F78()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_19BF38FD4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19BF39014(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_19BF390CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3D00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_19BF391D4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_19BF391F8(uint64_t a1, uint64_t a2)
{
  sub_19C5C49DC();
  sub_19C5C45FC();
  v4 = sub_19C5C49FC();

  return sub_19BF39270(a1, a2, v4);
}

unint64_t sub_19BF39270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_19C5C495C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void sub_19BF39324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_19BF391F8(a2, a3);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3D60);
  if ((sub_19C5C48CC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_19BF391F8(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    sub_19C5C498C();
    __break(1u);
    return;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = v15[7];
    v17 = *(v16 + 8 * v11);
    *(v16 + 8 * v11) = a1;
  }

  else
  {
    sub_19BF39460(v11, a2, a3, a1, v15);
  }
}

unint64_t sub_19BF39460(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_19BF394A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_19C609D60;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

char *sub_19BF3950C(char *a1, int64_t a2, char a3)
{
  result = sub_19BF3952C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19BF3952C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3D00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_19BF39780(uint64_t a1, uint64_t a2)
{
  v3 = v2[5];
  sub_19BF35108(a2, v2[3], v2[4]);
  return v3();
}

BOOL sub_19BF397E0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_19C5C49DC();
  sub_19C5C45FC();
  v8 = sub_19C5C49FC();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_19C5C495C() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_19BF3AC88(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_19BF3992C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_19BF39F30(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_19BF39A58(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v56 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v49 = v12;
    v50 = v7;
    v51 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        sub_19C5C49DC();

        sub_19C5C45FC();
        v20 = sub_19C5C49FC();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v22 = (*(v5 + 48) + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (sub_19C5C495C() & 1) != 0)
          {
            v53 = v47;
            v54 = v16;
            v55 = v11;
            v3 = v50;
            v12 = v51;
            v52[0] = v51;
            v52[1] = v50;

            v25 = *(v5 + 32);
            v44 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v44;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v45 = &v43;
              MEMORY[0x1EEE9AC00](v24);
              v7 = &v43 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v26 = *(v7 + 8 * v4) & ~v8;
              v27 = *(v5 + 16);
              v48 = v7;
              *(v7 + 8 * v4) = v26;
              v28 = v27 - 1;
              v29 = v49;
              while (1)
              {
                v46 = v28;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v31 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v32 = (*(v12 + 48) + ((v16 << 10) | (16 * v31)));
                v2 = *v32;
                v33 = v32[1];
                sub_19C5C49DC();

                sub_19C5C45FC();
                v34 = sub_19C5C49FC();
                v35 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v34 & v35;
                  v7 = (v34 & v35) >> 6;
                  v8 = 1 << (v34 & v35);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v50;
                    v12 = v51;
                    v29 = v49;
                    goto LABEL_24;
                  }

                  v36 = (*(v5 + 48) + 16 * v4);
                  if (*v36 == v2 && v36[1] == v33)
                  {
                    break;
                  }

                  v38 = sub_19C5C495C();
                  v34 = v4 + 1;
                }

                while ((v38 & 1) == 0);

                v39 = v48[v7];
                v48[v7] = v39 & ~v8;
                v3 = v50;
                v12 = v51;
                v29 = v49;
                if ((v39 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v28 = v46 - 1;
                if (__OFSUB__(v46, 1))
                {
                  __break(1u);
                }

                if (v46 == 1)
                {

                  v5 = MEMORY[0x1E69E7CD0];
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v30 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v30 >= v29)
                {
                  v5 = sub_19BF3A528(v48, v44, v46, v5);
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v30);
                ++v16;
                if (v11)
                {
                  v16 = v30;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v41 = swift_slowAlloc();
            v42 = sub_19BF3A4A0(v41, v44, (v5 + 56), v44, v5, v7, v52);

            MEMORY[0x19EAF07E0](v41, -1, -1);
            v47 = v53;
            v5 = v42;
            goto LABEL_44;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v50;
        v14 = v51;
        v12 = v49;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_19BF3B0CC();
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v5;
}

uint64_t sub_19BF39F30(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_19C5C49DC();
  sub_19C5C45FC();
  v6 = sub_19C5C49FC();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_19C5C495C() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_19BF3A744();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_19BF3AAD0(v8);
  *v2 = v15;
  return v13;
}

uint64_t sub_19BF3A058()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3D38);
  result = sub_19C5C47FC();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_19BF394A8(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    sub_19C5C49DC();
    sub_19C5C45FC();
    result = sub_19C5C49FC();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v16;
    v26[1] = v17;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_19BF3A2B4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    sub_19C5C49DC();

    sub_19C5C45FC();
    v16 = sub_19C5C49FC();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = sub_19C5C495C();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_19BF3A528(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_19BF3A4A0(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_19BF3A2B4(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_19BF3A528(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3D38);
  result = sub_19C5C480C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_19C5C49DC();

    sub_19C5C45FC();
    result = sub_19C5C49FC();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void *sub_19BF3A744()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3D38);
  v2 = *v0;
  v3 = sub_19C5C47EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_19BF3A89C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3D38);
  result = sub_19C5C47FC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        sub_19C5C49DC();

        sub_19C5C45FC();
        result = sub_19C5C49FC();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_19BF3AAD0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_19C5C47CC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_19C5C49DC();

        sub_19C5C45FC();
        v10 = sub_19C5C49FC();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_19BF3AC88(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_19BF3A058();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_19BF3A89C();
LABEL_10:
      v15 = *v4;
      sub_19C5C49DC();
      sub_19C5C45FC();
      result = sub_19C5C49FC();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_19C5C495C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_19BF3A744();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_19C5C497C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

char *sub_19BF3ADF0(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 3) >> 1)
  {
    if (*(v5 + 2) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 2);
    }

    result = sub_19BF390CC(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_19BF3AE58(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_19C5C48FC();
LABEL_9:
  result = sub_19C5C485C();
  *v1 = result;
  return result;
}

void sub_19BF3AEF8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_19C5C45CC();
  [a3 set:v4 sourceApplicationBundleIdentifier:?];
}

void sub_19BF3AF50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_19C5C45CC();
  [a3 setClientBundleID_];
}

void sub_19BF3AFA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_19C5C45CC();
  [a3 setTaskDescription_];
}

uint64_t sub_19BF3B000(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_19C5C45DC();
  }

  return OUTLINED_FUNCTION_13();
}

uint64_t sub_19BF3B05C(void *a1)
{
  v2 = [a1 taskDescription];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_19C5C45DC();

  return v3;
}

int64_t sub_19BF3B0DC(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_19BF3ADF0(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_15:
    *v2 = v8;
    return result;
  }

  v10 = *(v8 + 16);
  v11 = v10 - a2;
  if (__OFSUB__(v10, a2))
  {
    goto LABEL_21;
  }

  v12 = (v9 + 16 * a2);
  if (v5 != a2 || v12 + 16 * v11 <= v9 + 16 * v5)
  {
    result = memmove((v9 + 16 * v5), v12, 16 * v11);
    v10 = *(v8 + 16);
  }

  v14 = __OFADD__(v10, v7);
  v15 = v10 - v6;
  if (!v14)
  {
    *(v8 + 16) = v15;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t objectdestroy_79Tm()
{

  v0 = OUTLINED_FUNCTION_5();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_19BF3B340(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_19BF3B3C8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_13();
  v5(v4);
  return a2;
}

uint64_t sub_19BF3B424(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19BF3B46C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19BF3B4B4(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_19BF3B564(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_9()
{

  JUMPOUT(0x19EAF07E0);
}

uint64_t OUTLINED_FUNCTION_16()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_17(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_19(float a1)
{
  *v2 = a1;
  *(v2 + 4) = v1;
  *(v2 + 8) = 2080;
}

void OUTLINED_FUNCTION_21(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_23()
{

  return sub_19C5C47AC();
}

uint64_t PLBackgroundJobAssetResourceUploadJobWorkerError.hashValue.getter()
{
  v1 = *v0;
  sub_19C5C49DC();
  MEMORY[0x19EAEC870](v1);
  return sub_19C5C49FC();
}

uint64_t sub_19BF3B8F4()
{
  v1 = *v0;
  sub_19C5C49DC();
  MEMORY[0x19EAEC870](v1);
  return sub_19C5C49FC();
}

uint64_t sub_19BF3B948()
{
  v0 = sub_19C5C453C();
  __swift_allocate_value_buffer(v0, qword_1EAFF3E30);
  __swift_project_value_buffer(v0, qword_1EAFF3E30);
  sub_19BF3B340(0, &qword_1EAFF3D08);
  sub_19C5C479C();
  return sub_19C5C454C();
}

uint64_t PLBackgroundJobAssetResourceUploadJobWorker.resourceUploader.getter()
{
  OUTLINED_FUNCTION_2_0();
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t PLBackgroundJobAssetResourceUploadJobWorker.resourceUploader.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___PLBackgroundJobAssetResourceUploadJobWorker_resourceUploader;
  OUTLINED_FUNCTION_3_0();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t PLBackgroundJobAssetResourceUploadJobWorker.maxNumberOfPendingUploads.getter()
{
  v1 = OBJC_IVAR___PLBackgroundJobAssetResourceUploadJobWorker_maxNumberOfPendingUploads;
  OUTLINED_FUNCTION_2_0();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PLBackgroundJobAssetResourceUploadJobWorker.maxNumberOfPendingUploads.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___PLBackgroundJobAssetResourceUploadJobWorker_maxNumberOfPendingUploads;
  result = OUTLINED_FUNCTION_3_0();
  *(v1 + v3) = a1;
  return result;
}

uint64_t PLBackgroundJobAssetResourceUploadJobWorker.thresholdToScheduleMoreItems.getter()
{
  v1 = OBJC_IVAR___PLBackgroundJobAssetResourceUploadJobWorker_thresholdToScheduleMoreItems;
  OUTLINED_FUNCTION_2_0();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PLBackgroundJobAssetResourceUploadJobWorker.thresholdToScheduleMoreItems.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___PLBackgroundJobAssetResourceUploadJobWorker_thresholdToScheduleMoreItems;
  result = OUTLINED_FUNCTION_3_0();
  *(v1 + v3) = a1;
  return result;
}

void sub_19BF3BC60(void *a1)
{
  v3 = [a1 libraryServicesManager];
  v4 = [v3 backgroundAssetResourceUploader];

  if (v4)
  {
    [v1 initWithLibraryBundle:a1 uploader:v4];
  }

  else
  {
    __break(1u);
  }
}

id sub_19BF3BD14(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = &v2[OBJC_IVAR___PLBackgroundJobAssetResourceUploadJobWorker_lockedState];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = OBJC_IVAR___PLBackgroundJobAssetResourceUploadJobWorker_maxNumberOfPendingUploadsDefaultsOverride;
  v7 = objc_opt_self();
  v8 = [v7 standardUserDefaults];
  v9 = sub_19C5C45CC();
  v10 = [v8 integerForKey_];

  *&v3[v6] = v10;
  v11 = a2;
  v12 = OBJC_IVAR___PLBackgroundJobAssetResourceUploadJobWorker_thresholdToScheduleMoreItemsOverride;
  v13 = [v7 standardUserDefaults];
  v14 = sub_19C5C45CC();
  v15 = [v13 integerForKey_];

  *&v3[v12] = v15;
  v16 = OBJC_IVAR___PLBackgroundJobAssetResourceUploadJobWorker_maxNumberOfPendingUploads;
  *&v3[OBJC_IVAR___PLBackgroundJobAssetResourceUploadJobWorker_maxNumberOfPendingUploads] = 40;
  v17 = OBJC_IVAR___PLBackgroundJobAssetResourceUploadJobWorker_thresholdToScheduleMoreItems;
  *&v3[OBJC_IVAR___PLBackgroundJobAssetResourceUploadJobWorker_thresholdToScheduleMoreItems] = 20;
  *&v3[OBJC_IVAR___PLBackgroundJobAssetResourceUploadJobWorker_resourceUploader] = v11;
  if (*&v3[v6] < 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    v18 = qword_1EAFF3AB0;
    swift_unknownObjectRetain();
    if (v18 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v19 = sub_19C5C453C();
    __swift_project_value_buffer(v19, qword_1EAFF3E30);
    v20 = v3;
    v21 = sub_19C5C452C();
    v22 = sub_19C5C471C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_5_0();
      *v23 = 134217984;
      *(v23 + 4) = *&v3[v6];

      OUTLINED_FUNCTION_8_0(&dword_19BF1F000, v24, v25, "Toggled user default: %ld");
      OUTLINED_FUNCTION_9();
    }

    else
    {

      v21 = v20;
    }

    v26 = *&v3[v6];
    swift_beginAccess();
    *&v3[v16] = v26;
  }

  if (*&v3[v12] >= 1)
  {
    if (qword_1EAFF3AB0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v27 = sub_19C5C453C();
    __swift_project_value_buffer(v27, qword_1EAFF3E30);
    v28 = v3;
    v29 = sub_19C5C452C();
    v30 = sub_19C5C471C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_5_0();
      *v31 = 134217984;
      *(v31 + 4) = *&v3[v12];

      OUTLINED_FUNCTION_8_0(&dword_19BF1F000, v32, v33, "Toggled user default: %ld");
      OUTLINED_FUNCTION_9();
    }

    else
    {

      v29 = v28;
    }

    v34 = *&v3[v12];
    swift_beginAccess();
    *&v3[v17] = v34;
  }

  v38.receiver = v3;
  v38.super_class = PLBackgroundJobAssetResourceUploadJobWorker;
  v35 = objc_msgSendSuper2(&v38, sel_initWithLibraryBundle_, a1);

  swift_unknownObjectRelease();
  return v35;
}

id PLBackgroundJobAssetResourceUploadJobWorker.workItemsNeedingProcessing(in:validCriterias:)(void *a1, uint64_t a2)
{
  v5 = [objc_opt_self() criteriaForAssetResourceUploadJobWorker];
  if (sub_19BF3C4BC(v5, a2))
  {
    v6 = sub_19BF3C5D4(2, a1);
    v8 = v7;
    v29 = MEMORY[0x1E69E7CC0];
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v9 + 24) = v8 & 1;
    *(v9 + 32) = v2;
    *(v9 + 40) = a1;
    *(v9 + 48) = &v29;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_19BF413F8;
    *(v10 + 24) = v9;
    aBlock[4] = sub_19BF3B224;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19BF3B838;
    aBlock[3] = &block_descriptor_0;
    v11 = _Block_copy(aBlock);
    v12 = v2;
    v13 = a1;

    [v13 performBlockAndWait_];
    _Block_release(v11);
    v14 = v29;
    if (v29 >> 62)
    {
      v27 = v5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3E68);
      v16 = sub_19C5C48EC();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      v15 = v5;
      sub_19C5C496C();

      v16 = v14;
    }

    v17 = objc_allocWithZone(PLBackgroundJobWorkerPendingWorkItems);
    v18 = sub_19BF40DFC(v5, v16);
  }

  else
  {
    if (qword_1EAFF3AB0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v19 = sub_19C5C453C();
    __swift_project_value_buffer(v19, qword_1EAFF3E30);
    v20 = v5;
    v21 = sub_19C5C452C();
    v22 = sub_19C5C472C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_5_0();
      v24 = OUTLINED_FUNCTION_9_0();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v20;
      v25 = v20;
      _os_log_impl(&dword_19BF1F000, v21, v22, "Invalid criteria found: %@", v23, 0xCu);
      sub_19BF41EB8(v24, &qword_1EAFF3D30);
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_9();
    }

    v18 = [objc_allocWithZone(PLBackgroundJobWorkerPendingWorkItems) initWithZeroWorkItemsForValidCriteria];
  }

  return v18;
}

BOOL sub_19BF3C4BC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_19C5C47DC();

    return v4 & 1;
  }

  else
  {
    if (!*(a2 + 16))
    {
      return 0;
    }

    sub_19BF3B340(0, &qword_1EAFF3EF0);
    v6 = sub_19C5C477C();
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v10 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v11 = *(*(a2 + 48) + 8 * v8);
      v12 = sub_19C5C478C();

      v6 = v8 + 1;
    }

    while ((v12 & 1) == 0);
    return v10;
  }
}

id sub_19BF3C5D4(__int16 a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v17[0] = 0;
  v3 = [objc_opt_self() countOfUploadJobsWithConfiguration:0 state:a1 inPhotoLibrary:a2 error:v17];
  v4 = v17[0];
  if (v17[0])
  {
    swift_willThrow();
    v5 = qword_1EAFF3AB0;
    v6 = v4;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_19C5C453C();
    __swift_project_value_buffer(v7, qword_1EAFF3E30);
    v8 = v6;
    v9 = sub_19C5C452C();
    v10 = sub_19C5C471C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 33686018;
      *(v11 + 4) = a1;
      *(v11 + 6) = 2112;
      v13 = v8;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 8) = v14;
      *v12 = v14;
      _os_log_impl(&dword_19BF1F000, v9, v10, "Failed to fetch job count, with state: %{public}hd. Error: %@", v11, 0x10u);
      sub_19BF41EB8(v12, &qword_1EAFF3D30);
      MEMORY[0x19EAF07E0](v12, -1, -1);
      MEMORY[0x19EAF07E0](v11, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  else
  {
    v15 = v3;
    if (v3 == sub_19C5C445C())
    {
      return 0;
    }

    else
    {
      return v15;
    }
  }
}

void sub_19BF3C7D0(uint64_t a1, char a2, char *a3, uint64_t a4, NSObject *a5)
{
  if ((a2 & 1) == 0)
  {
    v13 = OBJC_IVAR___PLBackgroundJobAssetResourceUploadJobWorker_thresholdToScheduleMoreItems;
    swift_beginAccess();
    if (*&a3[v13] < a1)
    {
      if (qword_1EAFF3AB0 != -1)
      {
        swift_once();
      }

      v14 = sub_19C5C453C();
      __swift_project_value_buffer(v14, qword_1EAFF3E30);
      v15 = a3;
      v16 = sub_19C5C452C();
      v17 = sub_19C5C472C();
      if (!os_log_type_enabled(v16, v17))
      {

        return;
      }

      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = *&a3[v13];

      _os_log_impl(&dword_19BF1F000, v16, v17, "Found more than %ld pending asset resource upload jobs, not scheduling any more", v18, 0xCu);
      v19 = v18;
      goto LABEL_28;
    }

    v20 = OBJC_IVAR___PLBackgroundJobAssetResourceUploadJobWorker_maxNumberOfPendingUploads;
    swift_beginAccess();
    v21 = *&a3[v20];
    if (__OFSUB__(v21, a1))
    {
      __break(1u);
      goto LABEL_37;
    }

    v22 = sub_19BF3CDC8(1, a4, v21 - a1);
    if (v22)
    {
      v23 = v22;
      v24 = sub_19BF3B5E0(v22);
      if (!v24)
      {

        a3 = MEMORY[0x1E69E7CC0];
        goto LABEL_31;
      }

      v25 = v24;
      osloga = a5;
      v47 = MEMORY[0x1E69E7CC0];
      sub_19C5C489C();
      if ((v25 & 0x8000000000000000) == 0)
      {
        v26 = 0;
        do
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x19EAEC6D0](v26, v23);
          }

          else
          {
            v27 = *(v23 + 8 * v26 + 32);
          }

          v28 = v27;
          ++v26;
          v29 = [v27 uuid];
          v30 = sub_19C5C45DC();
          v32 = v31;

          v33 = type metadata accessor for PLAssetResourceUploadWorkItem();
          v34 = objc_allocWithZone(v33);
          v35 = &v34[OBJC_IVAR____TtC20PhotoLibraryServices29PLAssetResourceUploadWorkItem_uuid];
          *v35 = v30;
          v35[1] = v32;
          v46.receiver = v34;
          v46.super_class = v33;
          objc_msgSendSuper2(&v46, sel_init);

          sub_19C5C487C();
          sub_19C5C48AC();
          sub_19C5C48BC();
          sub_19C5C488C();
        }

        while (v25 != v26);

        a3 = v47;
LABEL_31:
        if (qword_1EAFF3AB0 == -1)
        {
LABEL_32:
          v40 = sub_19C5C453C();
          __swift_project_value_buffer(v40, qword_1EAFF3E30);

          v41 = sub_19C5C452C();
          v42 = sub_19C5C472C();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            *v43 = 134217984;
            *(v43 + 4) = sub_19BF3B5E0(a3);

            _os_log_impl(&dword_19BF1F000, v41, v42, "Scheduling %ld more asset resource upload jobs", v43, 0xCu);
            MEMORY[0x19EAF07E0](v43, -1, -1);
          }

          else
          {
          }

          sub_19BF3D118(a3);
          return;
        }

LABEL_37:
        swift_once();
        goto LABEL_32;
      }

      __break(1u);
    }

    else if (qword_1EAFF3AB0 == -1)
    {
LABEL_26:
      v36 = sub_19C5C453C();
      __swift_project_value_buffer(v36, qword_1EAFF3E30);
      v16 = sub_19C5C452C();
      v37 = sub_19C5C471C();
      if (!os_log_type_enabled(v16, v37))
      {
LABEL_29:

        return;
      }

      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v47 = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_19BF40E88(0xD00000000000002ELL, 0x800000019C611BE0, &v47);
      _os_log_impl(&dword_19BF1F000, v16, v37, "%s Failed to fetch registered jobs", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x19EAF07E0](v39, -1, -1);
      v19 = v38;
LABEL_28:
      MEMORY[0x19EAF07E0](v19, -1, -1);
      goto LABEL_29;
    }

    swift_once();
    goto LABEL_26;
  }

  if (qword_1EAFF3AB0 != -1)
  {
    swift_once();
  }

  v5 = sub_19C5C453C();
  __swift_project_value_buffer(v5, qword_1EAFF3E30);
  oslog = sub_19C5C452C();
  v6 = sub_19C5C471C();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v48[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_19BF40E88(0xD00000000000002ELL, 0x800000019C611BE0, v48);
    _os_log_impl(&dword_19BF1F000, oslog, v6, "%s Failed to fetch pending jobs count", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x19EAF07E0](v8, -1, -1);
    MEMORY[0x19EAF07E0](v7, -1, -1);
  }

  else
  {
  }
}

id sub_19BF3CDC8(__int16 a1, uint64_t a2, uint64_t a3)
{
  LOWORD(v4) = a1;
  v28[1] = *MEMORY[0x1E69E9840];
  v28[0] = 0;
  v5 = [objc_opt_self() uploadJobsWithConfiguration:0 state:a1 inPhotoLibrary:a2 error:v28];
  v6 = v28[0];
  if (v5)
  {
    v7 = v5;
    sub_19BF3B340(0, &qword_1EAFF3D28);
    v8 = sub_19C5C466C();
    v9 = v6;

    v10 = sub_19BF3FEB8(a3, v8);
    v12 = v11;
    v4 = v13;
    v14 = MEMORY[0x1E69E7CC0];
    v28[0] = MEMORY[0x1E69E7CC0];
    v16 = v15 >> 1;
    while (1)
    {
      if (v16 == v4)
      {
        swift_unknownObjectRelease();
        return v14;
      }

      if (v4 >= v16)
      {
        break;
      }

      v17 = *(v12 + 8 * v4);
      MEMORY[0x19EAEC4D0]();
      if (*((v28[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_19C5C468C();
      }

      sub_19C5C469C();
      v14 = v28[0];
      ++v4;
    }

    __break(1u);
    goto LABEL_16;
  }

  v18 = v28[0];
  v10 = sub_19C5C44AC();

  swift_willThrow();
  if (qword_1EAFF3AB0 != -1)
  {
LABEL_16:
    swift_once();
  }

  v19 = sub_19C5C453C();
  __swift_project_value_buffer(v19, qword_1EAFF3E30);
  v20 = v10;
  v21 = sub_19C5C452C();
  v22 = sub_19C5C471C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 33686018;
    *(v23 + 4) = v4;
    *(v23 + 6) = 2112;
    v25 = v10;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 8) = v26;
    *v24 = v26;
    _os_log_impl(&dword_19BF1F000, v21, v22, "Failed to fetch upload jobs, with state: %{public}hd. Error: %@", v23, 0x10u);
    sub_19BF41EB8(v24, &qword_1EAFF3D30);
    MEMORY[0x19EAF07E0](v24, -1, -1);
    MEMORY[0x19EAF07E0](v23, -1, -1);
  }

  else
  {
  }

  return 0;
}

id PLAssetResourceUploadWorkItem.__allocating_init(uuid:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC20PhotoLibraryServices29PLAssetResourceUploadWorkItem_uuid];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_19BF3D118(unint64_t a1)
{
  v3 = sub_19BF3B5E0(a1);
  v4 = sub_19BF3B5E0(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_19BF3AE58(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_19BF41F88(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_19BF3D26C(uint64_t a1, void *a2, void *a3, void (**a4)(void, void))
{
  v31[11] = *MEMORY[0x1E69E9840];
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  type metadata accessor for PLAssetResourceUploadWorkItem();
  v8 = swift_dynamicCastClassUnconditional();
  _Block_copy(a4);
  if (qword_1EAFF3AB0 != -1)
  {
    swift_once();
  }

  v9 = sub_19C5C453C();
  __swift_project_value_buffer(v9, qword_1EAFF3E30);
  swift_unknownObjectRetain();
  v10 = sub_19C5C452C();
  v11 = sub_19C5C46FC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = a3;
    v13 = v7;
    v14 = a2;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v8;
    *v16 = v8;
    swift_unknownObjectRetain();
    _os_log_impl(&dword_19BF1F000, v10, v11, "Starting work on item: %@", v15, 0xCu);
    sub_19BF41EB8(v16, &qword_1EAFF3D30);
    MEMORY[0x19EAF07E0](v16, -1, -1);
    v17 = v15;
    a2 = v14;
    v7 = v13;
    a3 = v12;
    MEMORY[0x19EAF07E0](v17, -1, -1);
  }

  v18 = (v8 + OBJC_IVAR____TtC20PhotoLibraryServices29PLAssetResourceUploadWorkItem_uuid);
  swift_beginAccess();
  v19 = *v18;
  v20 = v18[1];
  v31[0] = 0;

  if ([a3 verifyWorkerIsRunningWithNoProgressAndReturnError_])
  {
    v21 = v31[0];
    sub_19BF3D9F4(v19, v20, a2, v30, v31);

    v26 = sub_19BF3DF04(v31, sub_19BF41C14, v7);
    if (([a3 updateRunningProgress_] & 1) == 0)
    {
      v27 = sub_19C5C452C();
      v28 = sub_19C5C472C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_19BF1F000, v27, v28, "The worker has been canceled", v29, 2u);
        MEMORY[0x19EAF07E0](v29, -1, -1);
      }

      [a3 cancelProgress_];
    }

    sub_19BF4149C(v31);
  }

  else
  {
    v22 = v31[0];

    v23 = sub_19C5C44AC();

    swift_willThrow();
    v24 = v23;
    v25 = sub_19C5C449C();
    (a4)[2](a4, v25);
  }

  _Block_release(a4);
}

void PLBackgroundJobAssetResourceUploadJobWorker.performWork(onItem:in:completion:)(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v31[11] = *MEMORY[0x1E69E9840];
  type metadata accessor for PLAssetResourceUploadWorkItem();
  v9 = swift_dynamicCastClassUnconditional();
  if (qword_1EAFF3AB0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v10 = sub_19C5C453C();
  __swift_project_value_buffer(v10, qword_1EAFF3E30);
  swift_unknownObjectRetain();
  v11 = sub_19C5C452C();
  v12 = sub_19C5C46FC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = v5;
    v14 = a2;
    v15 = a4;
    v16 = a3;
    v17 = OUTLINED_FUNCTION_5_0();
    v18 = OUTLINED_FUNCTION_9_0();
    *v17 = 138412290;
    *(v17 + 4) = v9;
    *v18 = v9;
    swift_unknownObjectRetain();
    _os_log_impl(&dword_19BF1F000, v11, v12, "Starting work on item: %@", v17, 0xCu);
    sub_19BF41EB8(v18, &qword_1EAFF3D30);
    OUTLINED_FUNCTION_9();
    a3 = v16;
    a4 = v15;
    a2 = v14;
    v5 = v13;
    OUTLINED_FUNCTION_9();
  }

  v19 = (v9 + OBJC_IVAR____TtC20PhotoLibraryServices29PLAssetResourceUploadWorkItem_uuid);
  OUTLINED_FUNCTION_2_0();
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[1];
  v31[0] = 0;

  if ([v5 verifyWorkerIsRunningWithNoProgressAndReturnError_])
  {
    v22 = v31[0];
    sub_19BF3D9F4(v20, v21, a2, v30, v31);

    v26 = sub_19BF3DF04(v31, a3, a4);
    if (([v5 updateRunningProgress_] & 1) == 0)
    {
      v27 = sub_19C5C452C();
      v28 = sub_19C5C472C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_19BF1F000, v27, v28, "The worker has been canceled", v29, 2u);
        OUTLINED_FUNCTION_9();
      }

      [v5 cancelProgress_];
    }

    sub_19BF4149C(v31);
  }

  else
  {
    v23 = v31[0];

    v24 = sub_19C5C44AC();

    swift_willThrow();
    v25 = v24;
    a3(v24);
  }
}

void sub_19BF3D9F4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X3>, void *a5@<X8>)
{
  v10 = sub_19BF3E1CC(a1, a2, a3);
  if (v10)
  {
    v11 = v10;
    v41 = a2;
    v40 = a1;
    v47 = 0;
    v45 = 0;
    v46 = 0;
    v44 = 0;
    v12 = swift_allocObject();
    v12[2] = &v44;
    v12[3] = v11;
    v12[4] = &v45;
    v12[5] = &v47;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_19BF41DD0;
    *(v13 + 24) = v12;
    aBlock[4] = sub_19BF3B5F4;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19BF3B838;
    aBlock[3] = &block_descriptor_46;
    v14 = _Block_copy(aBlock);
    v15 = v11;

    [a3 performBlockAndWait_];
    _Block_release(v14);
    v16 = v44;
    if (v44 && (v17 = v47) != 0)
    {
      v38 = a4;
      v39 = v15;
      v18 = v46;
      if (v46)
      {
        v42 = v45;

        v19 = a3;

        *a5 = v19;
        a5[1] = v15;
        a5[2] = v40;
        a5[3] = v41;
        a5[4] = v17;
        a5[5] = v42;
        a5[6] = v18;
        a5[7] = v16;
        return;
      }

      v27 = qword_1EAFF3AB0;
      v28 = v47;
      v29 = v16;
      if (v27 != -1)
      {
        swift_once();
      }

      v30 = sub_19C5C453C();
      __swift_project_value_buffer(v30, qword_1EAFF3E30);

      v31 = sub_19C5C452C();
      v32 = sub_19C5C471C();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v37 = v28;
        v34 = v29;
        v35 = swift_slowAlloc();
        aBlock[0] = v35;
        *v33 = 136446210;
        *(v33 + 4) = sub_19BF40E88(v40, v41, aBlock);
        _os_log_impl(&dword_19BF1F000, v31, v32, "Job %{public}s does not have a client bundle identifier", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        v36 = v35;
        v29 = v34;
        v28 = v37;
        MEMORY[0x19EAF07E0](v36, -1, -1);
        MEMORY[0x19EAF07E0](v33, -1, -1);
      }

      sub_19BF3E634(v39, 3, a3);
      *v38 = 0;
      LOBYTE(aBlock[0]) = 0;
      sub_19BF41448();
      swift_willThrowTypedImpl();
    }

    else
    {
      sub_19BF3E634(v15, 3, a3);
      *a4 = 0;
      LOBYTE(aBlock[0]) = 0;
      sub_19BF41448();
      swift_willThrowTypedImpl();
    }

    v20 = v47;
  }

  else
  {
    if (qword_1EAFF3AB0 != -1)
    {
      swift_once();
    }

    v21 = sub_19C5C453C();
    __swift_project_value_buffer(v21, qword_1EAFF3E30);

    v22 = sub_19C5C452C();
    v23 = sub_19C5C471C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = a2;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_19BF40E88(0xD000000000000019, 0x800000019C611BC0, aBlock);
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_19BF40E88(a1, v24, aBlock);
      _os_log_impl(&dword_19BF1F000, v22, v23, "%s: Failed to fetch the job: %{public}s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19EAF07E0](v26, -1, -1);
      MEMORY[0x19EAF07E0](v25, -1, -1);
    }

    *a4 = 0;
    LOBYTE(aBlock[0]) = 0;
    sub_19BF41448();
    swift_willThrowTypedImpl();
  }
}

id sub_19BF3DF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR___PLBackgroundJobAssetResourceUploadJobWorker_resourceUploader;
  swift_beginAccess();
  v10 = *&v4[v9];
  v21 = *(a1 + 56);
  swift_unknownObjectRetain();
  v11 = sub_19C5C45CC();
  v12 = sub_19C5C45CC();
  v13 = *a1;
  v14 = swift_allocObject();
  v15 = *(a1 + 16);
  *(v14 + 24) = *a1;
  *(v14 + 40) = v15;
  v16 = *(a1 + 48);
  *(v14 + 56) = *(a1 + 32);
  *(v14 + 16) = v4;
  *(v14 + 72) = v16;
  *(v14 + 88) = a2;
  *(v14 + 96) = a3;
  *(v14 + 104) = ObjectType;
  aBlock[4] = sub_19BF41D10;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19BF3F070;
  aBlock[3] = &block_descriptor_26;
  v17 = _Block_copy(aBlock);
  v18 = v4;
  sub_19BF41D24(a1, v22);

  v19 = [v10 makeLocallyAvailableWithResource:v21 jobUUID:v11 bundleID:v12 library:v13 completionHandler:v17];
  swift_unknownObjectRelease();
  _Block_release(v17);

  return v19;
}

void sub_19BF3E168(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_19C5C449C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_19BF3E1CC(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = &v13;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_19BF41F70;
  *(v7 + 24) = v6;
  aBlock[4] = sub_19BF3B5F4;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19BF3B838;
  aBlock[3] = &block_descriptor_56;
  v8 = _Block_copy(aBlock);

  v9 = a3;

  [v9 performBlockAndWait_];
  _Block_release(v8);
  v10 = v13;

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v10;
  }

  __break(1u);
  return result;
}

void sub_19BF3E348(void **a1, void *a2, uint64_t *a3, void **a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3D90);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  v14 = [a2 assetResource];
  v15 = *a1;
  *a1 = v14;

  v16 = [a2 configuration];
  v17 = [v16 bundleIdentifier];

  v18 = sub_19C5C45DC();
  v20 = v19;

  *a3 = v18;
  a3[1] = v20;

  v21 = [a2 request];
  v22 = v21;
  if (v21)
  {
    v23 = [v21 urlRequestData];

    v22 = sub_19C5C44FC();
    v25 = v24;

    if (v25 >> 60 == 15)
    {
      v26 = 0;
    }

    else
    {
      sub_19BF41F18(v22, v25);
      v26 = sub_19C5C44EC();
      sub_19BF41E4C(v22, v25);
    }
  }

  else
  {
    v26 = 0;
    v25 = 0xF000000000000000;
  }

  v27 = [objc_opt_self() urlRequestForData_];

  if (v27)
  {
    sub_19C5C447C();

    v28 = sub_19C5C448C();
    v29 = 0;
  }

  else
  {
    v28 = sub_19C5C448C();
    v29 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v29, 1, v28);
  sub_19BF41DDC(v11, v13);
  sub_19C5C448C();
  if (__swift_getEnumTagSinglePayload(v13, 1, v28) == 1)
  {
    sub_19BF41E4C(v22, v25);
    sub_19BF41EB8(v13, &qword_1EAFF3D90);
    v30 = 0;
  }

  else
  {
    v30 = sub_19C5C446C();
    sub_19BF41E4C(v22, v25);
    (*(*(v28 - 8) + 8))(v13, v28);
  }

  v31 = *a4;
  *a4 = v30;
}

uint64_t sub_19BF3E634(void *a1, __int16 a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_19BF41D5C;
  *(v7 + 24) = v6;
  v11[4] = sub_19BF3B5F4;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_19BF3B838;
  v11[3] = &block_descriptor_36;
  v8 = _Block_copy(v11);
  v9 = a1;

  [a3 performTransactionAndWait_];
  _Block_release(v8);

  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19BF3E794(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3F08);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  sub_19BF3E87C(a1, a2, (&v15 - v12));
  sub_19BF3EAB4(a4, v13, a5, a6);
  return sub_19BF41EB8(v13, &qword_1EAFF3F08);
}

id sub_19BF3E87C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3D50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_19C5C44DC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19BF41D68(a1, v8, &qword_1EAFF3D50);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_19BF41EB8(v8, &qword_1EAFF3D50);
    if (a2)
    {
      *a3 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3F08);
      swift_storeEnumTagMultiPayload();
      return a2;
    }

    sub_19BF41448();
    v15 = swift_allocError();
    *v16 = 3;
    *a3 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3F08);
  }

  else
  {
    v14 = *(v10 + 32);
    v14(v12, v8, v9);
    v14(a3, v12, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3F08);
  }

  return swift_storeEnumTagMultiPayload();
}

void sub_19BF3EAB4(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v5 = v4;
  v45 = a4;
  v46 = a3;
  v8 = sub_19C5C44DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3F08);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v45 - v13);
  sub_19BF41D68(a2, &v45 - v13, &qword_1EAFF3F08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (sub_19BF3F180(*v14))
    {
      if (qword_1EAFF3AB0 != -1)
      {
        swift_once();
      }

      v16 = sub_19C5C453C();
      __swift_project_value_buffer(v16, qword_1EAFF3E30);
      v17 = sub_19C5C452C();
      v18 = sub_19C5C472C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_19BF1F000, v17, v18, "The resource download has been canceled", v19, 2u);
        MEMORY[0x19EAF07E0](v19, -1, -1);
      }

      sub_19BF41448();
      v20 = swift_allocError();
      v21 = 1;
      *v22 = 1;

      v23 = v20;
    }

    else
    {
      if (qword_1EAFF3AB0 != -1)
      {
        swift_once();
      }

      v29 = sub_19C5C453C();
      __swift_project_value_buffer(v29, qword_1EAFF3E30);
      sub_19BF41D24(a1, v47);
      v30 = v15;
      v31 = sub_19C5C452C();
      v32 = sub_19C5C471C();
      sub_19BF4149C(a1);

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v47[0] = v35;
        *v33 = 136446466;
        *(v33 + 4) = sub_19BF40E88(*(a1 + 16), *(a1 + 24), v47);
        *(v33 + 12) = 2112;
        v36 = v15;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 14) = v37;
        *v34 = v37;
        _os_log_impl(&dword_19BF1F000, v31, v32, "The worker failed to download the requested resource for job %{public}s, error: %@", v33, 0x16u);
        sub_19BF41EB8(v34, &qword_1EAFF3D30);
        MEMORY[0x19EAF07E0](v34, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x19EAF07E0](v35, -1, -1);
        MEMORY[0x19EAF07E0](v33, -1, -1);
      }

      v38 = v15;
      v21 = 3;
      v20 = v15;
    }
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    if ([v5 updateRunningProgress_])
    {
      v24 = OBJC_IVAR___PLBackgroundJobAssetResourceUploadJobWorker_resourceUploader;
      swift_beginAccess();
      v25 = *&v5[v24];
      swift_unknownObjectRetain();
      v26 = sub_19C5C44BC();
      v27 = sub_19C5C45CC();
      v28 = sub_19C5C45CC();
      [v25 uploadFileWithURL:v26 jobUUID:v27 bundleID:v28 request:*(a1 + 32)];
      swift_unknownObjectRelease();

      v20 = 0;
      v21 = 2;
    }

    else
    {
      if (qword_1EAFF3AB0 != -1)
      {
        swift_once();
      }

      v39 = sub_19C5C453C();
      __swift_project_value_buffer(v39, qword_1EAFF3E30);
      v40 = sub_19C5C452C();
      v41 = sub_19C5C472C();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_19BF1F000, v40, v41, "The worker has been canceled", v42, 2u);
        MEMORY[0x19EAF07E0](v42, -1, -1);
      }

      sub_19BF41448();
      v20 = swift_allocError();
      v21 = 1;
      *v43 = 1;
      v44 = v20;
    }

    (*(v9 + 8))(v11, v8);
  }

  sub_19BF3E634(*(a1 + 8), v21, *a1);
  v46(v20);
}

uint64_t sub_19BF3F070(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3D50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_19C5C44CC();
    v10 = sub_19C5C44DC();
    v11 = 0;
  }

  else
  {
    v10 = sub_19C5C44DC();
    v11 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v11, 1, v10);

  v12 = a3;
  v9(v8, a3);

  return sub_19BF41EB8(v8, &qword_1EAFF3D50);
}

BOOL sub_19BF3F180(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3F10);
  if (swift_dynamicCast() && v5 == 1)
  {
    return 1;
  }

  v3 = sub_19C5C449C();
  v4 = [v3 code];

  return v4 == 3072;
}

id PLBackgroundJobAssetResourceUploadJobWorker.stopWorking(onItem:)(uint64_t a1)
{
  v2 = v1;
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3E80);
  if (swift_dynamicCast())
  {
    sub_19BF414CC(v24, v27);
    if (qword_1EAFF3AB0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v3 = sub_19C5C453C();
    __swift_project_value_buffer(v3, qword_1EAFF3E30);
    sub_19BF414E4(v27, v24);
    v4 = v1;
    v5 = sub_19C5C452C();
    v6 = sub_19C5C46FC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = OUTLINED_FUNCTION_9_0();
      v9 = swift_slowAlloc();
      v26 = v9;
      *v7 = 138412546;
      *(v7 + 4) = v4;
      *v8 = v4;
      *(v7 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3E90);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_19C609D50;
      sub_19BF414E4(v24, v10 + 32);
      v11 = v4;
      v12 = sub_19C5C45EC();
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_0(v24);
      v15 = sub_19BF40E88(v12, v14, &v26);

      *(v7 + 14) = v15;
      _os_log_impl(&dword_19BF1F000, v5, v6, "%@: stopWorking on item: %s", v7, 0x16u);
      sub_19BF41EB8(v8, &qword_1EAFF3D30);
      OUTLINED_FUNCTION_9();
      __swift_destroy_boxed_opaque_existential_0(v9);
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_9();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v24);
    }

    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  else
  {
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    sub_19BF41EB8(v24, &qword_1EAFF3E88);
    if (qword_1EAFF3AB0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v16 = sub_19C5C453C();
    __swift_project_value_buffer(v16, qword_1EAFF3E30);
    v17 = v1;
    v18 = sub_19C5C452C();
    v19 = sub_19C5C46FC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_5_0();
      v21 = OUTLINED_FUNCTION_9_0();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_19BF1F000, v18, v19, "%@: stopWorking", v20, 0xCu);
      sub_19BF41EB8(v21, &qword_1EAFF3D30);
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_9();
    }
  }

  return [v2 transitionToCanceled];
}

void sub_19BF3F5E8()
{
  v1 = v0 + OBJC_IVAR___PLBackgroundJobAssetResourceUploadJobWorker_lockedState;
  os_unfair_lock_lock((v0 + OBJC_IVAR___PLBackgroundJobAssetResourceUploadJobWorker_lockedState));
  sub_19BF3F650((v1 + 8), &v2);
  os_unfair_lock_unlock(v1);
}

void sub_19BF3F650(void **a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1)
  {
    if (v2 == 1)
    {
      if (qword_1EAFF3AB0 != -1)
      {
        swift_once();
      }

      v4 = sub_19C5C453C();
      __swift_project_value_buffer(v4, qword_1EAFF3E30);
      v5 = sub_19C5C452C();
      v6 = sub_19C5C46FC();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_19BF1F000, v5, v6, "Worker has been canceled", v7, 2u);
        MEMORY[0x19EAF07E0](v7, -1, -1);
      }

      sub_19BF41448();
      v8 = swift_allocError();
      *v9 = 1;
      swift_willThrow();
    }

    else
    {
      v10 = qword_1EAFF3AB0;
      v11 = v2;
      if (v10 != -1)
      {
        swift_once();
      }

      v12 = sub_19C5C453C();
      __swift_project_value_buffer(v12, qword_1EAFF3E30);
      v13 = sub_19C5C452C();
      v14 = sub_19C5C471C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_19BF1F000, v13, v14, "Worker is unexpected running with a progress", v15, 2u);
        MEMORY[0x19EAF07E0](v15, -1, -1);
      }

      sub_19BF41448();
      v8 = swift_allocError();
      *v16 = 3;
      swift_willThrow();
      sub_19BF41C04(v2);
    }

    *a2 = v8;
  }
}

BOOL sub_19BF3F8E8(void *a1)
{
  v3 = v1 + OBJC_IVAR___PLBackgroundJobAssetResourceUploadJobWorker_lockedState;
  os_unfair_lock_lock((v1 + OBJC_IVAR___PLBackgroundJobAssetResourceUploadJobWorker_lockedState));
  v4 = *(v3 + 8);
  if (v4 != 1)
  {
    sub_19BF41C04(*(v3 + 8));
    *(v3 + 8) = a1;
    v5 = a1;
  }

  os_unfair_lock_unlock(v3);
  return v4 != 1;
}

void sub_19BF3F9A8()
{
  v1 = &v0[OBJC_IVAR___PLBackgroundJobAssetResourceUploadJobWorker_lockedState];
  os_unfair_lock_lock(&v0[OBJC_IVAR___PLBackgroundJobAssetResourceUploadJobWorker_lockedState]);
  v2 = *(v1 + 1);
  if (v2 == 1)
  {
    v3 = 0;
  }

  else
  {
    *(v1 + 1) = 1;
    v3 = v2;
  }

  os_unfair_lock_unlock(v1);
  [v0 cancelProgress_];

  sub_19BF41C04(v2);
}

void sub_19BF3FA78(void *a1)
{
  if (a1)
  {
    v1 = a1;
    if ([v1 isCancellable])
    {
      [v1 cancel];
    }
  }
}

id sub_19BF3FB4C(__int16 a1, id a2)
{
  switch(a1)
  {
    case 1:
    case 5:
      if (qword_1EAFF3AB0 != -1)
      {
        swift_once();
      }

      v4 = sub_19C5C453C();
      __swift_project_value_buffer(v4, qword_1EAFF3E30);
      v5 = a2;
      v6 = sub_19C5C452C();
      v7 = sub_19C5C471C();

      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_11;
      }

      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v24 = v9;
      *v8 = 136446210;
      v10 = [v5 uuid];
      v11 = sub_19C5C45DC();
      v13 = v12;

      v14 = sub_19BF40E88(v11, v13, &v24);

      *(v8 + 4) = v14;
      v15 = "The worker has been canceled before the job could be started. Canceling job: %{public}s";
      goto LABEL_10;
    case 2:
    case 4:
      goto LABEL_12;
    case 3:
      if (qword_1EAFF3AB0 != -1)
      {
        swift_once();
      }

      v16 = sub_19C5C453C();
      __swift_project_value_buffer(v16, qword_1EAFF3E30);
      v17 = a2;
      v6 = sub_19C5C452C();
      v7 = sub_19C5C471C();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v24 = v9;
        *v8 = 136446210;
        v18 = [v17 uuid];
        v19 = sub_19C5C45DC();
        v21 = v20;

        v22 = sub_19BF40E88(v19, v21, &v24);

        *(v8 + 4) = v22;
        v15 = "The worker has failed to process the job: %{public}s";
LABEL_10:
        _os_log_impl(&dword_19BF1F000, v6, v7, v15, v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x19EAF07E0](v9, -1, -1);
        MEMORY[0x19EAF07E0](v8, -1, -1);
      }

LABEL_11:

LABEL_12:

      result = [a2 updateState_];
      break;
    default:
      result = sub_19C5C48DC();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_19BF3FEB8(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v10 = sub_19C5C490C();

    return v10;
  }

  v4 = sub_19BF3B5E0(a2);
  v5 = sub_19BF421E0(0, a1, v4);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v7 < 0)
  {
    goto LABEL_16;
  }

  sub_19BF4222C(0, a2);
  sub_19BF4222C(v7, a2);
  if ((a2 & 0xC000000000000001) != 0 && v7)
  {
    sub_19BF3B340(0, &qword_1EAFF3D28);

    v8 = 0;
    do
    {
      v9 = v8 + 1;
      sub_19C5C483C();
      v8 = v9;
    }

    while (v7 != v9);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

void sub_19BF40000(void **a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v8 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3D00);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_19C609D50;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;

  v10 = sub_19C5C465C();

  v29[0] = 0;
  v11 = [v8 uploadJobsWithUUIDs:v10 inPhotoLibrary:a4 error:v29];

  v12 = v29[0];
  if (v11)
  {
    sub_19BF3B340(0, &qword_1EAFF3D28);
    v13 = sub_19C5C466C();
    v14 = v12;

    if (sub_19BF3B5E0(v13))
    {
      sub_19BF3B628(0, (v13 & 0xC000000000000001) == 0, v13);
      if ((v13 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x19EAEC6D0](0, v13);
      }

      else
      {
        v15 = *(v13 + 32);
      }

      v16 = v15;
    }

    else
    {

      v16 = 0;
    }

    v28 = *a1;
    *a1 = v16;
  }

  else
  {
    v17 = v29[0];
    v18 = sub_19C5C44AC();

    swift_willThrow();
    if (qword_1EAFF3AB0 != -1)
    {
      swift_once();
    }

    v19 = sub_19C5C453C();
    __swift_project_value_buffer(v19, qword_1EAFF3E30);

    v20 = v18;
    v21 = sub_19C5C452C();
    v22 = sub_19C5C471C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29[0] = v25;
      *v23 = 136446466;
      *(v23 + 4) = sub_19BF40E88(a2, a3, v29);
      *(v23 + 12) = 2112;
      v26 = v18;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v27;
      *v24 = v27;
      _os_log_impl(&dword_19BF1F000, v21, v22, "Failed to fetch the upload job, with uuid: %{public}s. Error: %@", v23, 0x16u);
      sub_19BF41EB8(v24, &qword_1EAFF3D30);
      MEMORY[0x19EAF07E0](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x19EAF07E0](v25, -1, -1);
      MEMORY[0x19EAF07E0](v23, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_19BF4035C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_19BF403F0(v1, v2);
}

uint64_t sub_19BF4039C()
{
  v1 = (v0 + OBJC_IVAR____TtC20PhotoLibraryServices29PLAssetResourceUploadWorkItem_uuid);
  OUTLINED_FUNCTION_2_0();
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_19BF403F0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20PhotoLibraryServices29PLAssetResourceUploadWorkItem_uuid);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t static PLAssetResourceUploadWorkItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtC20PhotoLibraryServices29PLAssetResourceUploadWorkItem_uuid);
  OUTLINED_FUNCTION_2_0();
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = (a2 + OBJC_IVAR____TtC20PhotoLibraryServices29PLAssetResourceUploadWorkItem_uuid);
  OUTLINED_FUNCTION_2_0();
  swift_beginAccess();
  if (v4 == *v6 && v5 == v6[1])
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_19C5C495C();
  }

  return v8 & 1;
}

id sub_19BF40534@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for PLAssetResourceUploadWorkItem();
  *a1 = v3;

  return v3;
}

id PLAssetResourceUploadWorkItem.init(uuid:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC20PhotoLibraryServices29PLAssetResourceUploadWorkItem_uuid];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for PLAssetResourceUploadWorkItem();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_19BF40684()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for PLAssetResourceUploadWorkItem();
  v1 = objc_msgSendSuper2(&v9, sel_description);
  v2 = sub_19C5C45DC();
  v4 = v3;

  v10 = v2;
  v11 = v4;
  v5 = &v0[OBJC_IVAR____TtC20PhotoLibraryServices29PLAssetResourceUploadWorkItem_uuid];
  OUTLINED_FUNCTION_2_0();
  swift_beginAccess();
  v7 = *v5;
  v6 = *(v5 + 1);

  MEMORY[0x19EAEC490](v7, v6);

  MEMORY[0x19EAEC490](0x203A64697575202CLL, 0xE800000000000000);

  return v10;
}

id PLAssetResourceUploadWorkItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_19BF407D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_19C5C495C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_19BF40878()
{
  sub_19C5C49DC();
  MEMORY[0x19EAEC870](0);
  return sub_19C5C49FC();
}

uint64_t sub_19BF408E4()
{
  sub_19C5C49DC();
  MEMORY[0x19EAEC870](0);
  return sub_19C5C49FC();
}

uint64_t sub_19BF40928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19BF407D0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_19BF40970@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19BF40848();
  *a1 = result & 1;
  return result;
}

uint64_t sub_19BF4099C(uint64_t a1)
{
  v2 = sub_19BF41548();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19BF409D8(uint64_t a1)
{
  v2 = sub_19BF41548();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id PLAssetResourceUploadWorkItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PLAssetResourceUploadWorkItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19BF40A5C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3E98);
  OUTLINED_FUNCTION_6_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_19BF41548();
  sub_19C5C4A1C();
  OUTLINED_FUNCTION_2_0();
  swift_beginAccess();

  sub_19C5C492C();
  (*(v4 + 8))(v7, v2);
}

void *PLAssetResourceUploadWorkItem.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3EA8);
  OUTLINED_FUNCTION_6_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v11 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_19BF41548();
  sub_19C5C4A0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for PLAssetResourceUploadWorkItem();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = sub_19C5C491C();
    v14 = &v3[OBJC_IVAR____TtC20PhotoLibraryServices29PLAssetResourceUploadWorkItem_uuid];
    *v14 = v12;
    v14[1] = v15;
    v16 = type metadata accessor for PLAssetResourceUploadWorkItem();
    v17.receiver = v3;
    v17.super_class = v16;
    v11 = objc_msgSendSuper2(&v17, sel_init);
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v11;
}

void *sub_19BF40DAC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = PLAssetResourceUploadWorkItem.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_19BF40DFC(void *a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3E68);
    v4 = sub_19C5C465C();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 initWithCriteria:a1 workItemsNeedingProcessing:v4];

  return v5;
}

unint64_t sub_19BF40E88(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_19BF40F4C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_19BF41CB4(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_19BF40F4C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_19BF4104C(a5, a6);
    *a1 = v9;
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
    result = sub_19C5C486C();
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

uint64_t sub_19BF4104C(uint64_t a1, unint64_t a2)
{
  v3 = sub_19BF41098(a1, a2);
  sub_19BF411B0(&unk_1F0F007A8);
  return v3;
}

uint64_t sub_19BF41098(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_19C5C462C())
  {
    result = sub_19BF41294(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_19C5C481C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_19C5C486C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_19BF411B0(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_19BF41304(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

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

void *sub_19BF41294(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3F00);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_19BF41304(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFF3F00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_19BF41448()
{
  result = qword_1EAFF3E78;
  if (!qword_1EAFF3E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFF3E78);
  }

  return result;
}

uint64_t sub_19BF414CC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_19BF414E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_19BF41548()
{
  result = qword_1EAFF3EA0;
  if (!qword_1EAFF3EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFF3EA0);
  }

  return result;
}

unint64_t sub_19BF415A0()
{
  result = qword_1EAFF3EB0;
  if (!qword_1EAFF3EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFF3EB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PLBackgroundJobAssetResourceUploadJobWorkerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PLBackgroundJobAssetResourceUploadJobWorkerError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PLAssetResourceUploadWorkItem.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}