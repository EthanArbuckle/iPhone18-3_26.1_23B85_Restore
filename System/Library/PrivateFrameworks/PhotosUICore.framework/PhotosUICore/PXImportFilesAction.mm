@interface PXImportFilesAction
- (PHFetchResult)importedAssets;
- (PXImportFilesAction)initWithPhotoLibrary:(id)library fileURLs:(id)ls assetCollection:(id)collection;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXImportFilesAction

- (PHFetchResult)importedAssets
{
  if (!self->_importedAssets && [(NSArray *)self->_importedAssetsIdentifiers count])
  {
    v3 = MEMORY[0x1E6978630];
    importedAssetsIdentifiers = self->_importedAssetsIdentifiers;
    standardFetchOptions = [(PXPhotosAction *)self standardFetchOptions];
    v6 = [v3 fetchAssetsWithLocalIdentifiers:importedAssetsIdentifiers options:standardFetchOptions];
    importedAssets = self->_importedAssets;
    self->_importedAssets = v6;
  }

  v8 = self->_importedAssets;

  return v8;
}

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  importedAssets = [(PXImportFilesAction *)self importedAssets];
  v6 = [PXActionRecord alloc];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = -[PXActionRecord initWithSourceIdentifier:variant:assetCount:userConfirmation:](v6, "initWithSourceIdentifier:variant:assetCount:userConfirmation:", v8, @"undoing", [importedAssets count], 4);

  v10 = [(PXDestructiveAssetsAction *)PXDeleteAssetsAction actionWithAssets:importedAssets record:v9];
  if (!v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXImportFilesAction.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"deleteAssetsAction != nil"}];
  }

  [v10 executeWithUndoManager:0 completionHandler:undoCopy];
  importedAssetsIdentifiers = self->_importedAssetsIdentifiers;
  self->_importedAssetsIdentifiers = 0;

  importedAssets = self->_importedAssets;
  self->_importedAssets = 0;
}

- (void)performAction:(id)action
{
  actionCopy = action;
  fileURLs = self->_fileURLs;
  photoLibrary = [(PXPhotosAction *)self photoLibrary];
  assetCollection = self->_assetCollection;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__PXImportFilesAction_performAction___block_invoke;
  v10[3] = &unk_1E77353C8;
  v10[4] = self;
  v11 = actionCopy;
  v8 = actionCopy;
  v9 = [PXImportController importFilesAtURLs:fileURLs photoLibrary:photoLibrary collection:assetCollection checkDuplicates:0 referenced:0 delegate:0 completionHandler:v10];
}

void __37__PXImportFilesAction_performAction___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([v10 result] == 1)
  {
    v3 = [v10 exceptions];
    if ([v3 count])
    {
      v4 = [v3 firstObject];
      v5 = [v4 underlyingError];

      v6 = [MEMORY[0x1E696ABC0] px_genericErrorWithUnderlyingError:v5 debugDescription:@"Import failed"];
    }

    else
    {
      v5 = [v10 importRecords];
      v7 = [v5 valueForKey:@"assetIdentifier"];
      v8 = *(a1 + 32);
      v9 = *(v8 + 104);
      *(v8 + 104) = v7;

      v6 = 0;
    }
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Import did not complete"];
  }

  (*(*(a1 + 40) + 16))();
}

- (PXImportFilesAction)initWithPhotoLibrary:(id)library fileURLs:(id)ls assetCollection:(id)collection
{
  libraryCopy = library;
  lsCopy = ls;
  collectionCopy = collection;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXImportFilesAction.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  if (![lsCopy count])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXImportFilesAction.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"fileURLs.count"}];
  }

  v18.receiver = self;
  v18.super_class = PXImportFilesAction;
  v12 = [(PXPhotosAction *)&v18 initWithPhotoLibrary:libraryCopy];
  if (v12)
  {
    v13 = [lsCopy copy];
    fileURLs = v12->_fileURLs;
    v12->_fileURLs = v13;

    objc_storeStrong(&v12->_assetCollection, collection);
  }

  return v12;
}

@end