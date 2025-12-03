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
- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setBestPlaybackTimeRange:(id *)range;
- (void)setCornerRadius:(double)radius;
- (void)setDesiredPlayState:(int64_t)state;
- (void)setImageRequester:(id)requester;
- (void)setVideoSession:(id)session;
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

- (void)setBestPlaybackTimeRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var1.var1;
  *&self->_bestPlaybackTimeRange.start.epoch = *&range->var0.var3;
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

- (void)setVideoSession:(id)session
{
  sessionCopy = session;
  if (self->_videoSession != sessionCopy)
  {
    v6 = +[PXVideoSessionManager sharedInstance];
    [v6 checkInVideoSession:self->_videoSession];

    [(PXVideoSession *)self->_videoSession unregisterChangeObserver:self context:VideoSessionContext_27800];
    objc_storeStrong(&self->_videoSession, session);
    [(PXVideoSession *)self->_videoSession registerChangeObserver:self context:VideoSessionContext_27800];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__PXAssetLoopUIViewTile_setVideoSession___block_invoke;
    v7[3] = &unk_1E7731938;
    v7[4] = self;
    [(PXVideoSession *)sessionCopy performChanges:v7 withPresentationContext:0 presenter:0];
    [(PXVideoSessionUIView *)self->_videoView setVideoSession:sessionCopy];
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
  imageRequester = [(PXAssetLoopUIViewTile *)self imageRequester];
  asset = [imageRequester asset];

  if (([asset mediaSubtypes] & 0x100000) != 0)
  {
    videoSession = [(PXAssetLoopUIViewTile *)self videoSession];
    playState = [videoSession playState];

    view = [(PXAssetLoopUIViewTile *)self view];
    layer = [view layer];
    context = [layer context];

    LODWORD(v9) = 1065361605;
    if (playState != 3)
    {
      *&v9 = 1.0;
    }

    [context setDesiredDynamicRange:v9];
  }
}

- (void)_reloadVideoSessionIfNecessary
{
  imageRequester = [(PXAssetLoopUIViewTile *)self imageRequester];
  asset = [imageRequester asset];

  imageRequester2 = [(PXAssetLoopUIViewTile *)self imageRequester];
  mediaProvider = [imageRequester2 mediaProvider];

  window = 0;
  if (asset && mediaProvider)
  {
    view = [(PXAssetLoopUIViewTile *)self view];
    window = [(PXVideoSessionManagerDisplayAssetOptions *)view window];
    if (window)
    {
      view2 = [(PXAssetLoopUIViewTile *)self view];
      if ([view2 isHidden])
      {

LABEL_9:
        window = 0;
        goto LABEL_10;
      }

      desiredPlayState = [(PXAssetLoopUIViewTile *)self desiredPlayState];

      if (desiredPlayState != 1)
      {
        goto LABEL_9;
      }

      view = objc_alloc_init(PXVideoSessionManagerDisplayAssetOptions);
      [(PXVideoSessionManagerDisplayAssetOptions *)view setShouldStabilizeLivePhotosIfPossible:1];
      [(PXVideoSessionManagerDisplayAssetOptions *)view setShouldCrossfadeLivePhotosWhenLooping:1];
      [(PXAssetLoopUIViewTile *)self bestPlaybackTimeRange];
      v18[0] = v18[3];
      v18[1] = v18[4];
      v18[2] = v18[5];
      [(PXVideoSessionManagerDisplayAssetOptions *)view setLivePhotoLoopTimeRange:v18];
      v11 = +[PXVideoSessionManager sharedInstance];
      window = [v11 videoSessionForAsset:asset withOptions:view mediaProvider:mediaProvider];

      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __55__PXAssetLoopUIViewTile__reloadVideoSessionIfNecessary__block_invoke;
      v15 = &unk_1E772CEB8;
      v16 = asset;
      selfCopy = self;
      [window performChanges:&v12 withPresentationContext:0 presenter:0];
      [window loadIfNeededWithPriority:{0, v12, v13, v14, v15}];
    }
  }

LABEL_10:
  [(PXAssetLoopUIViewTile *)self setVideoSession:window];
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
  desiredPlayState = [(PXAssetLoopUIViewTile *)self desiredPlayState];
  videoSession = [(PXAssetLoopUIViewTile *)self videoSession];
  v6 = videoSession;
  if (desiredPlayState != 1)
  {
    v5 = &__block_literal_global_12;
    goto LABEL_5;
  }

  if (videoSession)
  {
    v5 = &__block_literal_global_1476;
LABEL_5:
    [videoSession performChanges:v5 withPresentationContext:0 presenter:0];
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
  imageRequester = [(PXAssetLoopUIViewTile *)self imageRequester];
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
  [imageRequester performChanges:v20];
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
    layer = [(_PXAssetLoopUIView *)self->_view layer];
    [layer setCornerRadius:0.0];
  }

  else
  {
    [(PXAssetLoopUIViewTile *)self cornerRadius];
    v5 = v4;
    layer2 = [(_PXAssetLoopUIView *)self->_view layer];
    [layer2 setCornerRadius:v5];

    v7 = *MEMORY[0x1E69796E8];
    layer3 = [(_PXAssetLoopUIView *)self->_view layer];
    [layer3 setCornerCurve:v7];

    layer = [(_PXAssetLoopUIView *)self->_view layer];
    [layer setAllowsGroupOpacity:0];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (ImageRequesterContext == context)
  {
    if ((changeCopy & 4) != 0)
    {
      v14[5] = MEMORY[0x1E69E9820];
      v14[6] = 3221225472;
      v14[7] = __54__PXAssetLoopUIViewTile_observable_didChange_context___block_invoke;
      v14[8] = &unk_1E774C648;
      v14[9] = self;
      px_dispatch_on_main_queue();
    }

    if (changeCopy)
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
    if (VideoSessionContext_27800 != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetLoopUIViewTile.m" lineNumber:172 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((changeCopy & 4) != 0)
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

- (void)setDesiredPlayState:(int64_t)state
{
  if (self->_desiredPlayState != state)
  {
    self->_desiredPlayState = state;
    [(PXAssetLoopUIViewTile *)self _updateVideoSession];
  }
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    [(PXAssetLoopUIViewTile *)self _updateLayer];
  }
}

- (void)setImageRequester:(id)requester
{
  requesterCopy = requester;
  v6 = requesterCopy;
  if (self->_imageRequester != requesterCopy)
  {
    v10 = requesterCopy;
    v7 = [(PXImageRequester *)requesterCopy isEqual:?];
    v6 = v10;
    if ((v7 & 1) == 0)
    {
      contentProvider = [(PXVideoSession *)self->_videoSession contentProvider];
      [contentProvider cancelLoading];

      [(PXImageRequester *)self->_imageRequester unregisterChangeObserver:self context:ImageRequesterContext];
      objc_storeStrong(&self->_imageRequester, requester);
      [(PXImageRequester *)self->_imageRequester registerChangeObserver:self context:ImageRequesterContext];
      image = [(PXImageRequester *)self->_imageRequester image];
      [(PXVideoSessionUIView *)self->_videoView setPlaceholderImage:image];

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
    showBordersOnAnimatedContent = [v11 showBordersOnAnimatedContent];

    if (showBordersOnAnimatedContent)
    {
      greenColor = [MEMORY[0x1E69DC888] greenColor];
      cGColor = [greenColor CGColor];
      layer = [(_PXAssetLoopUIView *)self->_view layer];
      [layer setBorderColor:cGColor];

      layer2 = [(_PXAssetLoopUIView *)self->_view layer];
      [layer2 setBorderWidth:4.0];
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

- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data
{
  [(PXVideoSessionUIView *)self->_videoView setContentsRect:geometry->contentsRect.origin.x, geometry->contentsRect.origin.y, geometry->contentsRect.size.width, geometry->contentsRect.size.height];
  [(PXAssetLoopUIViewTile *)self setDesiredContentsRect:geometry->contentsRect.origin.x, geometry->contentsRect.origin.y, geometry->contentsRect.size.width, geometry->contentsRect.size.height];
  [(PXAssetLoopUIViewTile *)self setContentSize:geometry->contentSize.width, geometry->contentSize.height];

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