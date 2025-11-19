@interface PXCreateSmartAlbumAction
- (PHAssetCollection)createdAssetCollection;
- (PXCreateSmartAlbumAction)initWithTitle:(id)a3 parentCollectionList:(id)a4;
- (void)performRedo:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXCreateSmartAlbumAction

- (void)performRedo:(id)a3
{
  v4 = a3;
  v5 = [(PXCreateSmartAlbumAction *)self createdAssetCollection];
  v6 = v5;
  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__PXCreateSmartAlbumAction_performRedo___block_invoke;
    v7[3] = &unk_1E774C648;
    v8 = v5;
    [(PXPhotosAction *)self performChanges:v7 completionHandler:v4];

    v4 = v8;
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

void __40__PXCreateSmartAlbumAction_performRedo___block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E6978AD0];
  v3[0] = *(a1 + 32);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  [v1 undeleteSmartAlbumsFromAssetCollection:v2];
}

- (void)performUndo:(id)a3
{
  v4 = a3;
  v5 = [(PXCreateSmartAlbumAction *)self createdAssetCollection];
  v6 = v5;
  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__PXCreateSmartAlbumAction_performUndo___block_invoke;
    v7[3] = &unk_1E774C648;
    v8 = v5;
    [(PXPhotosAction *)self performChanges:v7 completionHandler:v4];

    v4 = v8;
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

void __40__PXCreateSmartAlbumAction_performUndo___block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E6978AD0];
  v3[0] = *(a1 + 32);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  [v1 deleteSmartAlbumsFromAssetCollection:v2];
}

- (PHAssetCollection)createdAssetCollection
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = [(PXCreateSmartAlbumAction *)self createdCollectionIdentifier];
  v4 = v3;
  createdAssetCollection = self->_createdAssetCollection;
  if (createdAssetCollection)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (!v6)
  {
    v7 = MEMORY[0x1E6978650];
    v15[0] = v3;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v9 = [(PXPhotosAction *)self standardFetchOptions];
    v10 = [v7 fetchAssetCollectionsWithLocalIdentifiers:v8 options:v9];
    v11 = [v10 firstObject];
    v12 = self->_createdAssetCollection;
    self->_createdAssetCollection = v11;

    createdAssetCollection = self->_createdAssetCollection;
  }

  v13 = createdAssetCollection;

  return createdAssetCollection;
}

- (PXCreateSmartAlbumAction)initWithTitle:(id)a3 parentCollectionList:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 photoLibrary];
  v13.receiver = self;
  v13.super_class = PXCreateSmartAlbumAction;
  v9 = [(PXPhotosAction *)&v13 initWithPhotoLibrary:v8];

  if (v9)
  {
    v10 = [v6 copy];
    title = v9->_title;
    v9->_title = v10;

    objc_storeStrong(&v9->_parentCollectionList, a4);
  }

  return v9;
}

@end