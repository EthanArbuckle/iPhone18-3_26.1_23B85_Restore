@interface PXFeedInvitationResponseSectionInfo
- (id)assets;
- (void)updateFromCloudFeedEntry;
@end

@implementation PXFeedInvitationResponseSectionInfo

- (id)assets
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__190948;
  v22 = __Block_byref_object_dispose__190949;
  v23 = 0;
  v3 = [(PXFeedSectionInfo *)self sharedAlbum];
  v4 = [v3 uuid];

  v5 = [(PXFeedSectionInfo *)self photoLibrary];
  v6 = [v5 photoLibrary];
  v7 = [v6 managedObjectContext];

  v8 = [(PXFeedSectionInfo *)self photoLibrary];
  v9 = [v8 photoLibrary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __45__PXFeedInvitationResponseSectionInfo_assets__block_invoke;
  v14[3] = &unk_1E7746448;
  v10 = v4;
  v15 = v10;
  v11 = v7;
  v16 = v11;
  v17 = &v18;
  [v9 performBlockAndWait:v14];

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

void __45__PXFeedInvitationResponseSectionInfo_assets__block_invoke(void *a1)
{
  v7 = [MEMORY[0x1E69BE358] shareWithUUID:a1[4] includeTrashed:0 inManagedObjectContext:a1[5]];
  v2 = MEMORY[0x1E695DFB8];
  v3 = [v7 collectionShareAssets];
  v4 = [v2 orderedSetWithSet:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)updateFromCloudFeedEntry
{
  v44[1] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = PXFeedInvitationResponseSectionInfo;
  [(PXFeedSectionInfo *)&v37 updateFromCloudFeedEntry];
  v3 = [(PXFeedSectionInfo *)self cloudFeedEntry];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__190948;
  v35 = __Block_byref_object_dispose__190949;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__190948;
  v29 = __Block_byref_object_dispose__190949;
  v30 = 0;
  v4 = [(PXFeedSectionInfo *)self photoLibrary];
  v5 = [v4 photoLibrary];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __63__PXFeedInvitationResponseSectionInfo_updateFromCloudFeedEntry__block_invoke;
  v21[3] = &unk_1E7746888;
  v23 = &v25;
  v6 = v3;
  v22 = v6;
  v24 = &v31;
  [v5 performBlockAndWait:v21];

  if (!v26[5])
  {
    v12 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = [v6 uuid];
      *buf = 138543618;
      v39 = v15;
      v40 = 2112;
      v41 = v6;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "PXFeedInvitationResponseSectionInfo: No participantID found in entry (uuid: %{public}@): %@", buf, 0x16u);
    }

    goto LABEL_9;
  }

  v7 = MEMORY[0x1E6978AC0];
  v44[0] = v26[5];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
  v9 = [(PXFeedSectionInfo *)self photoLibrary];
  v10 = [v9 px_standardLibrarySpecificFetchOptions];
  v11 = [v7 fetchParticipantsWithParticipantIDs:v8 options:v10];
  v12 = [v11 firstObject];

  if (!v12)
  {
    v16 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = v26[5];
      v18 = [v6 uuid];
      *buf = 138543874;
      v39 = v17;
      v40 = 2114;
      v41 = v18;
      v42 = 2112;
      v43 = v6;
      _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_ERROR, "PXFeedInvitationResponseSectionInfo: No share participant found for participantID %{public}@, entry (uuid: %{public}@): %@", buf, 0x20u);
    }

    v12 = 0;
LABEL_9:
    v13 = 0;
    v14 = 0;
    goto LABEL_10;
  }

  v13 = [[PXSharedAlbumParticipant alloc] initWithShareParticipant:v12];
  v14 = 1;
LABEL_10:

  v19 = [(PXFeedSectionInfo *)self sharedAlbumWithGUID:v32[5]];
  v20 = [v19 localizedTitle];
  [(PXFeedSectionInfo *)self setNumberOfItems:v14];
  [(PXFeedSectionInfo *)self setSharedAlbum:v19];
  [(PXFeedSectionInfo *)self setAlbumTitle:v20];
  [(PXFeedSectionInfo *)self setInvitee:v13];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
}

void __63__PXFeedInvitationResponseSectionInfo_updateFromCloudFeedEntry__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) entryInvitationRecordGUID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) entryAlbumGUID];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

@end