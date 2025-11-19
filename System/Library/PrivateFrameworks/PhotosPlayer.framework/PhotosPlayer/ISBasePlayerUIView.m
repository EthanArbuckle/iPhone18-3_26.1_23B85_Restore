@interface ISBasePlayerUIView
+ (id)audioSessionQueue;
+ (id)livePhotoAudioSession;
+ (void)_handleAVResourceReclamationEvent:(id)a3;
- (BOOL)isDisplayingPhoto;
- (BOOL)isVideoReadyForDisplay;
- (CGPoint)scaleAnchorOffset;
- (CGRect)contentsRect;
- (ISBasePlayerUIView)initWithCoder:(id)a3;
- (ISBasePlayerUIView)initWithFrame:(CGRect)a3;
- (ISBasePlayerUIViewChangeObserver)_changeObserver;
- (id)generateSnapshotImage;
- (void)_performCommonInitialization;
- (void)_setChangeObserver:(id)a3;
- (void)_setWrappedAudioSession:(id)a3;
- (void)_signalChange:(unint64_t)a3 withAnimationDuration:(double)a4;
- (void)_updateAudioSession;
- (void)_updatePhotoView;
- (void)_updatePhotoViewDynamicRange;
- (void)_updatePlayerAudioSession;
- (void)_updateVideoViewsFrameWithContainerBounds:(CGRect)a3;
- (void)_videoViewReadyForDisplayDidChange;
- (void)applyOutputInfo:(id)a3 withTransitionOptions:(id)a4 completion:(id)a5;
- (void)applyScale:(double)a3 withTransitionOptions:(id)a4 completion:(id)a5;
- (void)layoutSubviews;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)registerChangeObserver:(id)a3;
- (void)setContent:(id)a3;
- (void)setContentMode:(int64_t)a3;
- (void)setContentsRect:(CGRect)a3;
- (void)setCustomPhotoView:(id)a3;
- (void)setOverrideImage:(id)a3;
- (void)setPlayer:(id)a3;
- (void)setPreferredImageDynamicRange:(int64_t)a3;
- (void)setScaleAnchorOffset:(CGPoint)a3;
- (void)setVideoFilter:(id)a3;
- (void)setVideoTransform:(id)a3;
- (void)unregisterChangeObserver:(id)a3;
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if ((a4 & 4) != 0 && ISBasePlayerUIViewPlayerObservationContext == a5)
  {
    [(ISBasePlayerUIView *)self _updatePlayerAudioSession];
  }
}

- (void)_updatePhotoView
{
  v11 = [(ISBasePlayerUIView *)self photoView];
  v3 = [(ISBasePlayerUIView *)self customPhotoView];
  v4 = [(ISBasePlayerUIView *)self containerView];
  v5 = self->_content;
  v6 = v5;
  if (v3 && (!v5 || [(ISPlayerOutputContent *)v5 photoIsOriginal]))
  {
    [v11 removeFromSuperview];
    v7 = [v3 superview];

    if (v7 == v4)
    {
      goto LABEL_9;
    }

    v8 = v4;
    v9 = v3;
  }

  else
  {
    v10 = [v11 superview];

    if (v10)
    {
      goto LABEL_9;
    }

    [v3 removeFromSuperview];
    v8 = v4;
    v9 = v11;
  }

  [v8 insertSubview:v9 atIndex:0];
LABEL_9:
  [(ISBasePlayerUIView *)self setNeedsLayout];
}

- (void)setOverrideImage:(id)a3
{
  v5 = a3;
  if (self->_overrideImage != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_overrideImage, a3);
    v6 = [(ISBasePlayerUIView *)self photoView];
    [v6 setImage:v7];

    v5 = v7;
  }
}

- (BOOL)isDisplayingPhoto
{
  v2 = [(ISBasePlayerUIView *)self videoContainerView];
  [v2 alpha];
  v4 = v3 == 0.0;

  return v4;
}

- (id)generateSnapshotImage
{
  v3 = [(ISBasePlayerUIView *)self videoView];
  v4 = [(ISBasePlayerUIView *)self videoContainerView];
  [v4 alpha];
  v6 = v5;

  if (v6 <= 0.0)
  {
    v7 = [(ISBasePlayerUIView *)self photoView];
    v24 = [v7 image];
  }

  else
  {
    v7 = [v3 videoPlayer];
    v8 = [v7 currentItem];
    v9 = [v8 asset];

    v10 = [v7 currentItem];
    v11 = [v10 videoComposition];

    v29 = 0uLL;
    v30 = 0;
    if (v7)
    {
      [v7 currentTime];
    }

    v12 = [objc_alloc(MEMORY[0x277CE6408]) initWithAsset:v9];
    [(ISBasePlayerUIView *)self bounds];
    v14 = v13;
    v16 = v15;
    v17 = [(ISBasePlayerUIView *)self traitCollection];
    [v17 displayScale];
    v19 = v18;

    if (v19 == 0.0)
    {
      v20 = [MEMORY[0x277D759A0] mainScreen];
      [v20 scale];
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
    [v12 setVideoComposition:v11];
    [v12 setApertureMode:*MEMORY[0x277CE5CB0]];
    v27 = v29;
    v28 = v30;
    v23 = [MEMORY[0x277D3B450] copyCGImageFromImageGenerator:v12 atTime:&v27 actualTime:0 error:0];
    v24 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v23];
    CGImageRelease(v23);
  }

  return v24;
}

- (void)setContent:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_content != v5)
  {
    v18 = v5;
    v5 = [(ISPlayerOutputContent *)v5 isEqual:?];
    v6 = v18;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_content, a3);
      v7 = [(ISBasePlayerUIView *)self photoView];
      v8 = [(ISBasePlayerUIView *)self videoView];
      v9 = [(ISBasePlayerUIView *)self overrideImage];

      if (v9)
      {
        v10 = [(ISBasePlayerUIView *)self overrideImage];
      }

      else
      {
        v15 = [(ISPlayerOutputContent *)v18 photo];
        v16 = [v7 image];
        v17 = [v16 CGImage];

        if (v15 == v17)
        {
          goto LABEL_6;
        }

        if (!v15)
        {
          [v7 setImage:0];
          goto LABEL_6;
        }

        [(ISPlayerOutputContent *)v18 photoEXIFOrientation];
        v10 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v15 scale:PLImageOrientationFromExifOrientation() orientation:1.0];
      }

      v11 = v10;
      [v7 setImage:v10];

LABEL_6:
      v12 = [(ISPlayerOutputContent *)v18 videoPlayer];
      [v8 setVideoPlayer:v12];
      v13 = [(ISPlayerOutputContent *)v18 videoPlayer];
      v14 = [(ISBasePlayerUIView *)self videoBlurView];
      [v14 setVideoPlayer:v13];

      [(ISBasePlayerUIView *)self _updatePhotoView];
      [(ISBasePlayerUIView *)self setNeedsLayout];

      v6 = v18;
    }
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)applyOutputInfo:(id)a3 withTransitionOptions:(id)a4 completion:(id)a5
{
  v26 = a4;
  v8 = a5;
  v9 = a3;
  [(ISBasePlayerUIView *)self layoutIfNeeded];
  v10 = [(ISBasePlayerUIView *)self videoContainerView];
  v11 = [(ISBasePlayerUIView *)self photoView];
  v12 = [(ISBasePlayerUIView *)self customPhotoView];
  v13 = [(ISBasePlayerUIView *)self isDisplayingPhoto];
  v14 = [v12 layer];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [v11 layer];
  }

  v17 = v16;

  v18 = +[ISTransitionApplier defaultApplier];
  v19 = [v10 layer];
  [v18 applyOutputInfo:v9 withTransitionOptions:v26 toPhotoLayer:v17 videoLayer:v19 completion:v8];

  v20 = MEMORY[0x277CCABB0];
  [v9 videoAlpha];
  v22 = v21;

  v23 = [v20 numberWithDouble:v22];
  v24 = [(ISBasePlayerUIView *)self videoBlurView];
  v25 = [v24 layer];
  [v18 setValue:v23 forKeyPath:@"opacity" ofLayer:v25 withTransitionOptions:v26 completion:0];

  if (v13 != [(ISBasePlayerUIView *)self isDisplayingPhoto])
  {
    [v26 transitionDuration];
    [(ISBasePlayerUIView *)self _signalChange:1 withAnimationDuration:?];
  }
}

- (void)applyScale:(double)a3 withTransitionOptions:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  [(ISBasePlayerUIView *)self layoutIfNeeded];
  v18 = [(ISBasePlayerUIView *)self videoContainerView];
  v10 = [(ISBasePlayerUIView *)self photoView];
  v11 = [(ISBasePlayerUIView *)self customPhotoView];
  v12 = [v11 layer];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [v10 layer];
  }

  v15 = v14;

  v16 = +[ISTransitionApplier defaultApplier];
  v17 = [v18 layer];
  [v16 applyScale:v9 withTransitionOptions:v15 toPhotoLayer:v17 videoLayer:v8 completion:a3];
}

- (void)_updatePhotoViewDynamicRange
{
  v3 = [(ISBasePlayerUIView *)self preferredImageDynamicRange];
  v4 = [(ISBasePlayerUIView *)self photoView];
  [v4 setPreferredImageDynamicRange:v3];
}

- (void)setPreferredImageDynamicRange:(int64_t)a3
{
  if (self->_preferredImageDynamicRange != a3)
  {
    self->_preferredImageDynamicRange = a3;
    [(ISBasePlayerUIView *)self _updatePhotoViewDynamicRange];
  }
}

- (void)_updateVideoViewsFrameWithContainerBounds:(CGRect)a3
{
  v4 = [(ISBasePlayerUIView *)self containerView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  v9 = [(ISPlayerOutputContent *)self->_content aspectRatio];
  [v9 doubleValue];
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

  v14 = [(ISBasePlayerUIView *)self traitCollection];
  [v14 displayScale];
  v16 = v15;

  if (v16 <= 0.0)
  {
    v17 = [MEMORY[0x277D759A0] mainScreen];
    [v17 scale];
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

  v28 = [(ISBasePlayerUIView *)self videoBlurView];
  [v28 setFrame:{v20, v22, v24, v26}];
}

- (void)_signalChange:(unint64_t)a3 withAnimationDuration:(double)a4
{
  if (self->_changeObserverRespondsTo.didChangeWithAnimationDuration)
  {
    v8 = [(ISBasePlayerUIView *)self _changeObserver];
    [v8 basePlayerUIView:self didChange:a3 withAnimationDuration:a4];
  }
}

- (void)_updatePlayerAudioSession
{
  v3 = [(ISBasePlayerUIView *)self wrappedAudioSession];
  if (v3)
  {
    v6 = v3;
    v4 = [(ISBasePlayerUIView *)self player];
    v5 = [v4 videoPlayer];
    [v5 setWrappedAudioSession:v6];

    v3 = v6;
  }
}

- (void)_updateAudioSession
{
  objc_initWeak(&location, self);
  v3 = [objc_opt_class() audioSessionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ISBasePlayerUIView__updateAudioSession__block_invoke;
  block[3] = &unk_279A2A1A8;
  block[4] = self;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, block);

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

- (void)setPlayer:(id)a3
{
  v5 = a3;
  player = self->_player;
  if (player != v5)
  {
    v7 = v5;
    [(ISObservable *)player unregisterChangeObserver:self context:ISBasePlayerUIViewPlayerObservationContext];
    [(ISBasePlayer *)self->_player removeOutput:self];
    [(ISBasePlayerUIView *)self setContent:0];
    objc_storeStrong(&self->_player, a3);
    [(ISBasePlayer *)self->_player addOutput:self];
    [(ISObservable *)self->_player registerChangeObserver:self context:ISBasePlayerUIViewPlayerObservationContext];
    player = [(ISBasePlayerUIView *)self playerDidChange];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](player, v5);
}

- (void)setContentsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_contentsRect = &self->_contentsRect;
  if (!CGRectEqualToRect(a3, self->_contentsRect))
  {
    p_contentsRect->origin.x = x;
    p_contentsRect->origin.y = y;
    p_contentsRect->size.width = width;
    p_contentsRect->size.height = height;
    [(ISBasePlayerUIView *)self setNeedsLayout];
    v9 = [(ISBasePlayerUIView *)self photoView];
    v10 = [v9 layer];
    [v10 setContentsRect:{x, y, width, height}];

    v11 = [(ISBasePlayerUIView *)self videoView];
    [v11 setContentsRect:{x, y, width, height}];
  }
}

- (void)setScaleAnchorOffset:(CGPoint)a3
{
  if (a3.x != self->_scaleAnchorOffset.x || a3.y != self->_scaleAnchorOffset.y)
  {
    self->_scaleAnchorOffset = a3;
    [(ISBasePlayerUIView *)self setNeedsLayout];
  }
}

- (void)_videoViewReadyForDisplayDidChange
{
  v3 = [(ISBasePlayerUIView *)self videoLayerReadyForDisplayChangeHandler];

  if (v3)
  {
    v4 = [(ISBasePlayerUIView *)self videoLayerReadyForDisplayChangeHandler];
    v4[2]();
  }
}

- (BOOL)isVideoReadyForDisplay
{
  v2 = [(ISBasePlayerUIView *)self videoView];
  v3 = [v2 videoLayerReadyForDisplay];

  return v3;
}

- (void)_setWrappedAudioSession:(id)a3
{
  v5 = a3;
  if (self->_wrappedAudioSession != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_wrappedAudioSession, a3);
    [(ISBasePlayerUIView *)self audioSessionDidChange];
    v5 = v6;
  }
}

- (void)setCustomPhotoView:(id)a3
{
  v5 = a3;
  customPhotoView = self->_customPhotoView;
  if (customPhotoView != v5)
  {
    v7 = v5;
    [(UIView *)customPhotoView removeFromSuperview];
    objc_storeStrong(&self->_customPhotoView, a3);
    customPhotoView = [(ISBasePlayerUIView *)self _updatePhotoView];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](customPhotoView, v5);
}

- (void)setContentMode:(int64_t)a3
{
  if ([(ISBasePlayerUIView *)self contentMode]!= a3)
  {
    v5.receiver = self;
    v5.super_class = ISBasePlayerUIView;
    [(ISBasePlayerUIView *)&v5 setContentMode:a3];
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
  v11 = [(ISBasePlayerUIView *)self containerView];
  v12 = [(ISBasePlayerUIView *)self photoView];
  v13 = [(ISBasePlayerUIView *)self customPhotoView];
  v14 = [(ISBasePlayerUIView *)self videoView];
  v15 = [(ISBasePlayerUIView *)self videoContainerView];
  v16 = [(ISBasePlayerUIView *)self videoBlurView];
  v17 = [(ISBasePlayerUIView *)self contentMode];
  v18 = [v14 layer];
  [v18 setMeshTransform:0];

  v19 = [v12 image];
  [v19 size];
  if (v19)
  {
    v22 = v21 == *(MEMORY[0x277CBF3A8] + 8) && v20 == *MEMORY[0x277CBF3A8];
    if (!v22 && v17 != 2)
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

  [v11 setFrame:{v4, v6, v8, v10}];
  [v11 bounds];
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
  [v12 setCenter:{v31, v32}];
  [v12 setBounds:{x, y, width, height}];
  [v12 setContentMode:v17];
  [v13 setCenter:{v31, v32}];
  [v13 setBounds:{x, y, width, height}];
  [v15 setCenter:{v31, v32}];
  [v15 setBounds:{x, y, width, height}];
  [v15 setContentMode:v17];
  [v14 setCenter:{v31, v32}];
  [v14 setBounds:{x, y, width, height}];
  [v14 setContentMode:v17];
  [v16 setCenter:{v31, v32}];
  [v16 setBounds:{x, y, width, height}];
  [v16 setContentMode:v17];
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

  v39 = [v12 layer];
  [v39 setAnchorPoint:{v38, v37}];

  [v12 center];
  [v12 setCenter:{v40 + v34, v41 + v36}];
  v42 = [v13 layer];
  [v42 setAnchorPoint:{v38, v37}];

  [v13 center];
  [v13 setCenter:{v43 + v34, v44 + v36}];
  v45 = [v14 layer];
  [v45 setAnchorPoint:{v38, v37}];

  [v14 center];
  [v14 setCenter:{v46 + v34, v47 + v36}];
  v48 = [v16 layer];
  [v48 setAnchorPoint:{v38, v37}];

  [v16 center];
  [v16 setCenter:{v49 + v34, v50 + v36}];
  v51 = [v15 layer];
  [v51 setAnchorPoint:{v38, v37}];

  [v15 center];
  [v15 setCenter:{v52 + v34, v53 + v36}];
  v54 = [(ISBasePlayerUIView *)self videoTransform];
  v55 = [v14 layer];
  [v55 setMeshTransform:v54];

  v56 = [(ISBasePlayerUIView *)self videoTransform];
  [v16 setHidden:v56 == 0];
}

- (void)setVideoFilter:(id)a3
{
  v5 = a3;
  if (self->_videoFilter != v5)
  {
    v8 = v5;
    v6 = [(ISBasePlayerUIView *)self videoView];
    v7 = [v6 layer];

    if (self->_videoFilter)
    {
      [v7 is_removeFilter:?];
    }

    objc_storeStrong(&self->_videoFilter, a3);
    if (v8)
    {
      [v7 is_addFilter:v8];
    }

    v5 = v8;
  }
}

- (void)setVideoTransform:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_videoTransform != v4)
  {
    v17 = v4;
    v4 = [v4 isEqual:?];
    v5 = v17;
    if ((v4 & 1) == 0)
    {
      v6 = [v17 copy];
      videoTransform = self->_videoTransform;
      self->_videoTransform = v6;

      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] disableActions];
      v8 = [(ISBasePlayerUIView *)self videoView];
      v9 = [v8 layer];
      [v9 setMeshTransform:v17];

      v10 = [MEMORY[0x277D759A0] mainScreen];
      [v10 scale];
      v12 = v11;
      v13 = [(ISBasePlayerUIView *)self videoView];
      v14 = [v13 layer];
      [v14 setRasterizationScale:v12];

      v15 = [(ISBasePlayerUIView *)self videoTransform];
      v16 = [(ISBasePlayerUIView *)self videoBlurView];
      [v16 setHidden:v15 == 0];

      v4 = [MEMORY[0x277CD9FF0] commit];
      v5 = v17;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_setChangeObserver:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->__changeObserver);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->__changeObserver, obj);
    self->_changeObserverRespondsTo.didChangeWithAnimationDuration = objc_opt_respondsToSelector() & 1;
  }
}

- (void)unregisterChangeObserver:(id)a3
{
  v4 = a3;
  v5 = [(ISBasePlayerUIView *)self _changeObserver];

  if (v5 == v4)
  {

    [(ISBasePlayerUIView *)self _setChangeObserver:0];
  }
}

- (void)registerChangeObserver:(id)a3
{
  v5 = a3;
  v4 = [(ISBasePlayerUIView *)self _changeObserver];
  if (v4 != v5)
  {
    [(ISBasePlayerUIView *)self _setChangeObserver:v5];
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
  v14 = [(UIImageView *)self->_photoView layer];
  [v14 setContentsRect:{x, y, width, height}];

  v15 = objc_alloc_init(ISVideoPlayerUIView);
  videoView = self->_videoView;
  self->_videoView = v15;

  v17 = p_contentsRect->origin.x;
  v18 = p_contentsRect->origin.y;
  v19 = p_contentsRect->size.width;
  v20 = p_contentsRect->size.height;
  v21 = [(ISVideoPlayerUIView *)self->_videoView layer];
  [v21 setContentsRect:{v17, v18, v19, v20}];

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
  v31 = [(ISVideoPlayerUIView *)self->_videoBlurView layer];
  [v31 setFilters:v30];

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

- (ISBasePlayerUIView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ISBasePlayerUIView;
  v3 = [(ISBasePlayerUIView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(ISBasePlayerUIView *)v3 _performCommonInitialization];
  }

  return v4;
}

- (ISBasePlayerUIView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ISBasePlayerUIView;
  v3 = [(ISBasePlayerUIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ISBasePlayerUIView *)v3 _performCommonInitialization];
  }

  return v4;
}

+ (void)_handleAVResourceReclamationEvent:(id)a3
{
  v3 = [a1 audioSessionQueue];
  dispatch_async(v3, &__block_literal_global_10);
}

void __56__ISBasePlayerUIView__handleAVResourceReclamationEvent___block_invoke()
{
  v0 = SharedAudioSession;
  SharedAudioSession = 0;
}

+ (id)livePhotoAudioSession
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [a1 audioSessionQueue];
  dispatch_assert_queue_V2(v3);

  v4 = SharedAudioSession;
  if (!SharedAudioSession)
  {
    v5 = objc_alloc_init(MEMORY[0x277D3CAE0]);
    v6 = livePhotoAudioSession_resourceReclamationController;
    livePhotoAudioSession_resourceReclamationController = v5;

    v7 = [livePhotoAudioSession_resourceReclamationController observationWithWeakTarget:a1 selector:sel__handleAVResourceReclamationEvent_];
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