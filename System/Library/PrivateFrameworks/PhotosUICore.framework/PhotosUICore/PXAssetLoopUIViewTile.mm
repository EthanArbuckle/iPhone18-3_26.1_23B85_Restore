@interface PXAssetLoopUIViewTile
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)bestPlaybackTimeRange;
- (CGRect)desiredContentsRect;
- (CGSize)contentSize;
- (PXAssetLoopUIViewTile)init;
- (UIView)view;
- (void)_reloadVideoSessionIfNecessary;
- (void)_updateDesiredDynamicRange;
- (void)_updateImageRequester;
- (void)_updateLayer;
- (void)_updateVideoSession;
- (void)becomeReusable;
- (void)dealloc;
- (void)didApplyGeometry:(PXTileGeometry *)a3 withUserData:(id)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setBestPlaybackTimeRange:(id *)a3;
- (void)setCornerRadius:(double)a3;
- (void)setDesiredPlayState:(int64_t)a3;
- (void)setImageRequester:(id)a3;
- (void)setVideoSession:(id)a3;
@end

@implementation PXAssetLoopUIViewTile

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)desiredContentsRect
{
  x = self->_desiredContentsRect.origin.x;
  y = self->_desiredContentsRect.origin.y;
  width = self->_desiredContentsRect.size.width;
  height = self->_desiredContentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setBestPlaybackTimeRange:(id *)a3
{
  v3 = *&a3->var0.var0;
  v4 = *&a3->var1.var1;
  *&self->_bestPlaybackTimeRange.start.epoch = *&a3->var0.var3;
  *&self->_bestPlaybackTimeRange.duration.timescale = v4;
  *&self->_bestPlaybackTimeRange.start.value = v3;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)bestPlaybackTimeRange
{
  v3 = *&self[2].var1.var1;
  *&retstr->var0.var0 = *&self[2].var0.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[3].var0.var0;
  return self;
}

- (void)dealloc
{
  v3 = +[PXVideoSessionManager sharedInstance];
  [v3 checkInVideoSession:self->_videoSession];

  v4.receiver = self;
  v4.super_class = PXAssetLoopUIViewTile;
  [(PXAssetLoopUIViewTile *)&v4 dealloc];
}

- (void)setVideoSession:(id)a3
{
  v5 = a3;
  if (self->_videoSession != v5)
  {
    v6 = +[PXVideoSessionManager sharedInstance];
    [v6 checkInVideoSession:self->_videoSession];

    [(PXVideoSession *)self->_videoSession unregisterChangeObserver:self context:VideoSessionContext_27800];
    objc_storeStrong(&self->_videoSession, a3);
    [(PXVideoSession *)self->_videoSession registerChangeObserver:self context:VideoSessionContext_27800];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__PXAssetLoopUIViewTile_setVideoSession___block_invoke;
    v7[3] = &unk_1E7731938;
    v7[4] = self;
    [(PXVideoSession *)v5 performChanges:v7 withPresentationContext:0 presenter:0];
    [(PXVideoSessionUIView *)self->_videoView setVideoSession:v5];
    [(PXAssetLoopUIViewTile *)self _updateDesiredDynamicRange];
  }
}

void __41__PXAssetLoopUIViewTile_setVideoSession___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setVolume:1 withFade:0.0];
  [v3 setAudioSessionCategory:*MEMORY[0x1E6958038] mode:*MEMORY[0x1E6958130] routeSharingPolicy:0 options:0];
  [v3 setDesiredPlayState:{objc_msgSend(*(a1 + 32), "desiredPlayState") == 1}];
}

- (void)_updateDesiredDynamicRange
{
  v3 = [(PXAssetLoopUIViewTile *)self imageRequester];
  v10 = [v3 asset];

  if (([v10 mediaSubtypes] & 0x100000) != 0)
  {
    v4 = [(PXAssetLoopUIViewTile *)self videoSession];
    v5 = [v4 playState];

    v6 = [(PXAssetLoopUIViewTile *)self view];
    v7 = [v6 layer];
    v8 = [v7 context];

    LODWORD(v9) = 1065361605;
    if (v5 != 3)
    {
      *&v9 = 1.0;
    }

    [v8 setDesiredDynamicRange:v9];
  }
}

- (void)_reloadVideoSessionIfNecessary
{
  v3 = [(PXAssetLoopUIViewTile *)self imageRequester];
  v4 = [v3 asset];

  v5 = [(PXAssetLoopUIViewTile *)self imageRequester];
  v6 = [v5 mediaProvider];

  v7 = 0;
  if (v4 && v6)
  {
    v8 = [(PXAssetLoopUIViewTile *)self view];
    v7 = [(PXVideoSessionManagerDisplayAssetOptions *)v8 window];
    if (v7)
    {
      v9 = [(PXAssetLoopUIViewTile *)self view];
      if ([v9 isHidden])
      {

LABEL_9:
        v7 = 0;
        goto LABEL_10;
      }

      v10 = [(PXAssetLoopUIViewTile *)self desiredPlayState];

      if (v10 != 1)
      {
        goto LABEL_9;
      }

      v8 = objc_alloc_init(PXVideoSessionManagerDisplayAssetOptions);
      [(PXVideoSessionManagerDisplayAssetOptions *)v8 setShouldStabilizeLivePhotosIfPossible:1];
      [(PXVideoSessionManagerDisplayAssetOptions *)v8 setShouldCrossfadeLivePhotosWhenLooping:1];
      [(PXAssetLoopUIViewTile *)self bestPlaybackTimeRange];
      v18[0] = v18[3];
      v18[1] = v18[4];
      v18[2] = v18[5];
      [(PXVideoSessionManagerDisplayAssetOptions *)v8 setLivePhotoLoopTimeRange:v18];
      v11 = +[PXVideoSessionManager sharedInstance];
      v7 = [v11 videoSessionForAsset:v4 withOptions:v8 mediaProvider:v6];

      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __55__PXAssetLoopUIViewTile__reloadVideoSessionIfNecessary__block_invoke;
      v15 = &unk_1E772CEB8;
      v16 = v4;
      v17 = self;
      [v7 performChanges:&v12 withPresentationContext:0 presenter:0];
      [v7 loadIfNeededWithPriority:{0, v12, v13, v14, v15}];
    }
  }

LABEL_10:
  [(PXAssetLoopUIViewTile *)self setVideoSession:v7];
}

void __55__PXAssetLoopUIViewTile__reloadVideoSessionIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setLoopingEnabled:1];
  [v3 setVolume:1 withFade:0.0];
  if ([*(a1 + 32) playbackStyle] == 3)
  {
    v4 = *(MEMORY[0x1E6960C98] + 16);
    v7 = *MEMORY[0x1E6960C98];
    v8 = v4;
    v5 = *(MEMORY[0x1E6960C98] + 32);
  }

  else
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      [v6 bestPlaybackTimeRange];
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
      v10 = 0u;
    }

    v7 = v10;
    v8 = v11;
    v5 = v12;
  }

  v9 = v5;
  [v3 setPlaybackTimeRange:&v7];
}

- (void)_updateVideoSession
{
  v3 = [(PXAssetLoopUIViewTile *)self desiredPlayState];
  v4 = [(PXAssetLoopUIViewTile *)self videoSession];
  v6 = v4;
  if (v3 != 1)
  {
    v5 = &__block_literal_global_12;
    goto LABEL_5;
  }

  if (v4)
  {
    v5 = &__block_literal_global_1476;
LABEL_5:
    [v4 performChanges:v5 withPresentationContext:0 presenter:0];
    goto LABEL_6;
  }

  [(PXAssetLoopUIViewTile *)self _reloadVideoSessionIfNecessary];
LABEL_6:
}

- (void)_updateImageRequester
{
  [(PXAssetLoopUIViewTile *)self contentSize];
  v4 = v3;
  v6 = v5;
  [(PXAssetLoopUIViewTile *)self desiredContentsRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(PXVideoSessionUIView *)self->_videoView bounds];
  v16 = v15;
  v18 = v17;
  v19 = [(PXAssetLoopUIViewTile *)self imageRequester];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __46__PXAssetLoopUIViewTile__updateImageRequester__block_invoke;
  v20[3] = &__block_descriptor_96_e35_v16__0___PXMutableImageRequester__8l;
  v20[4] = v4;
  v20[5] = v6;
  v20[6] = v8;
  v20[7] = v10;
  v20[8] = v12;
  v20[9] = v14;
  v20[10] = v16;
  v20[11] = v18;
  [v19 performChanges:v20];
}

void __46__PXAssetLoopUIViewTile__updateImageRequester__block_invoke(double *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v5 setContentSize:{v3, v4}];
  [v5 setDesiredContentsRect:{a1[6], a1[7], a1[8], a1[9]}];
  [v5 setViewportSize:{a1[10], a1[11]}];
}

- (void)_updateLayer
{
  [(PXAssetLoopUIViewTile *)self cornerRadius];
  if (v3 <= 0.0)
  {
    v9 = [(_PXAssetLoopUIView *)self->_view layer];
    [v9 setCornerRadius:0.0];
  }

  else
  {
    [(PXAssetLoopUIViewTile *)self cornerRadius];
    v5 = v4;
    v6 = [(_PXAssetLoopUIView *)self->_view layer];
    [v6 setCornerRadius:v5];

    v7 = *MEMORY[0x1E69796E8];
    v8 = [(_PXAssetLoopUIView *)self->_view layer];
    [v8 setCornerCurve:v7];

    v9 = [(_PXAssetLoopUIView *)self->_view layer];
    [v9 setAllowsGroupOpacity:0];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (ImageRequesterContext == a5)
  {
    if ((v6 & 4) != 0)
    {
      v14[5] = MEMORY[0x1E69E9820];
      v14[6] = 3221225472;
      v14[7] = __54__PXAssetLoopUIViewTile_observable_didChange_context___block_invoke;
      v14[8] = &unk_1E774C648;
      v14[9] = self;
      px_dispatch_on_main_queue();
    }

    if (v6)
    {
      v10 = v14;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v11 = __54__PXAssetLoopUIViewTile_observable_didChange_context___block_invoke_2;
LABEL_9:
      v10[2] = v11;
      v10[3] = &unk_1E774C648;
      v10[4] = self;
      px_dispatch_on_main_queue();
    }
  }

  else
  {
    if (VideoSessionContext_27800 != a5)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXAssetLoopUIViewTile.m" lineNumber:172 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((v6 & 4) != 0)
    {
      v10 = v13;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v11 = __54__PXAssetLoopUIViewTile_observable_didChange_context___block_invoke_3;
      goto LABEL_9;
    }
  }
}

void __54__PXAssetLoopUIViewTile_observable_didChange_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageRequester];
  v3 = [v2 image];
  [*(*(a1 + 32) + 32) setPlaceholderImage:v3];

  v4 = [*(a1 + 32) imageRequester];
  [v4 contentsRect];
  [*(*(a1 + 32) + 32) setContentsRect:?];
}

- (void)setDesiredPlayState:(int64_t)a3
{
  if (self->_desiredPlayState != a3)
  {
    self->_desiredPlayState = a3;
    [(PXAssetLoopUIViewTile *)self _updateVideoSession];
  }
}

- (void)setCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    [(PXAssetLoopUIViewTile *)self _updateLayer];
  }
}

- (void)setImageRequester:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_imageRequester != v5)
  {
    v10 = v5;
    v7 = [(PXImageRequester *)v5 isEqual:?];
    v6 = v10;
    if ((v7 & 1) == 0)
    {
      v8 = [(PXVideoSession *)self->_videoSession contentProvider];
      [v8 cancelLoading];

      [(PXImageRequester *)self->_imageRequester unregisterChangeObserver:self context:ImageRequesterContext];
      objc_storeStrong(&self->_imageRequester, a3);
      [(PXImageRequester *)self->_imageRequester registerChangeObserver:self context:ImageRequesterContext];
      v9 = [(PXImageRequester *)self->_imageRequester image];
      [(PXVideoSessionUIView *)self->_videoView setPlaceholderImage:v9];

      [(PXAssetLoopUIViewTile *)self _updateImageRequester];
      [(PXAssetLoopUIViewTile *)self _reloadVideoSessionIfNecessary];
      v6 = v10;
    }
  }
}

- (UIView)view
{
  view = self->_view;
  if (!view)
  {
    objc_initWeak(&location, self);
    v4 = [_PXAssetLoopUIView alloc];
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [(_PXAssetLoopUIView *)v4 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
    v10 = self->_view;
    self->_view = v9;

    [(_PXAssetLoopUIView *)self->_view setUserInteractionEnabled:0];
    [(_PXAssetLoopUIView *)self->_view setClipsToBounds:1];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __29__PXAssetLoopUIViewTile_view__block_invoke;
    v23 = &unk_1E774C318;
    objc_copyWeak(&v24, &location);
    [(_PXAssetLoopUIView *)self->_view setVisibilityChangeHandler:&v20];
    v11 = [PXAssetsSceneSettings sharedInstance:v20];
    v12 = [v11 showBordersOnAnimatedContent];

    if (v12)
    {
      v13 = [MEMORY[0x1E69DC888] greenColor];
      v14 = [v13 CGColor];
      v15 = [(_PXAssetLoopUIView *)self->_view layer];
      [v15 setBorderColor:v14];

      v16 = [(_PXAssetLoopUIView *)self->_view layer];
      [v16 setBorderWidth:4.0];
    }

    v17 = [[PXVideoSessionUIView alloc] initWithFrame:v5, v6, v7, v8];
    videoView = self->_videoView;
    self->_videoView = v17;

    [(PXVideoSessionUIView *)self->_videoView setAutoresizingMask:18];
    [(PXAssetLoopUIViewTile *)self _updateLayer];
    [(_PXAssetLoopUIView *)self->_view addSubview:self->_videoView];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
    view = self->_view;
  }

  return view;
}

void __29__PXAssetLoopUIViewTile_view__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadVideoSessionIfNecessary];
}

- (void)didApplyGeometry:(PXTileGeometry *)a3 withUserData:(id)a4
{
  [(PXVideoSessionUIView *)self->_videoView setContentsRect:a3->contentsRect.origin.x, a3->contentsRect.origin.y, a3->contentsRect.size.width, a3->contentsRect.size.height];
  [(PXAssetLoopUIViewTile *)self setDesiredContentsRect:a3->contentsRect.origin.x, a3->contentsRect.origin.y, a3->contentsRect.size.width, a3->contentsRect.size.height];
  [(PXAssetLoopUIViewTile *)self setContentSize:a3->contentSize.width, a3->contentSize.height];

  [(PXAssetLoopUIViewTile *)self _updateImageRequester];
}

- (void)becomeReusable
{
  [(_PXAssetLoopUIView *)self->_view setHidden:1];
  [(PXAssetLoopUIViewTile *)self setImageRequester:0];
  [(PXAssetLoopUIViewTile *)self setVideoSession:0];
  self->_desiredPlayState = 1;
}

- (PXAssetLoopUIViewTile)init
{
  v3.receiver = self;
  v3.super_class = PXAssetLoopUIViewTile;
  result = [(PXAssetLoopUIViewTile *)&v3 init];
  if (result)
  {
    result->_desiredPlayState = 1;
  }

  return result;
}

@end