@interface PLMomentShare
+ (PLMomentShare)momentShareWithOriginatingScopeIdentifier:(id)a3 inManagedObjectContext:(id)a4;
+ (id)createOwnedShareWithUUID:(id)a3 creationDate:(id)a4 title:(id)a5 inPhotoLibrary:(id)a6;
+ (id)insertOrUpdateShareWithCPLScopeChange:(id)a3 inPhotoLibrary:(id)a4;
+ (id)listOfSyncedProperties;
+ (id)momentSharesReferencedInUploadBatchContainer:(id)a3 inPhotoLibrary:(id)a4;
+ (void)forceSyncMomentShares:(id)a3 photoLibrary:(id)a4;
- (BOOL)_isOwnerInContacts;
- (BOOL)_shouldAutoAccept;
- (BOOL)isSyncableChange;
- (id)_contactStore;
- (id)cplScopeChange;
- (unint64_t)estimateUploadSize;
- (void)_updateWithCPLMomentShare:(id)a3 inPhotoLibrary:(id)a4;
- (void)autoAcceptShareIfNecessary;
- (void)prepareForDeletion;
- (void)publishWithCompletionHandler:(id)a3;
- (void)trash;
- (void)willSave;
@end

@implementation PLMomentShare

+ (id)momentSharesReferencedInUploadBatchContainer:(id)a3 inPhotoLibrary:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v24 = a4;
  v22 = v5;
  v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = [v5 batch];
  v7 = [v6 records];

  v8 = [v7 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v8)
  {
    v9 = *v37;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 scopedIdentifier];
          v13 = [v12 scopeIdentifier];
          v14 = [objc_opt_class() scopeIdentifierPrefixInLibrary:v24];
          v15 = [v13 hasPrefix:v14];

          if (v15)
          {
            v16 = [v12 scopeIdentifier];
            [v23 addObject:v16];
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v8);
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__85998;
  v34 = __Block_byref_object_dispose__85999;
  v35 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __77__PLMomentShare_momentSharesReferencedInUploadBatchContainer_inPhotoLibrary___block_invoke;
  v25[3] = &unk_1E75778C0;
  v17 = v23;
  v26 = v17;
  v29 = &v30;
  v18 = v22;
  v27 = v18;
  v19 = v24;
  v28 = v19;
  [v19 performBlockAndWait:v25];
  v20 = v31[5];

  _Block_object_dispose(&v30, 8);

  return v20;
}

void __77__PLMomentShare_momentSharesReferencedInUploadBatchContainer_inPhotoLibrary___block_invoke(uint64_t a1)
{
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"scopeIdentifier IN %@", *(a1 + 32)];
  v2 = [*(a1 + 40) batch];
  v3 = [v2 count];
  v4 = [*(a1 + 48) managedObjectContext];
  v5 = [(PLShare *)PLMomentShare sharesWithPredicate:v8 fetchLimit:v3 inManagedObjectContext:v4];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (unint64_t)estimateUploadSize
{
  v27 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [(PLMomentShare *)self momentShareAssets];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v18 + 1) + 8 * i) fetchSourceAssetForDuplicationIfExists];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 master];
          if (v11)
          {
            v12 = v11;
            v13 = [v10 master];
            v14 = [v13 cloudLocalState];

            if (v14 != 3)
            {
              v6 += [v10 originalFilesize];
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v15 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [(PLShare *)self compactDescription];
    *buf = 138412546;
    v23 = v16;
    v24 = 2048;
    v25 = v6;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "Estimate upload size for moment share %@: %lld", buf, 0x16u);
  }

  return v6;
}

- (BOOL)_isOwnerInContacts
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [(PLShare *)self owner];
  v4 = [v3 emailAddress];
  v5 = [v3 phoneNumber];
  v6 = [(PLMomentShare *)self _contactStore];
  v7 = 0x1E695C000uLL;
  if ([v4 length])
  {
    v8 = [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:v4];
    v31 = 0;
    v9 = [v6 unifiedContactsMatchingPredicate:v8 keysToFetch:MEMORY[0x1E695E0F0] error:&v31];
    v10 = v31;
    v11 = v10;
    if (v9)
    {
      v12 = 1;
    }

    else
    {
      v12 = v10 == 0;
    }

    if (v12)
    {
      v29 = v6;
      v13 = [v9 count];
      v17 = PLBackendSharingGetLog();
      v14 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
      if (v13)
      {
        if (!v14)
        {
          v16 = 1;
LABEL_30:
          v6 = v29;

          goto LABEL_31;
        }

        v15 = [(PLShare *)self compactDescription];
        *buf = 138412546;
        v33 = v15;
        v34 = 2112;
        v35 = v8;
        v16 = 1;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_INFO, "Auto Accept CMM: %@, Found local contact matching predicate [email=%@]", buf, 0x16u);
        goto LABEL_29;
      }

      if (v14)
      {
        v21 = [(PLShare *)self compactDescription];
        *buf = 138412546;
        v33 = v21;
        v34 = 2112;
        v35 = v8;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_INFO, "Auto Accept CMM: %@, Did not find local contact matching predicate [email=%@", buf, 0x16u);
      }

      v6 = v29;
    }

    else
    {
      v17 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(PLShare *)self compactDescription];
        v20 = v19 = v6;
        *buf = 138412802;
        v33 = v20;
        v34 = 2112;
        v35 = v4;
        v36 = 2112;
        v37 = v11;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Auto Accept CMM: %@, Error attempting to fetch all unified contacts matching predicate [email=%@] : %@", buf, 0x20u);

        v6 = v19;
        v7 = 0x1E695C000;
      }
    }
  }

  if ([v5 length])
  {
    v8 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v5];
    v11 = [*(v7 + 3416) predicateForContactsMatchingPhoneNumber:v8];
    v30 = 0;
    v29 = v6;
    v17 = [v6 unifiedContactsMatchingPredicate:v11 keysToFetch:MEMORY[0x1E695E0F0] error:&v30];
    v22 = v30;
    v9 = v22;
    if (v17 || !v22)
    {
      v24 = [v17 count];
      v15 = PLBackendSharingGetLog();
      v25 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
      if (v24)
      {
        if (v25)
        {
          v26 = [(PLShare *)self compactDescription];
          *buf = 138412546;
          v33 = v26;
          v34 = 2112;
          v35 = v11;
          v16 = 1;
          _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "Auto Accept CMM: %@, Found local contact matching predicate [phone=%@]", buf, 0x16u);
        }

        else
        {
          v16 = 1;
        }

        goto LABEL_29;
      }

      if (v25)
      {
        v27 = [(PLShare *)self compactDescription];
        *buf = 138412546;
        v33 = v27;
        v34 = 2112;
        v35 = v11;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "Auto Accept CMM: %@, Did not find local contact matching predicate [phone=%@", buf, 0x16u);
      }
    }

    else
    {
      v15 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v23 = [(PLShare *)self compactDescription];
        *buf = 138412802;
        v33 = v23;
        v34 = 2112;
        v35 = v5;
        v36 = 2112;
        v37 = v9;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Auto Accept CMM: %@, Error attempting to fetch all unified contacts matching predicate [phone=%@] : %@", buf, 0x20u);
      }
    }

    v16 = 0;
LABEL_29:

    goto LABEL_30;
  }

  v16 = 0;
LABEL_31:

  return v16;
}

- (id)_contactStore
{
  if (_contactStore_onceToken != -1)
  {
    dispatch_once(&_contactStore_onceToken, &__block_literal_global_86061);
  }

  v3 = _contactStore_contactStore;

  return v3;
}

void __30__PLMomentShare__contactStore__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v1 = _contactStore_contactStore;
  _contactStore_contactStore = v0;
}

- (void)trash
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PLMomentShare;
  [(PLShare *)&v15 trash];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(PLMomentShare *)self momentShareAssets];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        [MEMORY[0x1E69BF328] maskForAutoDeleteAssetsUponMomentShareTrash];
        [v9 savedAssetType];
        if (PLValidatedSavedAssetTypeApplies())
        {
          v10 = [PLAssetTransactionReason transactionReason:@"Deleting asset as moment share was trashed"];
          [v9 deleteWithReason:v10];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }
}

- (BOOL)_shouldAutoAccept
{
  v3 = [(PLMomentShare *)self status];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(PLMomentShare *)self assetCount]<= 0x1F3 && [(PLMomentShare *)self _isOwnerInContacts];
  }

  return v3;
}

- (void)autoAcceptShareIfNecessary
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(PLMomentShare *)self _shouldAutoAccept])
  {
    v3 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [(PLShare *)self compactDescription];
      *buf = 138412290;
      v7 = v4;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_INFO, "Auto-accept moment share %@", buf, 0xCu);
    }

    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__PLMomentShare_autoAcceptShareIfNecessary__block_invoke;
    v5[3] = &unk_1E7575FA8;
    v5[4] = self;
    [(PLShare *)self acceptWithCompletionHandler:v5];
  }
}

void __43__PLMomentShare_autoAcceptShareIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) compactDescription];
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Failed to auto accept moment share %@: %@", &v6, 0x16u);
    }
  }
}

- (void)publishWithCompletionHandler:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLManagedObject *)self photoLibrary];
  v6 = [v5 libraryServicesManager];
  v7 = [v6 cloudPhotoLibraryManager];

  if (v7)
  {
    [(PLMomentShare *)self setLocalPublishState:1];
    v8 = [(PLMomentShare *)self cplScopeChange];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__PLMomentShare_publishWithCompletionHandler___block_invoke;
    v12[3] = &unk_1E7573120;
    v13 = v5;
    v14 = self;
    v15 = v4;
    [v7 publishCPLScopeChange:v8 completionHandler:v12];

    v9 = v13;
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E69BFF48];
    v16 = *MEMORY[0x1E696A578];
    v17[0] = @"PLCloudPhotoLibraryManager is not available";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v9 = [v10 errorWithDomain:v11 code:41004 userInfo:v8];
    (*(v4 + 2))(v4, 0, 0, v9);
  }
}

void __46__PLMomentShare_publishWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 share];
  v8 = [v7 URL];
  v9 = *(a1 + 32);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __46__PLMomentShare_publishWithCompletionHandler___block_invoke_2;
  v21[3] = &unk_1E75730F8;
  v10 = v6;
  v11 = *(a1 + 40);
  v22 = v10;
  v23 = v11;
  v24 = v8;
  v25 = v5;
  v26 = *(a1 + 32);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__PLMomentShare_publishWithCompletionHandler___block_invoke_81;
  v16[3] = &unk_1E7573C00;
  v12 = *(a1 + 48);
  v17 = v24;
  v18 = v25;
  v19 = v10;
  v20 = v12;
  v13 = v10;
  v14 = v25;
  v15 = v24;
  [v9 performTransaction:v21 completionHandler:v16 withPriority:1];
}

void __46__PLMomentShare_publishWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    if (*(a1 + 48))
    {
      [*(a1 + 40) setShareURL:?];
    }

    else
    {
      v5 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [*(a1 + 40) compactDescription];
        v16 = 138412290;
        v17 = v6;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Missing moment shareURL after publishing share %@", &v16, 0xCu);
      }
    }

    [*(a1 + 40) setLocalPublishState:2];
    v7 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 40) compactDescription];
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "Published moment share %@", &v16, 0xCu);
    }

    v2 = *(a1 + 56);
    v3 = [v2 expiryDate];
    if (v3)
    {
      [*(a1 + 40) setExpiryDate:v3];
    }

    else
    {
      v9 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [*(a1 + 40) compactDescription];
        v16 = 138412290;
        v17 = v10;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Missing expiryDate after publishing moment share %@", &v16, 0xCu);
      }
    }

    [*(a1 + 40) _updateWithCPLMomentShare:v2 inPhotoLibrary:*(a1 + 64)];
    if ([*(a1 + 40) shouldIgnoreBudgets])
    {
      v11 = [*(a1 + 40) scopeIdentifier];
      v12 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [*(a1 + 40) compactDescription];
        v16 = 138412290;
        v17 = v13;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_INFO, "Boosting priority for moment share %@ after publish", &v16, 0xCu);
      }

      v14 = [*(a1 + 64) libraryServicesManager];
      v15 = [v14 cloudPhotoLibraryManager];
      [v15 boostPriorityForMomentShareWithScopeIdentifier:v11 completionHandler:0];
    }

    goto LABEL_20;
  }

  [*(a1 + 40) setLocalPublishState:3];
  v2 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [*(a1 + 40) compactDescription];
    v4 = *(a1 + 32);
    v16 = 138412546;
    v17 = v3;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "Failed to publish moment share %@: %@", &v16, 0x16u);
LABEL_20:
  }
}

- (id)cplScopeChange
{
  v4 = [(PLMomentShare *)self scopeIdentifier];
  if (!v4)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PLMomentShare.m" lineNumber:268 description:@"Missing scope identifier for moment share"];
  }

  v5 = [MEMORY[0x1E6994B30] newScopeChangeWithScopeIdentifier:v4 type:{-[PLShare scopeType](self, "scopeType")}];
  v6 = [(PLMomentShare *)self title];
  [v5 setTitle:v6];

  v7 = [(PLMomentShare *)self creationDate];
  [v5 setCreationDate:v7];

  v8 = [(PLMomentShare *)self startDate];
  [v5 setStartDate:v8];

  v9 = [(PLMomentShare *)self endDate];
  [v5 setEndDate:v9];

  [v5 setPromisedAssetCount:{-[PLMomentShare assetCount](self, "assetCount")}];
  [v5 setPromisedPhotosCount:{-[PLMomentShare photosCount](self, "photosCount")}];
  [v5 setPromisedVideosCount:{-[PLMomentShare videosCount](self, "videosCount")}];
  v10 = [(PLMomentShare *)self originatingScopeIdentifier];
  [v5 setOriginatingScopeIdentifier:v10];

  if ([(PLMomentShare *)self compatibilityState]>= 1)
  {
    [v5 setHasEPPAssets:1];
  }

  v11 = [(PLMomentShare *)self thumbnailImageData];
  v12 = [v11 length];
  if (v12 <= [MEMORY[0x1E6994B60] maxInlineDataSize])
  {
    [v5 setThumbnailImageData:v11];
  }

  else
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = [MEMORY[0x1E6994B60] maxInlineDataSize];
    v15 = [(PLMomentShare *)self scopeIdentifier];
    v16 = [v13 stringWithFormat:@"Setting thumbnail image data that is more than %ld bytes to moment share %@, it will not be synced", v14, v15];

    PLSimulateCrash();
  }

  v17 = [(PLMomentShare *)self previewData];
  [v5 setPreviewImageData:v17];

  v18 = [(PLMomentShare *)self expiryDate];
  [v5 setExpiryDate:v18];

  v19 = [(PLShare *)self cplShare];
  [v5 setShare:v19];

  return v5;
}

- (BOOL)isSyncableChange
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(PLMomentShare *)self changedValues];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [objc_opt_class() listOfSyncedProperties];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [v2 objectForKey:*(*(&v9 + 1) + 8 * i)];

        if (v7)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)willSave
{
  v14 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = PLMomentShare;
  [(PLManagedObject *)&v11 willSave];
  v3 = [(PLMomentShare *)self changedValues];
  if ([(PLMomentShare *)self isUpdated])
  {
    v4 = [v3 objectForKey:@"shouldIgnoreBudgets"];
    v5 = [v4 BOOLValue];

    if (v5)
    {
      v6 = [(PLMomentShare *)self scopeIdentifier];
      v7 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v13 = v6;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "Should ignore budgets flag is updated for moment share %@, boosting its priority", buf, 0xCu);
      }

      v8 = [(PLManagedObject *)self photoLibrary];
      v9 = [v8 libraryServicesManager];
      v10 = [v9 cloudPhotoLibraryManager];

      [v10 boostPriorityForMomentShareWithScopeIdentifier:v6 completionHandler:0];
    }
  }
}

- (void)prepareForDeletion
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = PLMomentShare;
  [(PLShare *)&v16 prepareForDeletion];
  v3 = [(PLMomentShare *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 mergingChanges] & 1) == 0)
  {
    [(PLShare *)self recordCloudDeletionIfNeeded];
    v4 = [(PLManagedObject *)self pathManager];
    v5 = [v4 isDCIM];

    if (v5)
    {
      v6 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
      v7 = [v6 privateDirectoryWithSubType:7];

      v8 = [(PLMomentShare *)self uuid];
      v9 = [v7 stringByAppendingPathComponent:v8];

      v10 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v18 = v9;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_INFO, "Deleting CMMAsset subdirectory: %@", buf, 0xCu);
      }

      v11 = [MEMORY[0x1E696AC08] defaultManager];
      v15 = 0;
      v12 = [v11 removeItemAtPath:v9 error:&v15];
      v13 = v15;

      if ((v12 & 1) == 0)
      {
        v14 = PLBackendSharingGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v18 = v9;
          v19 = 2112;
          v20 = v13;
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to delete CMMAsset subdirectory: %@, %@", buf, 0x16u);
        }
      }
    }
  }
}

- (void)_updateWithCPLMomentShare:(id)a3 inPhotoLibrary:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(PLShare *)self compactDescription];
    *buf = 138412546;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_INFO, "Updating moment share %@ with CPLMomentShareScopeChange %@", buf, 0x16u);
  }

  v10 = [v6 creationDate];
  [(PLMomentShare *)self setCreationDate:v10];

  v11 = [v6 title];
  [(PLMomentShare *)self setTitle:v11];

  v12 = [v6 startDate];
  [(PLMomentShare *)self setStartDate:v12];

  v13 = [v6 endDate];
  [(PLMomentShare *)self setEndDate:v13];

  v14 = [v6 expiryDate];
  [(PLMomentShare *)self setExpiryDate:v14];

  -[PLMomentShare setAssetCount:](self, "setAssetCount:", [v6 promisedAssetCount]);
  -[PLMomentShare setPhotosCount:](self, "setPhotosCount:", [v6 promisedPhotosCount]);
  -[PLMomentShare setVideosCount:](self, "setVideosCount:", [v6 promisedVideosCount]);
  v15 = [v6 originatingScopeIdentifier];
  [(PLMomentShare *)self setOriginatingScopeIdentifier:v15];

  v16 = [v6 thumbnailImageData];
  [(PLMomentShare *)self setThumbnailImageData:v16];

  v17 = [v6 previewImageData];
  [(PLMomentShare *)self setPreviewData:v17];

  -[PLShare setScopeType:](self, "setScopeType:", [v6 scopeType]);
  -[PLMomentShare setCompatibilityState:](self, "setCompatibilityState:", [v6 hasEPPAssets]);
  v18 = [v6 share];
  [(PLShare *)self updateShareWithCPLShare:v18 inPhotoLibrary:v7];
  v19 = [v6 scopeType];
  v20 = 0;
  if (v19 <= 9)
  {
    if (((1 << v19) & 0x3B3) != 0)
    {
      v21 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v6;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Unexpected scopeType for moment share from scopeChange %@", buf, 0xCu);
      }

      v20 = 0;
    }

    else if (v19 == 2 || v19 == 3)
    {
      v20 = 2;
    }
  }

  [(PLMomentShare *)self setLocalPublishState:v20];
  v22 = [v6 assetCountPerType];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v29 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __58__PLMomentShare__updateWithCPLMomentShare_inPhotoLibrary___block_invoke;
  v23[3] = &unk_1E75730D0;
  v23[4] = buf;
  v23[5] = &v24;
  [v22 enumerateKeysAndObjectsUsingBlock:v23];
  [(PLMomentShare *)self setCloudPhotoCount:*(*&buf[8] + 24)];
  [(PLMomentShare *)self setCloudVideoCount:*(v25 + 6)];
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(buf, 8);
}

void __58__PLMomentShare__updateWithCPLMomentShare_inPhotoLibrary___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [MEMORY[0x1E6982C40] typeWithIdentifier:a2];
  if ([v5 conformsToType:*MEMORY[0x1E6982E30]])
  {
    v6 = 32;
  }

  else
  {
    if (![v5 conformsToType:*MEMORY[0x1E6982EE8]])
    {
      goto LABEL_6;
    }

    v6 = 40;
  }

  *(*(*(a1 + v6) + 8) + 24) += [v7 integerValue];
LABEL_6:
}

+ (void)forceSyncMomentShares:(id)a3 photoLibrary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__85998;
  v20 = __Block_byref_object_dispose__85999;
  v21 = [MEMORY[0x1E695DF70] array];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __52__PLMomentShare_forceSyncMomentShares_photoLibrary___block_invoke;
  v13 = &unk_1E7578910;
  v7 = v5;
  v14 = v7;
  v15 = &v16;
  [v6 performTransactionAndWait:&v10];
  if ([v17[5] count])
  {
    v8 = [v6 libraryServicesManager];
    v9 = [v8 cloudPhotoLibraryManager];

    [v9 forceSyncMomentSharesWithScopeIdentifiers:v17[5]];
  }

  _Block_object_dispose(&v16, 8);
}

void __52__PLMomentShare_forceSyncMomentShares_photoLibrary___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 scopeIdentifier];

        if (v8)
        {
          v9 = *(*(*(a1 + 40) + 8) + 40);
          v10 = [v7 scopeIdentifier];
          [v9 addObject:v10];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

+ (id)listOfSyncedProperties
{
  pl_dispatch_once();
  v2 = listOfSyncedProperties_result_86118;

  return v2;
}

void __39__PLMomentShare_listOfSyncedProperties__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"shareURL", @"trashedState", @"localPublishState", 0}];
  v1 = listOfSyncedProperties_result_86118;
  listOfSyncedProperties_result_86118 = v0;
}

+ (PLMomentShare)momentShareWithOriginatingScopeIdentifier:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = MEMORY[0x1E696AE18];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"%K == %@", @"originatingScopeIdentifier", a3];
  v9 = [a1 sharesWithPredicate:v8 fetchLimit:1 inManagedObjectContext:v7];

  v10 = [v9 firstObject];

  return v10;
}

+ (id)insertOrUpdateShareWithCPLScopeChange:(id)a3 inPhotoLibrary:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 scopeIdentifier];
  if ([a1 validateCPLScopeChange:v6])
  {
    v9 = [v7 managedObjectContext];
    v10 = [a1 shareWithScopeIdentifier:v8 includeTrashed:1 inManagedObjectContext:v9];

    if (!v10)
    {
      v11 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v8;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "Creating moment share with scope identifier %@", &v13, 0xCu);
      }

      v10 = [a1 insertInPhotoLibrary:v7];
      [v10 setStatus:2];
      [v10 setScopeIdentifier:v8];
    }

    [v10 _updateWithCPLMomentShare:v6 inPhotoLibrary:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)createOwnedShareWithUUID:(id)a3 creationDate:(id)a4 title:(id)a5 inPhotoLibrary:(id)a6
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___PLMomentShare;
  v6 = objc_msgSendSuper2(&v8, sel_createOwnedShareWithUUID_creationDate_title_inPhotoLibrary_, a3, a4, a5, a6);
  [v6 setScopeType:2];

  return v6;
}

@end