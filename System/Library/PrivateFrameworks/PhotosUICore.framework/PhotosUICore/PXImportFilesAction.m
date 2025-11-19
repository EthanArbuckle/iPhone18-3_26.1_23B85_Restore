@interface PXImportFilesAction
- (PHFetchResult)importedAssets;
- (PXImportFilesAction)initWithPhotoLibrary:(id)a3 fileURLs:(id)a4 assetCollection:(id)a5;
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXImportFilesAction

- (PHFetchResult)importedAssets
{
  if (!self->_importedAssets && [(NSArray *)self->_importedAssetsIdentifiers count])
  {
    v3 = MEMORY[0x1E6978630];
    importedAssetsIdentifiers = self->_importedAssetsIdentifiers;
    v5 = [(PXPhotosAction *)self standardFetchOptions];
    v6 = [v3 fetchAssetsWithLocalIdentifiers:importedAssetsIdentifiers options:v5];
    importedAssets = self->_importedAssets;
    self->_importedAssets = v6;
  }

  v8 = self->_importedAssets;

  return v8;
}

- (void)performUndo:(id)a3
{
  v14 = a3;
  v5 = [(PXImportFilesAction *)self importedAssets];
  v6 = [PXActionRecord alloc];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = -[PXActionRecord initWithSourceIdentifier:variant:assetCount:userConfirmation:](v6, "initWithSourceIdentifier:variant:assetCount:userConfirmation:", v8, @"undoing", [v5 count], 4);

  v10 = [(PXDestructiveAssetsAction *)PXDeleteAssetsAction actionWithAssets:v5 record:v9];
  if (!v10)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXImportFilesAction.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"deleteAssetsAction != nil"}];
  }

  [v10 executeWithUndoManager:0 completionHandler:v14];
  importedAssetsIdentifiers = self->_importedAssetsIdentifiers;
  self->_importedAssetsIdentifiers = 0;

  importedAssets = self->_importedAssets;
  self->_importedAssets = 0;
}

- (void)performAction:(id)a3
{
  v4 = a3;
  fileURLs = self->_fileURLs;
  v6 = [(PXPhotosAction *)self photoLibrary];
  assetCollection = self->_assetCollection;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__PXImportFilesAction_performAction___block_invoke;
  v10[3] = &unk_1E77353C8;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  v9 = [PXImportController importFilesAtURLs:fileURLs photoLibrary:v6 collection:assetCollection checkDuplicates:0 referenced:0 delegate:0 completionHandler:v10];
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

- (PXImportFilesAction)initWithPhotoLibrary:(id)a3 fileURLs:(id)a4 assetCollection:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXImportFilesAction.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  if (![v10 count])
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXImportFilesAction.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"fileURLs.count"}];
  }

  v18.receiver = self;
  v18.super_class = PXImportFilesAction;
  v12 = [(PXPhotosAction *)&v18 initWithPhotoLibrary:v9];
  if (v12)
  {
    v13 = [v10 copy];
    fileURLs = v12->_fileURLs;
    v12->_fileURLs = v13;

    objc_storeStrong(&v12->_assetCollection, a5);
  }

  return v12;
}

@end