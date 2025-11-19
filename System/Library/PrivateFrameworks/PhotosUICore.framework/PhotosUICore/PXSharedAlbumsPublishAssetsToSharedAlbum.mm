@interface PXSharedAlbumsPublishAssetsToSharedAlbum
@end

@implementation PXSharedAlbumsPublishAssetsToSharedAlbum

void ___PXSharedAlbumsPublishAssetsToSharedAlbum_block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6978630];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
  v15[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v6 = [v2 px_orderedAssetsFromAssets:v3 sortDescriptors:v5];

  v7 = *(a1 + 40);
  if (!v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PXSharedAlbumsPublishAssetsToSharedAlbum(__strong id<PXFastEnumeration>, PHAssetCollection *__strong, NSString * _Nullable __strong, NSDictionary<NSString *, PHAssetCreationOptions *> * _Nullable __strong, __strong id<PXPresentationEnvironment>, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))_block_invoke"}];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v9 handleFailureInFunction:v10 file:@"PXSharedAlbumsUtilities.m" lineNumber:1157 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"sharedAlbum", v12}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PXSharedAlbumsPublishAssetsToSharedAlbum(__strong id<PXFastEnumeration>, PHAssetCollection *__strong, NSString * _Nullable __strong, NSDictionary<NSString *, PHAssetCreationOptions *> * _Nullable __strong, __strong id<PXPresentationEnvironment>, void (^ _Nullable __strong)(BOOL, NSError * _Nullable __strong))_block_invoke"}];
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    v14 = [v7 px_descriptionForAssertionMessage];
    [v9 handleFailureInFunction:v10 file:@"PXSharedAlbumsUtilities.m" lineNumber:1157 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"sharedAlbum", v12, v14}];

    goto LABEL_6;
  }

LABEL_3:

  v8 = [MEMORY[0x1E6978780] changeRequestForCollectionShare:*(a1 + 40)];
  [v8 addAssetsToCollectionShareByCopyingSourceAssets:v6 creationOptionsMappedToSourceAssets:*(a1 + 48) withBatchCommentText:*(a1 + 56)];
}

void ___PXSharedAlbumsPublishAssetsToSharedAlbum_block_invoke_2(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___PXSharedAlbumsPublishAssetsToSharedAlbum_block_invoke_3;
  block[3] = &unk_1E77425A0;
  v13 = v4;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v14 = v10;
  v15 = v9;
  v11 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t ___PXSharedAlbumsPublishAssetsToSharedAlbum_block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = PLSharedAlbumsGetLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      *buf = 138543618;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_ERROR, "Failed to post assets to shared album with UUID=%{public}@. Error: %@", buf, 0x16u);
    }

    PXLocalizedSharedAlbumsString(@"PXSharedAlbumsCannotAddItemsTitle");
    objc_claimAutoreleasedReturnValue();
    PXLocalizedSharedAlbumsString(@"PXSharedAlbumsErrorAddingToSharedAlbum_Title_Format");
    objc_claimAutoreleasedReturnValue();
    [*(a1 + 48) localizedTitle];
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringWithValidatedFormat();
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    *buf = 138543362;
    v10 = v7;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "Succesfully posted assets to shared album with UUID=%{public}@", buf, 0xCu);
  }

  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

void ___PXSharedAlbumsPublishAssetsToSharedAlbum_block_invoke_342(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setTitle:v3];
  [v4 setMessage:*(a1 + 40)];
  v5 = PXLocalizedStringFromTable(@"PXOK", @"PhotosUICore");
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___PXSharedAlbumsPublishAssetsToSharedAlbum_block_invoke_2_343;
  v6[3] = &unk_1E774C2F0;
  v8 = *(a1 + 56);
  v7 = *(a1 + 48);
  [v4 addActionWithTitle:v5 style:1 action:v6];
}

@end