@interface RefetchLibraryScope
@end

@implementation RefetchLibraryScope

void ___RefetchLibraryScope_block_invoke_651(uint64_t a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  v4 = MEMORY[0x1E69788A0];
  v21[0] = *(a1 + 40);
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v6 = [v4 fetchLibraryScopesWithLocalIdentifiers:v5 options:v3];

  v7 = [v6 firstObject];
  v8 = PLSharedLibraryGetLog();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 localIdentifier];
      *buf = 138543362;
      v20 = v10;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "Did refetch library scope with identifier: %{public}@", buf, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = [*(a1 + 32) localIdentifier];
      *buf = 138543362;
      v20 = v12;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Failed to refetch library scope with identifier: %{public}@", buf, 0xCu);
    }

    v13 = MEMORY[0x1E696ABC0];
    v9 = [*(a1 + 32) localIdentifier];
    v11 = [v13 px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 underlyingError:0 debugDescription:{@"Failed to refetch library scope with identifier: %@", v9}];
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___RefetchLibraryScope_block_invoke_655;
    block[3] = &unk_1E774A0E0;
    v18 = v14;
    v16 = v7;
    v17 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void ___RefetchLibraryScope_block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, 0);
  v1 = dispatch_queue_create("PXSharedLibraryPhotoKitUtilitiesRefetchQueue", v0);
  v2 = _RefetchLibraryScope__refetchQueue;
  _RefetchLibraryScope__refetchQueue = v1;
}

@end