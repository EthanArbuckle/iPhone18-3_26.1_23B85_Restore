@interface PXPhotoKitMessagesAddToLibraryAssetActionPerformer
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitMessagesAddToLibraryAssetActionPerformer

- (void)performUserInteractionTask
{
  v120 = *MEMORY[0x1E69E9840];
  selectionSnapshot = [(PXAssetActionPerformer *)self selectionSnapshot];
  if ([selectionSnapshot isAnyItemSelected])
  {
    v107 = 0;
    v66 = [MEMORY[0x1E69789A8] openPhotoLibraryWithWellKnownIdentifier:1 error:&v107];
    v65 = v107;
    if (!v66)
    {
      v17 = PLSharingGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        *v116 = 138412802;
        *&v116[4] = v18;
        *&v116[12] = 2048;
        *&v116[14] = self;
        *&v116[22] = 2112;
        v117 = v65;
        _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_ERROR, "<%@:%p> Failed to acquire system photo library: %@", v116, 0x20u);
      }

      [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v65];
      goto LABEL_46;
    }

    dataSource = [selectionSnapshot dataSource];
    if (dataSource)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_5;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v57 = objc_opt_class();
      v56 = NSStringFromClass(v57);
      px_descriptionForAssertionMessage = [dataSource px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitMessagesAddToLibraryAssetActionPerformer.m" lineNumber:58 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"snapshot.dataSource", v56, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitMessagesAddToLibraryAssetActionPerformer.m" lineNumber:58 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"snapshot.dataSource", v56}];
    }

LABEL_5:
    importStatusManager = [(PXPhotoKitAssetActionPerformer *)self importStatusManager];
    selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
    itemCount = [selectedIndexPaths itemCount];

    v103 = 0;
    v104 = &v103;
    v105 = 0x2020000000;
    v106 = 0;
    v99 = 0;
    v100 = &v99;
    v101 = 0x2020000000;
    v102 = 0;
    v95 = 0;
    v96 = &v95;
    v97 = 0x2020000000;
    v98 = 0;
    v91 = 0;
    v92 = &v91;
    v93 = 0x2020000000;
    v94 = 0;
    v90[0] = 0;
    v90[1] = v90;
    v90[2] = 0x2020000000;
    v90[3] = 0;
    *v116 = 0;
    *&v116[8] = v116;
    *&v116[16] = 0x3032000000;
    v117 = __Block_byref_object_copy__147498;
    v118 = __Block_byref_object_dispose__147499;
    v119 = 0;
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:itemCount];
    selectedIndexPaths2 = [selectionSnapshot selectedIndexPaths];
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __80__PXPhotoKitMessagesAddToLibraryAssetActionPerformer_performUserInteractionTask__block_invoke;
    v77[3] = &unk_1E773D7C0;
    v89 = a2;
    v59 = dataSource;
    v78 = v59;
    selfCopy = self;
    v60 = importStatusManager;
    v80 = v60;
    v83 = &v103;
    v84 = v116;
    v11 = v66;
    v81 = v11;
    v85 = &v99;
    v64 = v9;
    v82 = v64;
    v86 = &v95;
    v87 = &v91;
    v88 = v90;
    [selectedIndexPaths2 enumerateItemIndexPathsUsingBlock:v77];

    v61 = [v64 count];
    v12 = PLSharingGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v104[3];
      v14 = v100[3];
      *buf = 134218752;
      v109 = itemCount;
      v110 = 2048;
      v111 = v13;
      v112 = 2048;
      v113 = v14;
      v114 = 2048;
      v115 = v61;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "PXPhotoKitMessagesAddToLibraryAssetActionPerformer: Assets selected: %tu, assets saved: %tu, assets in progress %tu, assets to save: %tu", buf, 0x2Au);
    }

    if (v96[3] == itemCount)
    {
      v15 = @"_Photo";
    }

    else if (v92[3] == itemCount)
    {
      v15 = @"_Video";
    }

    else
    {
      v15 = @"_Item";
    }

    isCloudPhotoLibraryEnabled = [v11 isCloudPhotoLibraryEnabled];
    v20 = v104[3];
    v21 = v20 != 0;
    if (v20)
    {
      if (v20 != itemCount)
      {
        if (v100[3] + v20 == itemCount)
        {
          v32 = [@"PXCMMMessagesSaveToLibrary_AllSavedOrInProgress" stringByAppendingString:v15];
          PXLocalizedStringFromTable(v32, @"PhotosUICore");
          objc_claimAutoreleasedReturnValue();
          PXLocalizedStringWithValidatedFormat();
        }

        v53 = [@"PXCMMMessagesSaveToLibrary_SomeSaved" stringByAppendingString:v15];
        PXLocalizedStringFromTable(v53, @"PhotosUICore");
        objc_claimAutoreleasedReturnValue();
        PXLocalizedStringWithValidatedFormat();
      }

      v22 = @"PXCMMMessagesSaveToLibrary_AllSaved_Multiple";
      if (itemCount == 1)
      {
        v22 = @"PXCMMMessagesSaveToLibrary_AllSaved";
      }

      v23 = v22;
      v24 = [(__CFString *)v23 stringByAppendingString:v15];

      v63 = PXLocalizedStringFromTable(v24, @"PhotosUICore");
      v33 = 0;
      v62 = 0;
      v34 = 1;
    }

    else
    {
      v25 = isCloudPhotoLibraryEnabled;
      v26 = @"PXCMMMessagesSaveToLibrary_AllUnsaved_Multiple";
      v27 = v100[3];
      if (itemCount == 1)
      {
        v26 = @"PXCMMMessagesSaveToLibrary_AllUnsaved";
        v28 = @"PXCMMMessagesSaveToLibrary_AllInProgress";
      }

      else
      {
        v28 = @"PXCMMMessagesSaveToLibrary_AllInProgress_Multiple";
      }

      v62 = v27 == itemCount;
      v33 = v27 != itemCount;
      if (v27 == itemCount)
      {
        v29 = v28;
      }

      else
      {
        v29 = v26;
      }

      v30 = v29;
      v24 = [(__CFString *)v30 stringByAppendingString:v15];

      if (v25)
      {
        v31 = [v24 stringByAppendingString:@"_ICPL"];

        v24 = v31;
      }

      v63 = PXLocalizedStringFromTable(v24, @"PhotosUICore");
      v34 = v33;
    }

    v35 = @"PXCMMMessagesSaveToLibraryActionTitle_Multiple";
    if (itemCount == 1)
    {
      v35 = @"PXCMMMessagesSaveToLibraryActionTitle";
    }

    v36 = v35;
    v37 = [(__CFString *)v36 stringByAppendingString:v15];
    v38 = PXLocalizedStringFromTable(v37, @"PhotosUICore");

    v39 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v63 preferredStyle:0];
    objc_initWeak(buf, self);
    if (v21)
    {
      if (!*(*&v116[8] + 40))
      {
        v52 = PLSharingGetLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *v76 = 0;
          _os_log_impl(&dword_1A3C1C000, v52, OS_LOG_TYPE_ERROR, "PXPhotoKitMessagesAddToLibraryAssetActionPerformer: Some or all photos are already saved, but we can't find an assetID in Photos to navigate", v76, 2u);
        }

        v34 = 0;
        v62 = 1;
        if (!v33)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      v40 = MEMORY[0x1E69DC648];
      v41 = PXLocalizedStringFromTable(@"PXCMMMessagesSaveToLibraryActionTitle_ShowInPhotos", @"PhotosUICore");
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v74[2] = __80__PXPhotoKitMessagesAddToLibraryAssetActionPerformer_performUserInteractionTask__block_invoke_267;
      v74[3] = &unk_1E773D7E8;
      v74[4] = v116;
      objc_copyWeak(&v75, buf);
      v42 = [v40 actionWithTitle:v41 style:0 handler:v74];
      [v39 addAction:v42];

      objc_destroyWeak(&v75);
    }

    if (!v33)
    {
LABEL_39:
      if (v34)
      {
        v45 = MEMORY[0x1E69DC648];
        v46 = PXLocalizedStringFromTable(@"PXCMMMessagesSaveToLibraryCancelTitle", @"PhotosUICore");
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __80__PXPhotoKitMessagesAddToLibraryAssetActionPerformer_performUserInteractionTask__block_invoke_273;
        v69[3] = &unk_1E773D838;
        objc_copyWeak(&v70, buf);
        v47 = [v45 actionWithTitle:v46 style:1 handler:v69];
        [v39 addAction:v47];

        objc_destroyWeak(&v70);
      }

      if (v62)
      {
        v48 = MEMORY[0x1E69DC648];
        v49 = PXLocalizedStringFromTable(@"PXOK", @"PhotosUICore");
        v67[0] = MEMORY[0x1E69E9820];
        v67[1] = 3221225472;
        v67[2] = __80__PXPhotoKitMessagesAddToLibraryAssetActionPerformer_performUserInteractionTask__block_invoke_277;
        v67[3] = &unk_1E773D838;
        objc_copyWeak(&v68, buf);
        v50 = [v48 actionWithTitle:v49 style:0 handler:v67];
        [v39 addAction:v50];

        objc_destroyWeak(&v68);
      }

      if (![(PXActionPerformer *)self presentViewController:v39])
      {
        v51 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"PXPhotoKitMessagesAddToLibraryAssetActionPerformer: Failed to present save alert"];
        [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v51];
      }

      objc_destroyWeak(buf);

      _Block_object_dispose(v116, 8);
      _Block_object_dispose(v90, 8);
      _Block_object_dispose(&v91, 8);
      _Block_object_dispose(&v95, 8);
      _Block_object_dispose(&v99, 8);
      _Block_object_dispose(&v103, 8);

LABEL_46:
      goto LABEL_47;
    }

LABEL_38:
    v43 = MEMORY[0x1E69DC648];
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __80__PXPhotoKitMessagesAddToLibraryAssetActionPerformer_performUserInteractionTask__block_invoke_269;
    v71[3] = &unk_1E773D810;
    v73[1] = v61;
    objc_copyWeak(v73, buf);
    v72 = v64;
    v44 = [v43 actionWithTitle:v38 style:0 handler:v71];
    [v39 addAction:v44];

    objc_destroyWeak(v73);
    goto LABEL_39;
  }

  v16 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"PXPhotoKitMessagesAddToLibraryAssetActionPerformer: No items selected for add to library action"];
  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v16];

LABEL_47:
}

void __80__PXPhotoKitMessagesAddToLibraryAssetActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, _OWORD *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2[1];
  *buf = *a2;
  *&buf[16] = v4;
  v5 = [v3 assetAtItemIndexPath:buf];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = *(a1 + 120);
    v25 = *(a1 + 40);
    v26 = objc_opt_class();
    v23 = NSStringFromClass(v26);
    v27 = [v5 px_descriptionForAssertionMessage];
    [v19 handleFailureInMethod:v24 object:v25 file:@"PXPhotoKitMessagesAddToLibraryAssetActionPerformer.m" lineNumber:69 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[dataSource assetAtItemIndexPath:indexPath]", v23, v27}];
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = *(a1 + 120);
    v21 = *(a1 + 40);
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [v19 handleFailureInMethod:v20 object:v21 file:@"PXPhotoKitMessagesAddToLibraryAssetActionPerformer.m" lineNumber:69 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[dataSource assetAtItemIndexPath:indexPath]", v23}];
  }

LABEL_3:
  v6 = [*(a1 + 48) importStateForAsset:v5];
  if (v6 == 1)
  {
    ++*(*(*(a1 + 88) + 8) + 24);
    v12 = PLSharingGetLog();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
LABEL_12:

      goto LABEL_16;
    }

    v13 = [v5 uuid];
    *buf = 138543362;
    *&buf[4] = v13;
    v14 = "PXPhotoKitMessagesAddToLibraryAssetActionPerformer: Asset %{public}@ is already downloading";
LABEL_11:
    _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);

    goto LABEL_12;
  }

  v7 = v6;
  if (v6 == 2)
  {
    ++*(*(*(a1 + 72) + 8) + 24);
    if (!*(*(*(a1 + 80) + 8) + 40))
    {
      v8 = PXAssetToRevealForMomentSharedAsset(v5, 2, *(a1 + 56));
      v9 = [v8 uuid];
      v10 = *(*(a1 + 80) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    v12 = PLSharingGetLog();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v13 = [v5 uuid];
    *buf = 138543362;
    *&buf[4] = v13;
    v14 = "PXPhotoKitMessagesAddToLibraryAssetActionPerformer: Asset %{public}@ is already saved";
    goto LABEL_11;
  }

  v15 = PLSharingGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v5 uuid];
    *buf = 138543618;
    *&buf[4] = v16;
    *&buf[12] = 2048;
    *&buf[14] = v7;
    _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEFAULT, "PXPhotoKitMessagesAddToLibraryAssetActionPerformer: Asset %{public}@ is not saved with state %tu", buf, 0x16u);
  }

  [*(a1 + 64) addObject:v5];
LABEL_16:
  v17 = [v5 mediaType];
  v18 = 112;
  if (v17 == 2)
  {
    v18 = 104;
  }

  if (v17 == 1)
  {
    v18 = 96;
  }

  ++*(*(*(a1 + v18) + 8) + 24);
}

void __80__PXPhotoKitMessagesAddToLibraryAssetActionPerformer_performUserInteractionTask__block_invoke_267(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = PLSharingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    *buf = 138543362;
    v19 = v3;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "PXPhotoKitMessagesAddToLibraryAssetActionPerformer: Show in Photos selected: Will navigate to asset %{public}@", buf, 0xCu);
  }

  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = [@"photos://asset?uuid=" stringByAppendingString:v4];
  v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];
  v7 = [MEMORY[0x1E6963608] defaultWorkspace];
  v17 = 0;
  v8 = [v7 openSensitiveURL:v6 withOptions:0 error:&v17];
  v9 = v17;

  v10 = PLSharingGetLog();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v4;
      v12 = "PXPhotoKitMessagesAddToLibraryAssetActionPerformer: Success navigating to asset %{public}@";
      v13 = v11;
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 12;
LABEL_8:
      _os_log_impl(&dword_1A3C1C000, v13, v14, v12, buf, v15);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v19 = v4;
    v20 = 2112;
    v21 = v9;
    v12 = "PXPhotoKitMessagesAddToLibraryAssetActionPerformer: Failed navigating to asset %{public}@, error: %@";
    v13 = v11;
    v14 = OS_LOG_TYPE_ERROR;
    v15 = 22;
    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained completeUserInteractionTaskWithSuccess:1 error:0];
}

void __80__PXPhotoKitMessagesAddToLibraryAssetActionPerformer_performUserInteractionTask__block_invoke_269(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PLSharingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "PXPhotoKitMessagesAddToLibraryAssetActionPerformer: Save selected. Saving %lu media objects", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained importAssets:*(a1 + 32)];
}

void __80__PXPhotoKitMessagesAddToLibraryAssetActionPerformer_performUserInteractionTask__block_invoke_273(uint64_t a1)
{
  v2 = PLSharingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "PXPhotoKitMessagesAddToLibraryAssetActionPerformer: Cancel selected.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained completeUserInteractionTaskWithSuccess:1 error:0];
}

void __80__PXPhotoKitMessagesAddToLibraryAssetActionPerformer_performUserInteractionTask__block_invoke_277(uint64_t a1)
{
  v2 = PLSharingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "PXPhotoKitMessagesAddToLibraryAssetActionPerformer: Okay selected.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained completeUserInteractionTaskWithSuccess:1 error:0];
}

@end