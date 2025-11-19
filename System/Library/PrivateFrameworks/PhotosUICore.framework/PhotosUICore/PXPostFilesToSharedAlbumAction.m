@interface PXPostFilesToSharedAlbumAction
- (PXPostFilesToSharedAlbumAction)initWithSharedAlbum:(id)a3 fileURLs:(id)a4 comment:(id)a5;
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXPostFilesToSharedAlbumAction

- (void)performUndo:(id)a3
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = a3;
  v6 = [v4 px_genericErrorWithDebugDescription:@"No undo support for post actions"];
  (*(a3 + 2))(v5, 0, v6);
}

- (void)performAction:(id)a3
{
  v4 = a3;
  v5 = self->_fileURLs;
  if (![(NSArray *)v5 count])
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSArray<PHCollectionShareAssetSource *> *_CollectionShareAssetSourcesForFileURLs(NSArray<NSURL *> *__strong, NSError *__autoreleasing *)"}];
    [v12 handleFailureInFunction:v13 file:@"PXPostFilesToSharedAlbumAction.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"fileURLs.count"}];
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
    v11 = [(PXPhotosAction *)self photoLibrary];
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
    v15 = v4;
    [v11 performChanges:v16 completionHandler:v14];
  }

  else
  {
    (*(v4 + 2))(v4, 0, v10);
  }
}

void __48__PXPostFilesToSharedAlbumAction_performAction___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6978780] changeRequestForCollectionShare:*(*(a1 + 32) + 88)];
  [v2 addNewAssetsToCollectionShareWithAssetSource:*(a1 + 40) withBatchCommentText:*(*(a1 + 32) + 104) outNewAssetIdentifiers:0];
}

- (PXPostFilesToSharedAlbumAction)initWithSharedAlbum:(id)a3 fileURLs:(id)a4 comment:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PXPostFilesToSharedAlbumAction.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"sharedAlbum"}];
  }

  if (![v11 count])
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXPostFilesToSharedAlbumAction.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"fileURLs.count"}];
  }

  v13 = [v10 photoLibrary];
  v22.receiver = self;
  v22.super_class = PXPostFilesToSharedAlbumAction;
  v14 = [(PXPhotosAction *)&v22 initWithPhotoLibrary:v13];

  if (v14)
  {
    objc_storeStrong(&v14->_sharedAlbum, a3);
    v15 = [v11 copy];
    fileURLs = v14->_fileURLs;
    v14->_fileURLs = v15;

    v17 = [v12 copy];
    comment = v14->_comment;
    v14->_comment = v17;
  }

  return v14;
}

@end