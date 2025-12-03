@interface PXPostFilesToSharedAlbumAction
- (PXPostFilesToSharedAlbumAction)initWithSharedAlbum:(id)album fileURLs:(id)ls comment:(id)comment;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXPostFilesToSharedAlbumAction

- (void)performUndo:(id)undo
{
  v4 = MEMORY[0x1E696ABC0];
  undoCopy = undo;
  v6 = [v4 px_genericErrorWithDebugDescription:@"No undo support for post actions"];
  (*(undo + 2))(undoCopy, 0, v6);
}

- (void)performAction:(id)action
{
  actionCopy = action;
  v5 = self->_fileURLs;
  if (![(NSArray *)v5 count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSArray<PHCollectionShareAssetSource *> *_CollectionShareAssetSourcesForFileURLs(NSArray<NSURL *> *__strong, NSError *__autoreleasing *)"}];
    [currentHandler handleFailureInFunction:v13 file:@"PXPostFilesToSharedAlbumAction.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"fileURLs.count"}];
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__154326;
  v25 = __Block_byref_object_dispose__154327;
  v26 = 0;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](v5, "count")}];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = ___CollectionShareAssetSourcesForFileURLs_block_invoke;
  v18[3] = &unk_1E773E088;
  v20 = &v21;
  v7 = v6;
  v19 = v7;
  [(NSArray *)v5 enumerateObjectsUsingBlock:v18];
  v8 = v22[5];
  if (v8)
  {
    v9 = v8;
  }

  _Block_object_dispose(&v21, 8);
  v10 = v8;
  if (v7)
  {
    photoLibrary = [(PXPhotosAction *)self photoLibrary];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __48__PXPostFilesToSharedAlbumAction_performAction___block_invoke;
    v16[3] = &unk_1E774C620;
    v16[4] = self;
    v17 = v7;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48__PXPostFilesToSharedAlbumAction_performAction___block_invoke_2;
    v14[3] = &unk_1E7747648;
    v15 = actionCopy;
    [photoLibrary performChanges:v16 completionHandler:v14];
  }

  else
  {
    (*(actionCopy + 2))(actionCopy, 0, v10);
  }
}

void __48__PXPostFilesToSharedAlbumAction_performAction___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6978780] changeRequestForCollectionShare:*(*(a1 + 32) + 88)];
  [v2 addNewAssetsToCollectionShareWithAssetSource:*(a1 + 40) withBatchCommentText:*(*(a1 + 32) + 104) outNewAssetIdentifiers:0];
}

- (PXPostFilesToSharedAlbumAction)initWithSharedAlbum:(id)album fileURLs:(id)ls comment:(id)comment
{
  albumCopy = album;
  lsCopy = ls;
  commentCopy = comment;
  if (!albumCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPostFilesToSharedAlbumAction.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"sharedAlbum"}];
  }

  if (![lsCopy count])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPostFilesToSharedAlbumAction.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"fileURLs.count"}];
  }

  photoLibrary = [albumCopy photoLibrary];
  v22.receiver = self;
  v22.super_class = PXPostFilesToSharedAlbumAction;
  v14 = [(PXPhotosAction *)&v22 initWithPhotoLibrary:photoLibrary];

  if (v14)
  {
    objc_storeStrong(&v14->_sharedAlbum, album);
    v15 = [lsCopy copy];
    fileURLs = v14->_fileURLs;
    v14->_fileURLs = v15;

    v17 = [commentCopy copy];
    comment = v14->_comment;
    v14->_comment = v17;
  }

  return v14;
}

@end