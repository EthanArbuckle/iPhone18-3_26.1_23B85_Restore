@interface PXCMMPublishToSharedStreamActionPerformer
- (void)performBackgroundTask;
@end

@implementation PXCMMPublishToSharedStreamActionPerformer

- (void)performBackgroundTask
{
  v56 = *MEMORY[0x1E69E9840];
  session = [(PXCMMActionPerformer *)self session];
  sourceType = [session sourceType];

  if (sourceType)
  {
    v35 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1006 debugDescription:@"Publish to shared streams is only supported from Photos"];
    [(PXActionPerformer *)self completeBackgroundTaskWithSuccess:0 error:v35];
  }

  else
  {
    session2 = [(PXCMMActionPerformer *)self session];
    viewModel = [session2 viewModel];
    selectionManager = [viewModel selectionManager];
    selectionSnapshot = [selectionManager selectionSnapshot];

    dataSource = [selectionSnapshot dataSource];
    totalNumberOfItems = [dataSource totalNumberOfItems];

    selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
    v12 = [selectedIndexPaths count];

    v13 = PLSharingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v12;
      *&buf[12] = 2048;
      *&buf[14] = totalNumberOfItems;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "Publishing to shared stream with %lu assets selected out of %lu", buf, 0x16u);
    }

    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:totalNumberOfItems];
    if (selectionSnapshot)
    {
      dataSource2 = [selectionSnapshot dataSource];
      selectedIndexPaths2 = [selectionSnapshot selectedIndexPaths];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __66__PXCMMPublishToSharedStreamActionPerformer_performBackgroundTask__block_invoke;
      v49[3] = &unk_1E7744508;
      v50 = v14;
      v17 = dataSource2;
      v51 = v17;
      [selectedIndexPaths2 enumerateItemIndexPathsUsingBlock:v49];

      identifier = [v17 identifier];
      *&buf[8] = xmmword_1A5380D10;
      *buf = identifier;
      v53 = 0x7FFFFFFFFFFFFFFFLL;
      v19 = [v17 assetCollectionAtSectionIndexPath:buf];
      if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        localizedTitle = [v19 localizedTitle];
      }

      else
      {
        localizedTitle = 0;
      }
    }

    else
    {
      localizedTitle = 0;
    }

    v21 = MEMORY[0x1E696AEC0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v24 = [uUIDString substringToIndex:4];
    v25 = [v21 stringWithFormat:@"CMM-Test-%@", v24];

    if (localizedTitle)
    {
      v26 = [v25 stringByAppendingString:localizedTitle];

      v25 = v26;
    }

    cloudSharingPhotoLibrary = [MEMORY[0x1E69BE670] cloudSharingPhotoLibrary];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v53 = __Block_byref_object_copy__146941;
    v54 = __Block_byref_object_dispose__146942;
    v55 = 0;
    session3 = [(PXCMMActionPerformer *)self session];
    viewModel2 = [session3 viewModel];
    recipients = [viewModel2 recipients];

    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __66__PXCMMPublishToSharedStreamActionPerformer_performBackgroundTask__block_invoke_199;
    v44[3] = &unk_1E77448A8;
    v48 = buf;
    v45 = v25;
    v31 = cloudSharingPhotoLibrary;
    v46 = v31;
    v32 = recipients;
    v47 = v32;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __66__PXCMMPublishToSharedStreamActionPerformer_performBackgroundTask__block_invoke_2;
    v36[3] = &unk_1E773D778;
    v33 = v14;
    v37 = v33;
    v38 = 0u;
    v39 = 0u;
    v43 = 1;
    v42 = buf;
    selfCopy = self;
    v34 = v45;
    v41 = v34;
    [v31 performTransaction:v44 completionHandler:v36];

    _Block_object_dispose(buf, 8);
  }
}

void __66__PXCMMPublishToSharedStreamActionPerformer_performBackgroundTask__block_invoke(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v5 = [v2 assetAtItemIndexPath:v6];
  [v3 addObject:v5];
}

void __66__PXCMMPublishToSharedStreamActionPerformer_performBackgroundTask__block_invoke_199(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69BE458];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [v2 insertNewCloudSharedAlbumWithTitle:v3 lastInterestingDate:v4 intoLibrary:*(a1 + 40)];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = MEMORY[0x1E695E118];
  [*(*(*(a1 + 56) + 8) + 40) setIsOwned:MEMORY[0x1E695E118]];
  v9 = MEMORY[0x1E695E110];
  [*(*(*(a1 + 56) + 8) + 40) setCloudPublicURLEnabled:MEMORY[0x1E695E110]];
  [*(*(*(a1 + 56) + 8) + 40) setCloudPublicURLEnabledLocal:v9];
  [*(*(*(a1 + 56) + 8) + 40) setCloudMultipleContributorsEnabled:v8];
  [*(*(*(a1 + 56) + 8) + 40) setCloudMultipleContributorsEnabledLocal:v8];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v23 = a1;
  obj = *(a1 + 48);
  v24 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v24)
  {
    v22 = *v27;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v25 = MEMORY[0x1E69BE338];
        v12 = *(*(*(v23 + 56) + 8) + 40);
        v13 = [v11 firstName];
        v14 = [v11 lastName];
        v15 = [v11 localizedName];
        v16 = [v11 allEmails];
        v17 = [v16 allObjects];
        v18 = [v11 allPhones];
        v19 = [v18 allObjects];
        v20 = [v25 insertNewInvitationRecordIntoAlbum:v12 withFirstName:v13 lastName:v14 fullName:v15 emails:v17 phones:v19 inLibrary:*(v23 + 40)];
      }

      v24 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v24);
  }
}

void __66__PXCMMPublishToSharedStreamActionPerformer_performBackgroundTask__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) valueForKeyPath:@"uuid"];
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  [*(*(*(a1 + 88) + 8) + 40) publishBatchOfOriginalAssetUUIDs:v2 withBatchCommentText:v5 assetsSharingInfos:*(a1 + 48) customExportsInfo:*(a1 + 56) andTrimmedVideoPathInfo:*(a1 + 64) isNewAlbum:*(a1 + 96)];
  *(a1 + 80);
  px_dispatch_on_main_queue();
}

uint64_t __66__PXCMMPublishToSharedStreamActionPerformer_performBackgroundTask__block_invoke_3(uint64_t a1)
{
  v2 = PXURLForCMMShare(*(a1 + 40), 0);
  [*(a1 + 32) setPublishedURL:v2];

  v3 = *(a1 + 32);

  return [v3 completeBackgroundTaskWithSuccess:1 error:0];
}

@end