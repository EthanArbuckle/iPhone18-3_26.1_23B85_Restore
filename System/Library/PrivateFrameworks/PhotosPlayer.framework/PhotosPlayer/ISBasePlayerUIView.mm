@interface ISBasePlayerUIView
+ (id)audioSessionQueue;
+ (id)livePhotoAudioSession;
+ (void)_handleAVResourceReclamationEvent:(id)event;
- (BOOL)isDisplayingPhoto;
- (BOOL)isVideoReadyForDisplay;
- (CGPoint)scaleAnchorOffset;
- (CGRect)contentsRect;
- (ISBasePlayerUIView)initWithCoder:(id)coder;
- (ISBasePlayerUIView)initWithFrame:(CGRect)frame;
- (ISBasePlayerUIViewChangeObserver)_changeObserver;
- (id)generateSnapshotImage;
- (void)_performCommonInitialization;
- (void)_setChangeObserver:(id)observer;
- (void)_setWrappedAudioSession:(id)session;
- (void)_signalChange:(unint64_t)change withAnimationDuration:(double)duration;
- (void)_updateAudioSession;
- (void)_updatePhotoView;
- (void)_updatePhotoViewDynamicRange;
- (void)_updatePlayerAudioSession;
- (void)_updateVideoViewsFrameWithContainerBounds:(CGRect)bounds;
- (void)_videoViewReadyForDisplayDidChange;
- (void)applyOutputInfo:(id)info withTransitionOptions:(id)options completion:(id)completion;
- (void)applyScale:(double)scale withTransitionOptions:(id)options completion:(id)completion;
- (void)layoutSubviews;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)registerChangeObserver:(id)observer;
- (void)setContent:(id)content;
- (void)setContentMode:(int64_t)mode;
- (void)setContentsRect:(CGRect)rect;
- (void)setCustomPhotoView:(id)view;
- (void)setOverrideImage:(id)image;
- (void)setPlayer:(id)player;
- (void)setPreferredImageDynamicRange:(int64_t)range;
- (void)setScaleAnchorOffset:(CGPoint)offset;
- (void)setVideoFilter:(id)filter;
- (void)setVideoTransform:(id)transform;
- (void)unregisterChangeObserver:(id)observer;
@end

@implementation ISBasePlayerUIView

- (ISBasePlayerUIViewChangeObserver)_changeObserver
{
  WeakRetained = objc_loadWeakRetained(&self->__changeObserver);

  return WeakRetained;
}

- (CGRect)contentsRect
{
  x = self->_contentsRect.origin.x;
  y = self->_contentsRect.origin.y;
  width = self->_contentsRect.size.width;
  height = self->_contentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)scaleAnchorOffset
{
  x = self->_scaleAnchorOffset.x;
  y = self->_scaleAnchorOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if ((change & 4) != 0 && ISBasePlayerUIViewPlayerObservationContext == context)
  {
    [(ISBasePlayerUIView *)self _updatePlayerAudioSession];
  }
}

- (void)_updatePhotoView
{
  photoView = [(ISBasePlayerUIView *)self photoView];
  customPhotoView = [(ISBasePlayerUIView *)self customPhotoView];
  containerView = [(ISBasePlayerUIView *)self containerView];
  v5 = self->_content;
  v6 = v5;
  if (customPhotoView && (!v5 || [(ISPlayerOutputContent *)v5 photoIsOriginal]))
  {
    [photoView removeFromSuperview];
    superview = [customPhotoView superview];

    if (superview == containerView)
    {
      goto LABEL_9;
    }

    v8 = containerView;
    v9 = customPhotoView;
  }

  else
  {
    superview2 = [photoView superview];

    if (superview2)
    {
      goto LABEL_9;
    }

    [customPhotoView removeFromSuperview];
    v8 = containerView;
    v9 = photoView;
  }

  [v8 insertSubview:v9 atIndex:0];
LABEL_9:
  [(ISBasePlayerUIView *)self setNeedsLayout];
}

- (void)setOverrideImage:(id)image
{
  imageCopy = image;
  if (self->_overrideImage != imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(&self->_overrideImage, image);
    photoView = [(ISBasePlayerUIView *)self photoView];
    [photoView setImage:v7];

    imageCopy = v7;
  }
}

- (BOOL)isDisplayingPhoto
{
  videoContainerView = [(ISBasePlayerUIView *)self videoContainerView];
  [videoContainerView alpha];
  v4 = v3 == 0.0;

  return v4;
}

- (id)generateSnapshotImage
{
  videoView = [(ISBasePlayerUIView *)self videoView];
  videoContainerView = [(ISBasePlayerUIView *)self videoContainerView];
  [videoContainerView alpha];
  v6 = v5;

  if (v6 <= 0.0)
  {
    photoView = [(ISBasePlayerUIView *)self photoView];
    image = [photoView image];
  }

  else
  {
    photoView = [videoView videoPlayer];
    currentItem = [photoView currentItem];
    asset = [currentItem asset];

    currentItem2 = [photoView currentItem];
    videoComposition = [currentItem2 videoComposition];

    v29 = 0uLL;
    v30 = 0;
    if (photoView)
    {
      [photoView currentTime];
    }

    v12 = [objc_alloc(MEMORY[0x277CE6408]) initWithAsset:asset];
    [(ISBasePlayerUIView *)self bounds];
    v14 = v13;
    v16 = v15;
    traitCollection = [(ISBasePlayerUIView *)self traitCollection];
    [traitCollection displayScale];
    v19 = v18;

    if (v19 == 0.0)
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      v19 = v21;
    }

    [v12 setMaximumSize:{v14 * v19, v16 * v19}];
    [v12 setAppliesPreferredTrackTransform:1];
    v27 = *MEMORY[0x277CC08F0];
    v26 = v27;
    v28 = *(MEMORY[0x277CC08F0] + 16);
    v22 = v28;
    [v12 setRequestedTimeToleranceAfter:&v27];
    v27 = v26;
    v28 = v22;
    [v12 setRequestedTimeToleranceBefore:&v27];
    [v12 setVideoComposition:videoComposition];
    [v12 setApertureMode:*MEMORY[0x277CE5CB0]];
    v27 = v29;
    v28 = v30;
    v23 = [MEMORY[0x277D3B450] copyCGImageFromImageGenerator:v12 atTime:&v27 actualTime:0 error:0];
    image = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v23];
    CGImageRelease(v23);
  }

  return image;
}

- (void)setContent:(id)content
{
  contentCopy = content;
  v6 = contentCopy;
  if (self->_content != contentCopy)
  {
    v18 = contentCopy;
    contentCopy = [(ISPlayerOutputContent *)contentCopy isEqual:?];
    v6 = v18;
    if ((contentCopy & 1) == 0)
    {
      objc_storeStrong(&self->_content, content);
      photoView = [(ISBasePlayerUIView *)self photoView];
      videoView = [(ISBasePlayerUIView *)self videoView];
      overrideImage = [(ISBasePlayerUIView *)self overrideImage];

      if (overrideImage)
      {
        overrideImage2 = [(ISBasePlayerUIView *)self overrideImage];
      }

      else
      {
        photo = [(ISPlayerOutputContent *)v18 photo];
        image = [photoView image];
        cGImage = [image CGImage];

        if (photo == cGImage)
        {
          goto LABEL_6;
        }

        if (!photo)
        {
          [photoView setImage:0];
          goto LABEL_6;
        }

        [(ISPlayerOutputContent *)v18 photoEXIFOrientation];
        overrideImage2 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:photo scale:PLImageOrientationFromExifOrientation() orientation:1.0];
      }

      v11 = overrideImage2;
      [photoView setImage:overrideImage2];

LABEL_6:
      videoPlayer = [(ISPlayerOutputContent *)v18 videoPlayer];
      [videoView setVideoPlayer:videoPlayer];
      videoPlayer2 = [(ISPlayerOutputContent *)v18 videoPlayer];
      videoBlurView = [(ISBasePlayerUIView *)self videoBlurView];
      [videoBlurView setVideoPlayer:videoPlayer2];

      [(ISBasePlayerUIView *)self _updatePhotoView];
      [(ISBasePlayerUIView *)self setNeedsLayout];

      v6 = v18;
    }
  }

  MEMORY[0x2821F96F8](contentCopy, v6);
}

- (void)applyOutputInfo:(id)info withTransitionOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  infoCopy = info;
  [(ISBasePlayerUIView *)self layoutIfNeeded];
  videoContainerView = [(ISBasePlayerUIView *)self videoContainerView];
  photoView = [(ISBasePlayerUIView *)self photoView];
  customPhotoView = [(ISBasePlayerUIView *)self customPhotoView];
  isDisplayingPhoto = [(ISBasePlayerUIView *)self isDisplayingPhoto];
  layer = [customPhotoView layer];
  v15 = layer;
  if (layer)
  {
    layer2 = layer;
  }

  else
  {
    layer2 = [photoView layer];
  }

  v17 = layer2;

  v18 = +[ISTransitionApplier defaultApplier];
  layer3 = [videoContainerView layer];
  [v18 applyOutputInfo:infoCopy withTransitionOptions:optionsCopy toPhotoLayer:v17 videoLayer:layer3 completion:completionCopy];

  v20 = MEMORY[0x277CCABB0];
  [infoCopy videoAlpha];
  v22 = v21;

  v23 = [v20 numberWithDouble:v22];
  videoBlurView = [(ISBasePlayerUIView *)self videoBlurView];
  layer4 = [videoBlurView layer];
  [v18 setValue:v23 forKeyPath:@"opacity" ofLayer:layer4 withTransitionOptions:optionsCopy completion:0];

  if (isDisplayingPhoto != [(ISBasePlayerUIView *)self isDisplayingPhoto])
  {
    [optionsCopy transitionDuration];
    [(ISBasePlayerUIView *)self _signalChange:1 withAnimationDuration:?];
  }
}

- (void)applyScale:(double)scale withTransitionOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  [(ISBasePlayerUIView *)self layoutIfNeeded];
  videoContainerView = [(ISBasePlayerUIView *)self videoContainerView];
  photoView = [(ISBasePlayerUIView *)self photoView];
  customPhotoView = [(ISBasePlayerUIView *)self customPhotoView];
  layer = [customPhotoView layer];
  v13 = layer;
  if (layer)
  {
    layer2 = layer;
  }

  else
  {
    layer2 = [photoView layer];
  }

  v15 = layer2;

  v16 = +[ISTransitionApplier defaultApplier];
  layer3 = [videoContainerView layer];
  [v16 applyScale:optionsCopy withTransitionOptions:v15 toPhotoLayer:layer3 videoLayer:completionCopy completion:scale];
}

- (void)_updatePhotoViewDynamicRange
{
  preferredImageDynamicRange = [(ISBasePlayerUIView *)self preferredImageDynamicRange];
  photoView = [(ISBasePlayerUIView *)self photoView];
  [photoView setPreferredImageDynamicRange:preferredImageDynamicRange];
}

- (void)setPreferredImageDynamicRange:(int64_t)range
{
  if (self->_preferredImageDynamicRange != range)
  {
    self->_preferredImageDynamicRange = range;
    [(ISBasePlayerUIView *)self _updatePhotoViewDynamicRange];
  }
}

- (void)_updateVideoViewsFrameWithContainerBounds:(CGRect)bounds
{
  containerView = [(ISBasePlayerUIView *)self containerView];
  [containerView bounds];
  v6 = v5;
  v8 = v7;

  aspectRatio = [(ISPlayerOutputContent *)self->_content aspectRatio];
  [aspectRatio doubleValue];
  v11 = v10;
  if (v10 == 0.0)
  {
    v11 = 1.0;
    if (v6 != 0.0 && v8 != 0.0)
    {
      v12 = v6 == *MEMORY[0x277D3A858] && v8 == *(MEMORY[0x277D3A858] + 8);
      v13 = fabs(v6 / v8);
      if (v12)
      {
        v11 = 1.0;
      }

      else
      {
        v11 = v13;
      }
    }
  }

  traitCollection = [(ISBasePlayerUIView *)self traitCollection];
  [traitCollection displayScale];
  v16 = v15;

  if (v16 <= 0.0)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v16 = v18;
  }

  [(ISBasePlayerUIView *)self contentsRect];
  PFFrameApplyingContentsRectInBounds();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = [(ISBasePlayerUIView *)self videoView:*&v11];
  [v27 setFrame:{v20, v22, v24, v26}];

  videoBlurView = [(ISBasePlayerUIView *)self videoBlurView];
  [videoBlurView setFrame:{v20, v22, v24, v26}];
}

- (void)_signalChange:(unint64_t)change withAnimationDuration:(double)duration
{
  if (self->_changeObserverRespondsTo.didChangeWithAnimationDuration)
  {
    _changeObserver = [(ISBasePlayerUIView *)self _changeObserver];
    [_changeObserver basePlayerUIView:self didChange:change withAnimationDuration:duration];
  }
}

- (void)_updatePlayerAudioSession
{
  wrappedAudioSession = [(ISBasePlayerUIView *)self wrappedAudioSession];
  if (wrappedAudioSession)
  {
    v6 = wrappedAudioSession;
    player = [(ISBasePlayerUIView *)self player];
    videoPlayer = [player videoPlayer];
    [videoPlayer setWrappedAudioSession:v6];

    wrappedAudioSession = v6;
  }
}

- (void)_updateAudioSession
{
  objc_initWeak(&location, self);
  audioSessionQueue = [objc_opt_class() audioSessionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ISBasePlayerUIView__updateAudioSession__block_invoke;
  block[3] = &unk_279A2A1A8;
  block[4] = self;
  objc_copyWeak(&v5, &location);
  dispatch_async(audioSessionQueue, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __41__ISBasePlayerUIView__updateAudioSession__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() livePhotoAudioSession];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__ISBasePlayerUIView__updateAudioSession__block_invoke_2;
  v5[3] = &unk_279A2A1A8;
  objc_copyWeak(&v7, (a1 + 40));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __41__ISBasePlayerUIView__updateAudioSession__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setWrappedAudioSession:*(a1 + 32)];
}

- (void)setPlayer:(id)player
{
  playerCopy = player;
  player = self->_player;
  if (player != playerCopy)
  {
    v7 = playerCopy;
    [(ISObservable *)player unregisterChangeObserver:self context:ISBasePlayerUIViewPlayerObservationContext];
    [(ISBasePlayer *)self->_player removeOutput:self];
    [(ISBasePlayerUIView *)self setContent:0];
    objc_storeStrong(&self->_player, player);
    [(ISBasePlayer *)self->_player addOutput:self];
    [(ISObservable *)self->_player registerChangeObserver:self context:ISBasePlayerUIViewPlayerObservationContext];
    player = [(ISBasePlayerUIView *)self playerDidChange];
    playerCopy = v7;
  }

  MEMORY[0x2821F96F8](player, playerCopy);
}

- (void)setContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_contentsRect = &self->_contentsRect;
  if (!CGRectEqualToRect(rect, self->_contentsRect))
  {
    p_contentsRect->origin.x = x;
    p_contentsRect->origin.y = y;
    p_contentsRect->size.width = width;
    p_contentsRect->size.height = height;
    [(ISBasePlayerUIView *)self setNeedsLayout];
    photoView = [(ISBasePlayerUIView *)self photoView];
    layer = [photoView layer];
    [layer setContentsRect:{x, y, width, height}];

    videoView = [(ISBasePlayerUIView *)self videoView];
    [videoView setContentsRect:{x, y, width, height}];
  }
}

- (void)setScaleAnchorOffset:(CGPoint)offset
{
  if (offset.x != self->_scaleAnchorOffset.x || offset.y != self->_scaleAnchorOffset.y)
  {
    self->_scaleAnchorOffset = offset;
    [(ISBasePlayerUIView *)self setNeedsLayout];
  }
}

- (void)_videoViewReadyForDisplayDidChange
{
  videoLayerReadyForDisplayChangeHandler = [(ISBasePlayerUIView *)self videoLayerReadyForDisplayChangeHandler];

  if (videoLayerReadyForDisplayChangeHandler)
  {
    videoLayerReadyForDisplayChangeHandler2 = [(ISBasePlayerUIView *)self videoLayerReadyForDisplayChangeHandler];
    videoLayerReadyForDisplayChangeHandler2[2]();
  }
}

- (BOOL)isVideoReadyForDisplay
{
  videoView = [(ISBasePlayerUIView *)self videoView];
  videoLayerReadyForDisplay = [videoView videoLayerReadyForDisplay];

  return videoLayerReadyForDisplay;
}

- (void)_setWrappedAudioSession:(id)session
{
  sessionCopy = session;
  if (self->_wrappedAudioSession != sessionCopy)
  {
    v6 = sessionCopy;
    objc_storeStrong(&self->_wrappedAudioSession, session);
    [(ISBasePlayerUIView *)self audioSessionDidChange];
    sessionCopy = v6;
  }
}

- (void)setCustomPhotoView:(id)view
{
  viewCopy = view;
  customPhotoView = self->_customPhotoView;
  if (customPhotoView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)customPhotoView removeFromSuperview];
    objc_storeStrong(&self->_customPhotoView, view);
    customPhotoView = [(ISBasePlayerUIView *)self _updatePhotoView];
    viewCopy = v7;
  }

  MEMORY[0x2821F96F8](customPhotoView, viewCopy);
}

- (void)setContentMode:(int64_t)mode
{
  if ([(ISBasePlayerUIView *)self contentMode]!= mode)
  {
    v5.receiver = self;
    v5.super_class = ISBasePlayerUIView;
    [(ISBasePlayerUIView *)&v5 setContentMode:mode];
    [(ISBasePlayerUIView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v57.receiver = self;
  v57.super_class = ISBasePlayerUIView;
  [(ISBasePlayerUIView *)&v57 layoutSubviews];
  [(ISBasePlayerUIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  containerView = [(ISBasePlayerUIView *)self containerView];
  photoView = [(ISBasePlayerUIView *)self photoView];
  customPhotoView = [(ISBasePlayerUIView *)self customPhotoView];
  videoView = [(ISBasePlayerUIView *)self videoView];
  videoContainerView = [(ISBasePlayerUIView *)self videoContainerView];
  videoBlurView = [(ISBasePlayerUIView *)self videoBlurView];
  contentMode = [(ISBasePlayerUIView *)self contentMode];
  layer = [videoView layer];
  [layer setMeshTransform:0];

  image = [photoView image];
  [image size];
  if (image)
  {
    v22 = v21 == *(MEMORY[0x277CBF3A8] + 8) && v20 == *MEMORY[0x277CBF3A8];
    if (!v22 && contentMode != 2)
    {
      v24 = v20 / v21;
      v58.origin.x = v4;
      v58.origin.y = v6;
      v58.size.width = v8;
      v58.size.height = v10;
      MidX = CGRectGetMidX(v58);
      v59.origin.x = v4;
      v59.origin.y = v6;
      v59.size.width = v8;
      v59.size.height = v10;
      MidY = CGRectGetMidY(v59);
      if (v8 / v10 > v24)
      {
        v8 = v10 * v24;
      }

      else
      {
        v10 = v8 / v24;
      }

      v4 = MidX + v8 * -0.5;
      v6 = MidY + v10 * -0.5;
    }
  }

  [containerView setFrame:{v4, v6, v8, v10}];
  [containerView bounds];
  x = v60.origin.x;
  y = v60.origin.y;
  width = v60.size.width;
  height = v60.size.height;
  v31 = CGRectGetMidX(v60);
  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  v32 = CGRectGetMidY(v61);
  [photoView setCenter:{v31, v32}];
  [photoView setBounds:{x, y, width, height}];
  [photoView setContentMode:contentMode];
  [customPhotoView setCenter:{v31, v32}];
  [customPhotoView setBounds:{x, y, width, height}];
  [videoContainerView setCenter:{v31, v32}];
  [videoContainerView setBounds:{x, y, width, height}];
  [videoContainerView setContentMode:contentMode];
  [videoView setCenter:{v31, v32}];
  [videoView setBounds:{x, y, width, height}];
  [videoView setContentMode:contentMode];
  [videoBlurView setCenter:{v31, v32}];
  [videoBlurView setBounds:{x, y, width, height}];
  [videoBlurView setContentMode:contentMode];
  [(ISBasePlayerUIView *)self _updateVideoViewsFrameWithContainerBounds:x, y, width, height];
  [(ISBasePlayerUIView *)self scaleAnchorOffset];
  v34 = v33;
  v36 = v35;
  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  v37 = 0.5;
  v38 = 0.5;
  if (!CGRectIsEmpty(v62))
  {
    v63.origin.x = x;
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = height;
    v38 = v34 / CGRectGetWidth(v63) + 0.5;
    v64.origin.x = x;
    v64.origin.y = y;
    v64.size.width = width;
    v64.size.height = height;
    v37 = v36 / CGRectGetHeight(v64) + 0.5;
  }

  layer2 = [photoView layer];
  [layer2 setAnchorPoint:{v38, v37}];

  [photoView center];
  [photoView setCenter:{v40 + v34, v41 + v36}];
  layer3 = [customPhotoView layer];
  [layer3 setAnchorPoint:{v38, v37}];

  [customPhotoView center];
  [customPhotoView setCenter:{v43 + v34, v44 + v36}];
  layer4 = [videoView layer];
  [layer4 setAnchorPoint:{v38, v37}];

  [videoView center];
  [videoView setCenter:{v46 + v34, v47 + v36}];
  layer5 = [videoBlurView layer];
  [layer5 setAnchorPoint:{v38, v37}];

  [videoBlurView center];
  [videoBlurView setCenter:{v49 + v34, v50 + v36}];
  layer6 = [videoContainerView layer];
  [layer6 setAnchorPoint:{v38, v37}];

  [videoContainerView center];
  [videoContainerView setCenter:{v52 + v34, v53 + v36}];
  videoTransform = [(ISBasePlayerUIView *)self videoTransform];
  layer7 = [videoView layer];
  [layer7 setMeshTransform:videoTransform];

  videoTransform2 = [(ISBasePlayerUIView *)self videoTransform];
  [videoBlurView setHidden:videoTransform2 == 0];
}

- (void)setVideoFilter:(id)filter
{
  filterCopy = filter;
  if (self->_videoFilter != filterCopy)
  {
    v8 = filterCopy;
    videoView = [(ISBasePlayerUIView *)self videoView];
    layer = [videoView layer];

    if (self->_videoFilter)
    {
      [layer is_removeFilter:?];
    }

    objc_storeStrong(&self->_videoFilter, filter);
    if (v8)
    {
      [layer is_addFilter:v8];
    }

    filterCopy = v8;
  }
}

- (void)setVideoTransform:(id)transform
{
  transformCopy = transform;
  v5 = transformCopy;
  if (self->_videoTransform != transformCopy)
  {
    v17 = transformCopy;
    transformCopy = [transformCopy isEqual:?];
    v5 = v17;
    if ((transformCopy & 1) == 0)
    {
      v6 = [v17 copy];
      videoTransform = self->_videoTransform;
      self->_videoTransform = v6;

      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] disableActions];
      videoView = [(ISBasePlayerUIView *)self videoView];
      layer = [videoView layer];
      [layer setMeshTransform:v17];

      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      v12 = v11;
      videoView2 = [(ISBasePlayerUIView *)self videoView];
      layer2 = [videoView2 layer];
      [layer2 setRasterizationScale:v12];

      videoTransform = [(ISBasePlayerUIView *)self videoTransform];
      videoBlurView = [(ISBasePlayerUIView *)self videoBlurView];
      [videoBlurView setHidden:videoTransform == 0];

      transformCopy = [MEMORY[0x277CD9FF0] commit];
      v5 = v17;
    }
  }

  MEMORY[0x2821F96F8](transformCopy, v5);
}

- (void)_setChangeObserver:(id)observer
{
  obj = observer;
  WeakRetained = objc_loadWeakRetained(&self->__changeObserver);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->__changeObserver, obj);
    self->_changeObserverRespondsTo.didChangeWithAnimationDuration = objc_opt_respondsToSelector() & 1;
  }
}

- (void)unregisterChangeObserver:(id)observer
{
  observerCopy = observer;
  _changeObserver = [(ISBasePlayerUIView *)self _changeObserver];

  if (_changeObserver == observerCopy)
  {

    [(ISBasePlayerUIView *)self _setChangeObserver:0];
  }
}

- (void)registerChangeObserver:(id)observer
{
  observerCopy = observer;
  _changeObserver = [(ISBasePlayerUIView *)self _changeObserver];
  if (_changeObserver != observerCopy)
  {
    [(ISBasePlayerUIView *)self _setChangeObserver:observerCopy];
  }
}

- (void)_performCommonInitialization
{
  v41[1] = *MEMORY[0x277D85DE8];
  p_contentsRect = &self->_contentsRect;
  self->_contentsRect = *ISRectUnit;
  v4 = objc_alloc_init(MEMORY[0x277D3CAE0]);
  resourceReclamationController = self->_resourceReclamationController;
  self->_resourceReclamationController = v4;

  [(PXAVResourceReclamationController *)self->_resourceReclamationController registerObserver:self];
  self->_preferredImageDynamicRange = 0;
  [(ISBasePlayerUIView *)self _updateAudioSession];
  [(ISBasePlayerUIView *)self setClipsToBounds:1];
  v6 = objc_alloc_init(MEMORY[0x277D75D18]);
  containerView = self->_containerView;
  self->_containerView = v6;

  [(UIView *)self->_containerView setClipsToBounds:1];
  [(ISBasePlayerUIView *)self addSubview:self->_containerView];
  v8 = objc_alloc_init(MEMORY[0x277D755E8]);
  photoView = self->_photoView;
  self->_photoView = v8;

  x = p_contentsRect->origin.x;
  y = p_contentsRect->origin.y;
  width = p_contentsRect->size.width;
  height = p_contentsRect->size.height;
  layer = [(UIImageView *)self->_photoView layer];
  [layer setContentsRect:{x, y, width, height}];

  v15 = objc_alloc_init(ISVideoPlayerUIView);
  videoView = self->_videoView;
  self->_videoView = v15;

  v17 = p_contentsRect->origin.x;
  v18 = p_contentsRect->origin.y;
  v19 = p_contentsRect->size.width;
  v20 = p_contentsRect->size.height;
  layer2 = [(ISVideoPlayerUIView *)self->_videoView layer];
  [layer2 setContentsRect:{v17, v18, v19, v20}];

  objc_initWeak(&location, self);
  v35 = MEMORY[0x277D85DD0];
  v36 = 3221225472;
  v37 = __50__ISBasePlayerUIView__performCommonInitialization__block_invoke;
  v38 = &unk_279A2A3C0;
  objc_copyWeak(&v39, &location);
  [(ISVideoPlayerUIView *)self->_videoView setVideoLayerReadyForDisplayChangeHandler:&v35];
  v22 = objc_alloc_init(ISVideoPlayerUIView);
  videoBlurView = self->_videoBlurView;
  self->_videoBlurView = v22;

  v24 = p_contentsRect->origin.x;
  v25 = p_contentsRect->origin.y;
  v26 = p_contentsRect->size.width;
  v27 = p_contentsRect->size.height;
  v28 = [(ISVideoPlayerUIView *)self->_videoBlurView layer:v35];
  [v28 setContentsRect:{v24, v25, v26, v27}];

  v29 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
  [v29 setName:@"vitalityBlur"];
  [v29 setCachesInputImage:0];
  [v29 setValue:&unk_28705CDF0 forKey:@"inputRadius"];
  [v29 setValue:MEMORY[0x277CBEC38] forKey:@"inputHardEdges"];
  [v29 setValue:@"medium" forKey:@"inputQuality"];
  v41[0] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
  layer3 = [(ISVideoPlayerUIView *)self->_videoBlurView layer];
  [layer3 setFilters:v30];

  v32 = objc_alloc_init(MEMORY[0x277D75D18]);
  videoContainerView = self->_videoContainerView;
  self->_videoContainerView = v32;

  [(UIView *)self->_videoContainerView addSubview:self->_videoBlurView];
  [(UIView *)self->_videoContainerView addSubview:self->_videoView];
  [(UIView *)self->_containerView addSubview:self->_photoView];
  [(UIView *)self->_containerView addSubview:self->_videoContainerView];
  [(ISBasePlayerUIView *)self _updatePhotoViewDynamicRange];

  objc_destroyWeak(&v39);
  objc_destroyWeak(&location);
  v34 = *MEMORY[0x277D85DE8];
}

void __50__ISBasePlayerUIView__performCommonInitialization__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _videoViewReadyForDisplayDidChange];
}

- (ISBasePlayerUIView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ISBasePlayerUIView;
  v3 = [(ISBasePlayerUIView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(ISBasePlayerUIView *)v3 _performCommonInitialization];
  }

  return v4;
}

- (ISBasePlayerUIView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ISBasePlayerUIView;
  v3 = [(ISBasePlayerUIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ISBasePlayerUIView *)v3 _performCommonInitialization];
  }

  return v4;
}

+ (void)_handleAVResourceReclamationEvent:(id)event
{
  audioSessionQueue = [self audioSessionQueue];
  dispatch_async(audioSessionQueue, &__block_literal_global_10);
}

void __56__ISBasePlayerUIView__handleAVResourceReclamationEvent___block_invoke()
{
  v0 = SharedAudioSession;
  SharedAudioSession = 0;
}

+ (id)livePhotoAudioSession
{
  v21 = *MEMORY[0x277D85DE8];
  audioSessionQueue = [self audioSessionQueue];
  dispatch_assert_queue_V2(audioSessionQueue);

  v4 = SharedAudioSession;
  if (!SharedAudioSession)
  {
    v5 = objc_alloc_init(MEMORY[0x277D3CAE0]);
    v6 = livePhotoAudioSession_resourceReclamationController;
    livePhotoAudioSession_resourceReclamationController = v5;

    v7 = [livePhotoAudioSession_resourceReclamationController observationWithWeakTarget:self selector:sel__handleAVResourceReclamationEvent_];
    v8 = livePhotoAudioSession_reclamationObservation;
    livePhotoAudioSession_reclamationObservation = v7;

    v9 = +[ISWrappedAVAudioSession auxiliarySession];
    v10 = SharedAudioSession;
    SharedAudioSession = v9;

    v11 = *MEMORY[0x277CB8020];
    v12 = *MEMORY[0x277CB80A8];
    v18 = 0;
    v13 = [SharedAudioSession setCategory:v11 mode:v12 routeSharingPolicy:0 options:0 error:&v18];
    v14 = v18;
    if ((v13 & 1) == 0)
    {
      v15 = ISGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v14;
        _os_log_error_impl(&dword_25E667000, v15, OS_LOG_TYPE_ERROR, "Failed configuring AVAudioSession for Live Photo playback. Error: %@", buf, 0xCu);
      }
    }

    v4 = SharedAudioSession;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)audioSessionQueue
{
  if (audioSessionQueue_onceToken != -1)
  {
    dispatch_once(&audioSessionQueue_onceToken, &__block_literal_global_351);
  }

  v3 = audioSessionQueue__queue;

  return v3;
}

void __39__ISBasePlayerUIView_audioSessionQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.ISLivePhotoUIView.audiosession", v2);
  v1 = audioSessionQueue__queue;
  audioSessionQueue__queue = v0;
}

@end