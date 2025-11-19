@interface PXPhotosDetailsInlinePlaybackController
- (BOOL)canPlayAsset:(id)a3;
- (BOOL)shouldEnablePlayback;
- (CGRect)currentVisibleRect;
- (CGRect)frameForPlaybackRecord:(id)a3 minPlayableSize:(CGSize *)a4;
- (PXPhotosDetailsInlinePlaybackController)init;
- (PXPhotosDetailsInlinePlaybackController)initWithTilingController:(id)a3;
- (PXPhotosDetailsInlinePlaybackControllerDelegate)delegate;
- (PXTileIdentifier)_currentTileIdentifierForRecord:(SEL)a3;
- (id)createPlaybackRecordForDisplayAsset:(id)a3 mediaProvider:(id)a4 geometryReference:(id)a5 spriteSize:(CGSize)a6 displayScale:(double)a7;
- (void)checkInTile:(void *)a3 withIdentifier:(PXTileIdentifier *)a4;
- (void)checkOutTile:(void *)a3 withIdentifier:(PXTileIdentifier *)a4;
@end

@implementation PXPhotosDetailsInlinePlaybackController

- (PXPhotosDetailsInlinePlaybackControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)canPlayAsset:(id)a3
{
  v3 = [a3 playbackStyle];
  v4 = 0;
  if (v3 > 3)
  {
    if (v3 == 5)
    {
      v5 = +[PXAssetsSceneSettings sharedInstance];
      v6 = [v5 allowLoopingVideoPlayback];
      goto LABEL_10;
    }

    if (v3 == 4)
    {
      v5 = +[PXAssetsSceneSettings sharedInstance];
      v6 = [v5 allowVideoPlayback];
      goto LABEL_10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v5 = +[PXAssetsSceneSettings sharedInstance];
      v6 = [v5 allowAnimatedImagePlayback];
      goto LABEL_10;
    }

    if (v3 == 3)
    {
      v5 = +[PXAssetsSceneSettings sharedInstance];
      v6 = [v5 allowLivePhotoPlayback];
LABEL_10:
      v4 = v6;
    }
  }

  return v4;
}

- (CGRect)frameForPlaybackRecord:(id)a3 minPlayableSize:(CGSize *)a4
{
  v5 = a3;
  v6 = [(PXPhotosDetailsInlinePlaybackController *)self tilingController];
  v7 = [v6 currentLayout];

  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  [(PXPhotosDetailsInlinePlaybackController *)self _currentTileIdentifierForRecord:v5];

  v8 = *MEMORY[0x1E695F050];
  v14 = *(MEMORY[0x1E695F050] + 8);
  v9 = *(MEMORY[0x1E695F050] + 24);

  v11 = *(&v14 + 1);
  v10 = *&v14;
  v12 = v8;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v12;
  return result;
}

- (CGRect)currentVisibleRect
{
  v2 = [(PXPhotosDetailsInlinePlaybackController *)self tilingController];
  v3 = [v2 currentLayout];
  [v3 visibleRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)createPlaybackRecordForDisplayAsset:(id)a3 mediaProvider:(id)a4 geometryReference:(id)a5 spriteSize:(CGSize)a6 displayScale:(double)a7
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[_PXDetailsPlaybackRecord alloc] initWithDisplayAsset:v11 mediaProvider:v10 geometryReference:v9];

  return v12;
}

- (BOOL)shouldEnablePlayback
{
  v3 = [(PXPhotosDetailsInlinePlaybackController *)self delegate];
  if (v3)
  {
    v4 = [(PXPhotosDetailsInlinePlaybackController *)self delegate];
    v5 = [v4 shouldEnablePlaybackForController:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)checkInTile:(void *)a3 withIdentifier:(PXTileIdentifier *)a4
{
  v6 = *&a4->index[5];
  v17 = *&a4->index[3];
  v18 = v6;
  v19 = *&a4->index[7];
  v20 = a4->index[9];
  v7 = *&a4->index[1];
  *location = *&a4->length;
  v16 = v7;
  if ([(PXPhotosDetailsInlinePlaybackController *)self _isRecognizedTileIdentifier:location])
  {
    v8 = [a3 imageRequester];
    v9 = [v8 asset];

    [(PXGridInlinePlaybackController *)self willCheckInPlaybackRecordForDisplayAsset:v9];
    objc_initWeak(location, self);
    recordCreationQueue = self->_recordCreationQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__PXPhotosDetailsInlinePlaybackController_checkInTile_withIdentifier___block_invoke;
    v12[3] = &unk_1E774B248;
    objc_copyWeak(&v14, location);
    v13 = v9;
    v11 = v9;
    dispatch_async(recordCreationQueue, v12);

    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
  }
}

void __70__PXPhotosDetailsInlinePlaybackController_checkInTile_withIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained checkInPlaybackRecordForDisplayAsset:*(a1 + 32)];
}

- (void)checkOutTile:(void *)a3 withIdentifier:(PXTileIdentifier *)a4
{
  v7 = *&a4->index[5];
  location[2] = *&a4->index[3];
  location[3] = v7;
  location[4] = *&a4->index[7];
  v32 = a4->index[9];
  v8 = *&a4->index[1];
  location[0] = *&a4->length;
  location[1] = v8;
  if ([(PXPhotosDetailsInlinePlaybackController *)self _isRecognizedTileIdentifier:location])
  {
    v9 = a3;
    v10 = [v9 imageRequester];
    v11 = [v10 asset];

    v12 = [v9 imageRequester];
    v13 = [v12 mediaProvider];

    objc_initWeak(location, self);
    recordCreationQueue = self->_recordCreationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__PXPhotosDetailsInlinePlaybackController_checkOutTile_withIdentifier___block_invoke;
    block[3] = &unk_1E7747CD8;
    objc_copyWeak(&v24, location);
    v21 = v11;
    v22 = v13;
    v23 = v9;
    v15 = *&a4->index[5];
    v27 = *&a4->index[3];
    v28 = v15;
    v29 = *&a4->index[7];
    v30 = a4->index[9];
    v16 = *&a4->index[1];
    v25 = *&a4->length;
    v26 = v16;
    v17 = v9;
    v18 = v13;
    v19 = v11;
    dispatch_async(recordCreationQueue, block);

    objc_destroyWeak(&v24);
    objc_destroyWeak(location);
  }
}

void __71__PXPhotosDetailsInlinePlaybackController_checkOutTile_withIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__PXPhotosDetailsInlinePlaybackController_checkOutTile_withIdentifier___block_invoke_2;
  v9[3] = &__block_descriptor_120_e34_v16__0___PXDetailsPlaybackRecord_8l;
  v6 = *(a1 + 112);
  v12 = *(a1 + 96);
  v13 = v6;
  v14 = *(a1 + 128);
  v15 = *(a1 + 144);
  v7 = *(a1 + 80);
  v10 = *(a1 + 64);
  v11 = v7;
  v8 = [WeakRetained checkOutPlaybackRecordForDisplayAsset:v3 mediaProvider:v4 geometryReference:v5 spriteSize:v9 displayScale:*MEMORY[0x1E695F060] configurationBlock:{*(MEMORY[0x1E695F060] + 8), 0.0}];
}

uint64_t __71__PXPhotosDetailsInlinePlaybackController_checkOutTile_withIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 80);
  v5[2] = *(a1 + 64);
  v5[3] = v2;
  v5[4] = *(a1 + 96);
  v6 = *(a1 + 112);
  v3 = *(a1 + 48);
  v5[0] = *(a1 + 32);
  v5[1] = v3;
  return [a2 setTileIdentifier:v5];
}

- (PXTileIdentifier)_currentTileIdentifierForRecord:(SEL)a3
{
  v6 = a4;
  v7 = v6;
  *&retstr->length = 0u;
  *&retstr->index[1] = 0u;
  *&retstr->index[3] = 0u;
  *&retstr->index[5] = 0u;
  *&retstr->index[7] = 0u;
  retstr->index[9] = 0;
  if (v6)
  {
    [v6 tileIdentifier];
    v8 = &retstr->index[1];
    if (!retstr->length)
    {
      v8 = off_1E7721F68;
    }
  }

  else
  {
    v8 = off_1E7721F68;
  }

  v9 = *v8;
  v10 = [(PXPhotosDetailsInlinePlaybackController *)self tilingController];
  v11 = [v10 currentLayout];

  if (v9 == *off_1E7721F68 || ([v11 dataSource], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "identifier"), v12, v13 != v9))
  {
    v14 = [(PXPhotosDetailsInlinePlaybackController *)self tilingController];
    v15 = [v7 geometryReference];
    if (v14)
    {
      [v14 tileIdentifierForTile:v15];
    }

    else
    {
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
    }

    v16 = v24;
    *&retstr->index[3] = v23;
    *&retstr->index[5] = v16;
    *&retstr->index[7] = v25;
    retstr->index[9] = v26;
    v17 = v22;
    *&retstr->length = v21;
    *&retstr->index[1] = v17;

    v18 = *&retstr->index[5];
    v23 = *&retstr->index[3];
    v24 = v18;
    v25 = *&retstr->index[7];
    v26 = retstr->index[9];
    v19 = *&retstr->index[1];
    v21 = *&retstr->length;
    v22 = v19;
    [v7 setTileIdentifier:&v21];
  }

  return result;
}

- (PXPhotosDetailsInlinePlaybackController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsInlinePlaybackController.m" lineNumber:52 description:{@"%s is not available as initializer", "-[PXPhotosDetailsInlinePlaybackController init]"}];

  abort();
}

- (PXPhotosDetailsInlinePlaybackController)initWithTilingController:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PXPhotosDetailsInlinePlaybackController;
  v6 = [(PXGridInlinePlaybackController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tilingController, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_USER_INITIATED, 0);

    v10 = dispatch_queue_create("com.apple.photos.details.PlaybackRecordCreation", v9);
    recordCreationQueue = v7->_recordCreationQueue;
    v7->_recordCreationQueue = v10;
  }

  return v7;
}

@end