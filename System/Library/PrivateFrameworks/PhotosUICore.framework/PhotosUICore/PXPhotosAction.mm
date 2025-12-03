@interface PXPhotosAction
- (PXPhotosAction)init;
- (PXPhotosAction)initWithPhotoLibrary:(id)library;
- (int64_t)assetCount;
- (void)performChanges:(id)changes completionHandler:(id)handler;
@end

@implementation PXPhotosAction

- (void)performChanges:(id)changes completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  changesCopy = changes;
  v8 = PLUIActionsGetLog();
  v9 = os_signpost_id_generate(v8);
  v10 = v8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    actionIdentifier = [(PXAction *)self actionIdentifier];
    *buf = 138543362;
    v21 = actionIdentifier;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PhotosAction", "Identifier=%{public}@", buf, 0xCu);
  }

  photoLibrary = [(PXPhotosAction *)self photoLibrary];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __51__PXPhotosAction_performChanges_completionHandler___block_invoke;
  v16[3] = &unk_1E7735F00;
  v18 = handlerCopy;
  v19 = v9;
  v17 = v11;
  v14 = handlerCopy;
  v15 = v11;
  [photoLibrary performChanges:changesCopy completionHandler:v16];
}

void __51__PXPhotosAction_performChanges_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = v5;
  v7 = *(a1 + 48);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_END, v7, "PhotosAction", "", v8, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

- (int64_t)assetCount
{
  assets = [(PXPhotosAction *)self assets];
  v3 = [assets count];

  return v3;
}

- (PXPhotosAction)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosAction.m" lineNumber:28 description:{@"%s is not available as initializer", "-[PXPhotosAction init]"}];

  abort();
}

- (PXPhotosAction)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v11.receiver = self;
  v11.super_class = PXPhotosAction;
  v6 = [(PXPhotosAction *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
    librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
    standardFetchOptions = v7->_standardFetchOptions;
    v7->_standardFetchOptions = librarySpecificFetchOptions;
  }

  return v7;
}

@end