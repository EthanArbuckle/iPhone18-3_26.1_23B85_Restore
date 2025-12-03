@interface UIApplication(PhotosUICore)
- (void)px_navigateToCollection:()PhotosUICore selectedObject:completionHandler:;
- (void)px_navigateToCollectionSubtype:()PhotosUICore completionHandler:;
- (void)px_navigateToForYouRevealingSharedLibrarySharingSuggestionsWithCompletionHandler:()PhotosUICore;
- (void)px_navigateToMomentsViewRevealingAsset:()PhotosUICore completionHandler:;
- (void)px_navigateToMomentsViewRevealingAssetWithUUID:()PhotosUICore openOneUp:completionHandler:;
- (void)px_navigateToMomentsViewRevealingDisplayAsset:()PhotosUICore openOneUp:completionHandler:;
- (void)px_navigateToOneUpShowingAsset:()PhotosUICore completionHandler:;
- (void)px_navigateToPhotosURL:()PhotosUICore completionHandler:;
- (void)px_navigateToRevealDroppedAsset:()PhotosUICore completionHandler:;
- (void)px_navigateToWelcomeCloudViewWithCompletionHandler:()PhotosUICore;
@end

@implementation UIApplication(PhotosUICore)

- (void)px_navigateToPhotosURL:()PhotosUICore completionHandler:
{
  v6 = a3;
  v7 = a4;
  v8 = [[PXProgrammaticNavigationDestination alloc] initWithURL:v6];
  px_firstKeyWindow = [self px_firstKeyWindow];
  rootViewController = [px_firstKeyWindow rootViewController];

  if ([rootViewController routingOptionsForDestination:v8])
  {
    v11 = [PXProgrammaticNavigationRequest alloc];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __72__UIApplication_PhotosUICore__px_navigateToPhotosURL_completionHandler___block_invoke;
    v22[3] = &unk_1E7748588;
    v12 = &v23;
    v13 = &v24;
    v23 = v6;
    v24 = v7;
    v14 = v7;
    v15 = v6;
    v16 = [(PXProgrammaticNavigationRequest *)v11 initWithDestination:v8 options:0 completionHandler:v22];
    PXProgrammaticNavigationRequestExecute(v16, rootViewController);
  }

  else
  {
    v16 = dispatch_get_global_queue(25, 0);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __72__UIApplication_PhotosUICore__px_navigateToPhotosURL_completionHandler___block_invoke_415;
    v19[3] = &unk_1E774C2F0;
    v12 = &v20;
    v13 = &v21;
    v20 = v6;
    v21 = v7;
    v17 = v7;
    v18 = v6;
    dispatch_async(v16, v19);
  }
}

- (void)px_navigateToCollection:()PhotosUICore selectedObject:completionHandler:
{
  v8 = a5;
  v9 = [a3 px_navigationURLWithSelectedObject:a4];
  [self px_navigateToPhotosURL:v9 completionHandler:v8];
}

- (void)px_navigateToOneUpShowingAsset:()PhotosUICore completionHandler:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  uuid = [v6 uuid];
  if ([uuid length])
  {
    v9 = [MEMORY[0x1E696AF20] componentsWithString:@"photos://asset"];
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"uuid" value:uuid];
    [v10 addObject:v11];
    v12 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"albumname" value:@"camera-roll"];
    [v10 addObject:v12];
    [v9 setQueryItems:v10];
    v13 = [v9 URL];
    [self px_navigateToPhotosURL:v13 completionHandler:v7];
  }

  else
  {
    v14 = PLUIGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "Unable to navigate to an asset without an asset UUID. Asset: %@", buf, 0xCu);
    }

    if (v7)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__UIApplication_PhotosUICore__px_navigateToOneUpShowingAsset_completionHandler___block_invoke;
      block[3] = &unk_1E774C250;
      v16 = v7;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

- (void)px_navigateToRevealDroppedAsset:()PhotosUICore completionHandler:
{
  v6 = MEMORY[0x1E696AF20];
  v7 = a4;
  v8 = a3;
  v14 = [v6 componentsWithString:@"photos://album"];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"name" value:@"camera-roll"];
  [v9 addObject:v10];
  uuid = [v8 uuid];

  if ([uuid length])
  {
    v12 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"assetuuid" value:uuid];
    [v9 addObject:v12];
  }

  [v14 setQueryItems:v9];
  v13 = [v14 URL];
  [self px_navigateToPhotosURL:v13 completionHandler:v7];
}

- (void)px_navigateToCollectionSubtype:()PhotosUICore completionHandler:
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E6978650];
  v7 = a4;
  v8 = [v6 px_builtInAlbumNameForSubtype:a3];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"photos://album?name=%@", v8];
    v10 = [MEMORY[0x1E695DFF8] URLWithString:v9];
    [self px_navigateToPhotosURL:v10 completionHandler:v7];
  }

  else
  {
    v13 = *MEMORY[0x1E696A578];
    v14[0] = @"Cannot obtain failed-to-upload album name";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PXUIApplicationErrorDomain" code:-1 userInfo:v11];
    (*(v7 + 2))(v7, 0, v12);
  }
}

- (void)px_navigateToMomentsViewRevealingAssetWithUUID:()PhotosUICore openOneUp:completionHandler:
{
  v12 = a3;
  v8 = a5;
  if ([v12 length])
  {
    v9 = [@"photos://contentmode?id=photos" stringByAppendingFormat:@"&assetuuid=%@", v12];
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = @"photos://contentmode?id=photos";
  if (a4)
  {
LABEL_3:
    v10 = [(__CFString *)v9 stringByAppendingFormat:@"&oneUp=1"];

    v9 = v10;
  }

LABEL_4:
  v11 = [MEMORY[0x1E695DFF8] URLWithString:v9];
  [self px_navigateToPhotosURL:v11 completionHandler:v8];
}

- (void)px_navigateToForYouRevealingSharedLibrarySharingSuggestionsWithCompletionHandler:()PhotosUICore
{
  v4 = MEMORY[0x1E695DFF8];
  v5 = a3;
  v6 = [v4 URLWithString:@"photos://forYou?type=sharedLibrarySuggestions"];
  [self px_navigateToPhotosURL:v6 completionHandler:v5];
}

- (void)px_navigateToMomentsViewRevealingDisplayAsset:()PhotosUICore openOneUp:completionHandler:
{
  v14 = a3;
  v8 = a5;
  objc_opt_class();
  v9 = v14;
  if (objc_opt_isKindOfClass())
  {
    v10 = v14;
    photoLibrary = [v10 photoLibrary];
    wellKnownPhotoLibraryIdentifier = [photoLibrary wellKnownPhotoLibraryIdentifier];

    v9 = v10;
    if (wellKnownPhotoLibraryIdentifier == 3)
    {
      v9 = PXAssetToRevealForSyndicationLibraryAsset(v10);
    }
  }

  uuid = [v9 uuid];
  [self px_navigateToMomentsViewRevealingAssetWithUUID:uuid openOneUp:a4 completionHandler:v8];
}

- (void)px_navigateToMomentsViewRevealingAsset:()PhotosUICore completionHandler:
{
  v6 = a4;
  uuid = [a3 uuid];
  [self px_navigateToMomentsViewRevealingAssetWithUUID:uuid openOneUp:0 completionHandler:v6];
}

- (void)px_navigateToWelcomeCloudViewWithCompletionHandler:()PhotosUICore
{
  v4 = MEMORY[0x1E695DFF8];
  v5 = a3;
  v6 = [v4 URLWithString:@"photos://show-welcome-cpl"];
  [self px_navigateToPhotosURL:v6 completionHandler:v5];
}

@end