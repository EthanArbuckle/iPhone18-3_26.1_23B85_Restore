@interface PXCreateSmartAlbumAction
- (PHAssetCollection)createdAssetCollection;
- (PXCreateSmartAlbumAction)initWithTitle:(id)title parentCollectionList:(id)list;
- (void)performRedo:(id)redo;
- (void)performUndo:(id)undo;
@end

@implementation PXCreateSmartAlbumAction

- (void)performRedo:(id)redo
{
  redoCopy = redo;
  createdAssetCollection = [(PXCreateSmartAlbumAction *)self createdAssetCollection];
  v6 = createdAssetCollection;
  if (createdAssetCollection)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__PXCreateSmartAlbumAction_performRedo___block_invoke;
    v7[3] = &unk_1E774C648;
    v8 = createdAssetCollection;
    [(PXPhotosAction *)self performChanges:v7 completionHandler:redoCopy];

    redoCopy = v8;
  }

  else
  {
    (*(redoCopy + 2))(redoCopy, 0, 0);
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

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  createdAssetCollection = [(PXCreateSmartAlbumAction *)self createdAssetCollection];
  v6 = createdAssetCollection;
  if (createdAssetCollection)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__PXCreateSmartAlbumAction_performUndo___block_invoke;
    v7[3] = &unk_1E774C648;
    v8 = createdAssetCollection;
    [(PXPhotosAction *)self performChanges:v7 completionHandler:undoCopy];

    undoCopy = v8;
  }

  else
  {
    (*(undoCopy + 2))(undoCopy, 0, 0);
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
  createdCollectionIdentifier = [(PXCreateSmartAlbumAction *)self createdCollectionIdentifier];
  v4 = createdCollectionIdentifier;
  createdAssetCollection = self->_createdAssetCollection;
  if (createdAssetCollection)
  {
    v6 = 1;
  }

  else
  {
    v6 = createdCollectionIdentifier == 0;
  }

  if (!v6)
  {
    v7 = MEMORY[0x1E6978650];
    v15[0] = createdCollectionIdentifier;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    standardFetchOptions = [(PXPhotosAction *)self standardFetchOptions];
    v10 = [v7 fetchAssetCollectionsWithLocalIdentifiers:v8 options:standardFetchOptions];
    firstObject = [v10 firstObject];
    v12 = self->_createdAssetCollection;
    self->_createdAssetCollection = firstObject;

    createdAssetCollection = self->_createdAssetCollection;
  }

  v13 = createdAssetCollection;

  return createdAssetCollection;
}

- (PXCreateSmartAlbumAction)initWithTitle:(id)title parentCollectionList:(id)list
{
  titleCopy = title;
  listCopy = list;
  photoLibrary = [listCopy photoLibrary];
  v13.receiver = self;
  v13.super_class = PXCreateSmartAlbumAction;
  v9 = [(PXPhotosAction *)&v13 initWithPhotoLibrary:photoLibrary];

  if (v9)
  {
    v10 = [titleCopy copy];
    title = v9->_title;
    v9->_title = v10;

    objc_storeStrong(&v9->_parentCollectionList, list);
  }

  return v9;
}

@end