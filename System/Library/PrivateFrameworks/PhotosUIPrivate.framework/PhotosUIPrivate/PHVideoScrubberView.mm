@interface PHVideoScrubberView
- (BOOL)_isUserInteractingWithScrollView;
- (BOOL)_needsUpdate;
- (BOOL)_playerIsPlaying;
- (PHVideoScrubberFilmstripViewProvider)filmstripViewProvider;
- (PHVideoScrubberView)initWithFrame:(CGRect)frame;
- (PHVideoScrubberViewInteractionDelegate)interactionDelegate;
- (double)_lengthForDuration:(double)duration;
- (double)videoScrubberController:(id)controller lengthForDuration:(double)duration;
- (id)_currentAVAsset;
- (id)_currentVideoComposition;
- (void)_handleInteractionBegan;
- (void)_handleInteractionEndedAndTogglePlayState:(BOOL)state;
- (void)_handleTouchGesture:(id)gesture;
- (void)_invalidateFilmStripView;
- (void)_invalidateVideoScrubberController;
- (void)_setVideoScrubberController:(id)controller;
- (void)_updateFilmStripViewIfNeeded;
- (void)_updateIfNeeded;
- (void)_updatePlayheadFrame;
- (void)_updateScrollViewContentOffset;
- (void)_updateVideoscrubberControllerIfNeeded;
- (void)_updateVisibleRectOfFilmStripView;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDecelerating:(id)decelerating;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setEstimatedDuration:(double)duration;
- (void)setInteractionDelegate:(id)delegate;
- (void)setPlaceholderThumbnail:(id)thumbnail;
- (void)setPlayer:(id)player;
- (void)videoScrubberControllerDidUpdate:(id)update;
@end

@implementation PHVideoScrubberView

- (PHVideoScrubberFilmstripViewProvider)filmstripViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filmstripViewProvider);

  return WeakRetained;
}

- (PHVideoScrubberViewInteractionDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

- (void)videoScrubberControllerDidUpdate:(id)update
{
  scrollView = [(PHVideoScrubberView *)self scrollView];
  if (([scrollView isDragging] & 1) == 0 && (objc_msgSend(scrollView, "isTracking") & 1) == 0 && (objc_msgSend(scrollView, "isDecelerating") & 1) == 0)
  {
    [(PHVideoScrubberView *)self _updateScrollViewContentOffset];
  }
}

- (double)_lengthForDuration:(double)duration
{
  if (duration < 1.0)
  {
    duration = 1.0;
  }

  if (duration >= 2.0)
  {
    durationCopy = duration;
    v3 = log2f(durationCopy);
  }

  else
  {
    v3 = duration * 0.5;
  }

  return v3 * 150.0;
}

- (double)videoScrubberController:(id)controller lengthForDuration:(double)duration
{
  [(PHVideoScrubberView *)self estimatedDuration:controller];

  [(PHVideoScrubberView *)self _lengthForDuration:?];
  return result;
}

- (void)_updatePlayheadFrame
{
  scrollView = [(PHVideoScrubberView *)self scrollView];
  [scrollView frame];
  v5 = v4;
  v7 = v6;

  scrollView2 = [(PHVideoScrubberView *)self scrollView];
  [scrollView2 contentSize];
  v9 = v8;
  [scrollView2 contentInset];
  v11 = v10;
  [scrollView2 contentOffset];
  v13 = v11 + v12;
  v14 = v9 - v13;
  if (v13 <= v9)
  {
    v14 = 0.0;
  }

  if (v13 < 0.0)
  {
    v15 = 0.0 - v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = v5 * 0.5 - v7 * 0.5 * 0.5 + v15;
  _playheadView = [(PHVideoScrubberView *)self _playheadView];
  [_playheadView setFrame:{v16, 0.0, v7 * 0.5, v7 + 2.0}];
}

- (void)_updateScrollViewContentOffset
{
  scrollView = [(PHVideoScrubberView *)self scrollView];
  _videoScrubberController = [(PHVideoScrubberView *)self _videoScrubberController];
  [_videoScrubberController playheadProgress];
  v5 = v4;

  [scrollView contentSize];
  v7 = v5 * v6;
  [scrollView contentInset];
  [scrollView setContentOffset:{v7 - v8, 0.0}];
}

- (void)_updateVisibleRectOfFilmStripView
{
  scrollView = [(PHVideoScrubberView *)self scrollView];
  [scrollView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = *(MEMORY[0x1E695F058] + 8);
  v11 = v7 + v5;
  if (v5 <= 0.0)
  {
    v5 = *MEMORY[0x1E695F058];
    v7 = v11;
  }

  _filmStripView = [(PHVideoScrubberView *)self _filmStripView];
  [_filmStripView setVisibleRect:{v5, v10, v7, v9}];
}

- (void)_updateIfNeeded
{
  if ([(PHVideoScrubberView *)self _needsUpdate])
  {
    [(PHVideoScrubberView *)self _updateVideoscrubberControllerIfNeeded];
    [(PHVideoScrubberView *)self _updateFilmStripViewIfNeeded];
    if ([(PHVideoScrubberView *)self _needsUpdate])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PHVideoScrubberView.m" lineNumber:396 description:@"Video scrubber still dirty after update"];
    }
  }
}

- (BOOL)_needsUpdate
{
  if ([(PHVideoScrubberView *)self _needsUpdateFilmStripView])
  {
    return 1;
  }

  return [(PHVideoScrubberView *)self _needsUpdateVideoScrubberController];
}

- (void)_updateVideoscrubberControllerIfNeeded
{
  if (![(PHVideoScrubberView *)self _needsUpdateVideoScrubberController])
  {
    return;
  }

  [(PHVideoScrubberView *)self _setNeedsUpdateVideoScrubberController:0];
  player = [(PHVideoScrubberView *)self player];
  _videoScrubberController = [(PHVideoScrubberView *)self _videoScrubberController];
  if (player)
  {
    target = [_videoScrubberController target];
    videoPlayer = [target videoPlayer];
    if (videoPlayer != player)
    {

LABEL_8:
      [(PHVideoScrubberView *)self estimatedDuration];
      v11 = v10;
      v12 = [objc_alloc(MEMORY[0x1E69C3A50]) initWithVideoPlayer:player];
      v13 = [objc_alloc(MEMORY[0x1E69C3C68]) initWithTarget:v12 estimatedDuration:v11];
      [(PHVideoScrubberView *)self _setVideoScrubberController:v13];

      goto LABEL_9;
    }

    [_videoScrubberController estimatedDuration];
    v7 = v6;
    [(PHVideoScrubberView *)self estimatedDuration];
    v9 = v8;

    if (v7 != v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    [(PHVideoScrubberView *)self _setVideoScrubberController:0];
  }

LABEL_9:
}

- (void)_updateFilmStripViewIfNeeded
{
  if ([(PHVideoScrubberView *)self _needsUpdateFilmStripView])
  {
    [(PHVideoScrubberView *)self _setNeedsUpdateFilmStripView:0];
    _filmStripView = [(PHVideoScrubberView *)self _filmStripView];

    if (!_filmStripView)
    {
      filmstripViewProvider = [(PHVideoScrubberView *)self filmstripViewProvider];
      v5 = [filmstripViewProvider createFilmstripViewForVideoScrubberView:self];
      v6 = v5;
      if (v5)
      {
        v7 = v5;
      }

      else
      {
        v8 = [PUFilmstripView alloc];
        v7 = [(PUFilmstripView *)v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      }

      v9 = v7;

      [(PHVideoScrubberView *)self _setFilmStripView:v9];
      scrollView = [(PHVideoScrubberView *)self scrollView];
      [scrollView addSubview:v9];
    }

    _filmStripView2 = [(PHVideoScrubberView *)self _filmStripView];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      _filmStripView3 = [(PHVideoScrubberView *)self _filmStripView];
      _currentAVAsset = [(PHVideoScrubberView *)self _currentAVAsset];
      _currentVideoComposition = [(PHVideoScrubberView *)self _currentVideoComposition];
      [_filmStripView3 setAsset:_currentAVAsset videoComposition:_currentVideoComposition];
    }

    _filmStripView4 = [(PHVideoScrubberView *)self _filmStripView];
    _currentAVAsset2 = [(PHVideoScrubberView *)self _currentAVAsset];
    [_filmStripView4 setAsset:_currentAVAsset2];

    _filmStripView5 = [(PHVideoScrubberView *)self _filmStripView];
    placeholderThumbnail = [(PHVideoScrubberView *)self placeholderThumbnail];
    [_filmStripView5 setPlaceholderImage:placeholderThumbnail];

    [(PHVideoScrubberView *)self _updateVisibleRectOfFilmStripView];
  }
}

- (void)_invalidateVideoScrubberController
{
  [(PHVideoScrubberView *)self _setNeedsUpdateVideoScrubberController:1];

  [(PHVideoScrubberView *)self setNeedsLayout];
}

- (void)_invalidateFilmStripView
{
  [(PHVideoScrubberView *)self _setNeedsUpdateFilmStripView:1];

  [(PHVideoScrubberView *)self setNeedsLayout];
}

- (void)_handleInteractionEndedAndTogglePlayState:(BOOL)state
{
  previousPlayState = self->_previousPlayState;
  if (previousPlayState)
  {
    v5 = previousPlayState == 2;
    if (state)
    {
      v5 = previousPlayState != 2;
      if (previousPlayState != 1)
      {
LABEL_4:
        player = [(PHVideoScrubberView *)self player];
        [player play];
        goto LABEL_8;
      }
    }

    else if (previousPlayState == 1)
    {
      goto LABEL_4;
    }

    if (!v5)
    {
LABEL_9:
      self->_previousPlayState = 0;
      return;
    }

    player = [(PHVideoScrubberView *)self player];
    [player pause];
LABEL_8:

    goto LABEL_9;
  }
}

- (void)_handleInteractionBegan
{
  if (!self->_previousPlayState)
  {
    if ([(PHVideoScrubberView *)self _playerIsPlaying])
    {
      self->_previousPlayState = 1;
      player = [(PHVideoScrubberView *)self player];
      [player pause];
    }

    else
    {
      self->_previousPlayState = 2;
    }
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  [(PHVideoScrubberView *)self _handleInteractionEndedAndTogglePlayState:0];
  if (self->_interactionDelegateRespondsTo.didEndDecelerating)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
    [WeakRetained videoScrubberView:self didEndDeceleratingInScrollView:deceleratingCopy];
  }
}

- (void)scrollViewWillBeginDecelerating:(id)decelerating
{
  if (self->_interactionDelegateRespondsTo.willBeginDecelerating)
  {
    deceleratingCopy = decelerating;
    WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
    [WeakRetained videoScrubberView:self willBeginDeceleratingInScrollView:deceleratingCopy];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  if (!decelerate)
  {
    [(PHVideoScrubberView *)self _handleInteractionEndedAndTogglePlayState:0];
  }

  if (self->_interactionDelegateRespondsTo.didEndDragging)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
    [WeakRetained videoScrubberView:self didEndDraggingInScrollView:draggingCopy];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  if (self->_interactionDelegateRespondsTo.willBeginDragging)
  {
    draggingCopy = dragging;
    WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
    [WeakRetained videoScrubberView:self willBeginDraggingInScrollView:draggingCopy];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if ([(PHVideoScrubberView *)self _isUserInteractingWithScrollView])
  {
    [scrollCopy contentSize];
    v5 = v4;
    [scrollCopy contentInset];
    v7 = v6;
    [scrollCopy contentOffset];
    v9 = fmax(v7 + v8, 0.0);
    if (v5 < v9)
    {
      v9 = v5;
    }

    v10 = v9 / v5;
    _videoScrubberController = [(PHVideoScrubberView *)self _videoScrubberController];
    [_videoScrubberController setPlayheadProgress:v10];
  }

  [(PHVideoScrubberView *)self _updateVisibleRectOfFilmStripView];
  [(PHVideoScrubberView *)self _updatePlayheadFrame];
}

- (void)_handleTouchGesture:(id)gesture
{
  state = [gesture state];
  if (state == 3)
  {
    if (!self->_interactionDelegateRespondsTo.didEndTouching)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
    [WeakRetained didEndTouchingVideoScrubberView:self];
  }

  else
  {
    if (state != 1)
    {
      return;
    }

    [(PHVideoScrubberView *)self _handleInteractionBegan];
    if (!self->_interactionDelegateRespondsTo.didBeginTouching)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
    [WeakRetained didBeginTouchingVideoScrubberView:self];
  }
}

- (BOOL)_playerIsPlaying
{
  player = [(PHVideoScrubberView *)self player];
  [player rate];
  v4 = v3 > 0.0;

  return v4;
}

- (BOOL)_isUserInteractingWithScrollView
{
  scrollView = [(PHVideoScrubberView *)self scrollView];
  if ([scrollView isDragging] & 1) != 0 || (objc_msgSend(scrollView, "isTracking"))
  {
    isDecelerating = 1;
  }

  else
  {
    isDecelerating = [scrollView isDecelerating];
  }

  return isDecelerating;
}

- (id)_currentVideoComposition
{
  player = [(PHVideoScrubberView *)self player];
  currentItem = [player currentItem];

  videoComposition = [currentItem videoComposition];

  return videoComposition;
}

- (id)_currentAVAsset
{
  player = [(PHVideoScrubberView *)self player];
  currentItem = [player currentItem];

  asset = [currentItem asset];

  return asset;
}

- (void)setPlaceholderThumbnail:(id)thumbnail
{
  thumbnailCopy = thumbnail;
  if (self->_placeholderThumbnail != thumbnailCopy)
  {
    v6 = thumbnailCopy;
    objc_storeStrong(&self->_placeholderThumbnail, thumbnail);
    [(PHVideoScrubberView *)self _invalidateFilmStripView];
    thumbnailCopy = v6;
  }
}

- (void)_setVideoScrubberController:(id)controller
{
  controllerCopy = controller;
  videoScrubberController = self->__videoScrubberController;
  if (videoScrubberController != controllerCopy)
  {
    v7 = controllerCopy;
    [(PXVideoScrubberController *)videoScrubberController setDelegate:0];
    objc_storeStrong(&self->__videoScrubberController, controller);
    videoScrubberController = [(PXVideoScrubberController *)v7 setDelegate:self];
    controllerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](videoScrubberController, controllerCopy);
}

- (void)setEstimatedDuration:(double)duration
{
  if (self->_estimatedDuration != duration)
  {
    self->_estimatedDuration = duration;
    [(PHVideoScrubberView *)self _invalidateVideoScrubberController];

    [(PHVideoScrubberView *)self _invalidateFilmStripView];
  }
}

- (void)setPlayer:(id)player
{
  playerCopy = player;
  player = self->_player;
  if (player != playerCopy)
  {
    v7 = playerCopy;
    [(AVPlayer *)player removeObserver:self forKeyPath:@"status" context:avPlayerObservationContext];
    [(AVPlayer *)self->_player removeObserver:self forKeyPath:@"currentItem" context:avPlayerObservationContext];
    [(AVPlayer *)self->_player removeObserver:self forKeyPath:@"currentItem.videoComposition" context:avPlayerObservationContext];
    objc_storeStrong(&self->_player, player);
    [(AVPlayer *)self->_player addObserver:self forKeyPath:@"status" options:0 context:avPlayerObservationContext];
    [(AVPlayer *)self->_player addObserver:self forKeyPath:@"currentItem" options:0 context:avPlayerObservationContext];
    [(AVPlayer *)self->_player addObserver:self forKeyPath:@"currentItem.videoComposition" options:0 context:avPlayerObservationContext];
    [(PHVideoScrubberView *)self _invalidateVideoScrubberController];
    player = [(PHVideoScrubberView *)self _invalidateFilmStripView];
    playerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](player, playerCopy);
}

- (void)setInteractionDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_interactionDelegate, obj);
    p_interactionDelegateRespondsTo = &self->_interactionDelegateRespondsTo;
    self->_interactionDelegateRespondsTo.didBeginTouching = objc_opt_respondsToSelector() & 1;

    v7 = objc_loadWeakRetained(&self->_interactionDelegate);
    self->_interactionDelegateRespondsTo.didEndTouching = objc_opt_respondsToSelector() & 1;

    v8 = objc_loadWeakRetained(&self->_interactionDelegate);
    self->_interactionDelegateRespondsTo.willBeginDragging = objc_opt_respondsToSelector() & 1;

    v9 = objc_loadWeakRetained(&self->_interactionDelegate);
    self->_interactionDelegateRespondsTo.didEndDragging = objc_opt_respondsToSelector() & 1;

    v10 = objc_loadWeakRetained(&self->_interactionDelegate);
    self->_interactionDelegateRespondsTo.willBeginDecelerating = objc_opt_respondsToSelector() & 1;

    v11 = objc_loadWeakRetained(&self->_interactionDelegate);
    p_interactionDelegateRespondsTo->didEndDecelerating = objc_opt_respondsToSelector() & 1;
  }
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = PHVideoScrubberView;
  [(PHVideoScrubberView *)&v17 layoutSubviews];
  [(PHVideoScrubberView *)self _updateIfNeeded];
  [(PHVideoScrubberView *)self bounds];
  width = v18.size.width;
  v18.origin.x = *MEMORY[0x1E695EFF8];
  v18.origin.y = *(MEMORY[0x1E695EFF8] + 8);
  v19 = CGRectInset(v18, 0.0, 1.0);
  x = v19.origin.x;
  y = v19.origin.y;
  v6 = v19.size.width;
  height = v19.size.height;
  scrollView = [(PHVideoScrubberView *)self scrollView];
  [scrollView setFrame:{x, y, v6, height}];

  v9 = width * 0.5;
  _videoScrubberController = [(PHVideoScrubberView *)self _videoScrubberController];
  [_videoScrubberController length];
  v12 = v11;

  scrollView2 = [(PHVideoScrubberView *)self scrollView];
  [scrollView2 setContentInset:{0.0, v9, 0.0, v9}];

  _filmStripView = [(PHVideoScrubberView *)self _filmStripView];

  if (_filmStripView)
  {
    _filmStripView2 = [(PHVideoScrubberView *)self _filmStripView];
    [_filmStripView2 setFrame:{0.0, 0.0, v12, height}];
  }

  scrollView3 = [(PHVideoScrubberView *)self scrollView];
  [scrollView3 setContentSize:{v12, height}];

  [(PHVideoScrubberView *)self _updateScrollViewContentOffset];
  [(PHVideoScrubberView *)self _updatePlayheadFrame];
}

- (PHVideoScrubberView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v15.receiver = self;
  v15.super_class = PHVideoScrubberView;
  v7 = [(PHVideoScrubberView *)&v15 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DCEF8]) initWithFrame:{x, y, width, height}];
    [v8 setAlwaysBounceHorizontal:1];
    [v8 setShowsHorizontalScrollIndicator:0];
    [v8 setDelegate:v7];
    [v8 _setSupportsPointerDragScrolling:1];
    [(PHVideoScrubberView *)v7 _setScrollView:v8];
    [(PHVideoScrubberView *)v7 addSubview:v8];
    v9 = [PUPlayheadView alloc];
    v10 = [(PUPlayheadView *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(PHVideoScrubberView *)v7 _setPlayheadView:v10];
    [(PHVideoScrubberView *)v7 addSubview:v10];
    v11 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v7 action:sel__handleTapGesture_];
    [(PHVideoScrubberView *)v7 addGestureRecognizer:v11];
    v12 = [[PUTouchingGestureRecognizer alloc] initWithTarget:v7 action:sel__handleTouchGesture_];
    [(PUTouchingGestureRecognizer *)v12 setDelegate:v7];
    [(PHVideoScrubberView *)v7 addGestureRecognizer:v12];
    v13 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v7 action:sel__handleLongPressGesture_];
    [v11 maximumSingleTapDuration];
    [v13 setMinimumPressDuration:?];
    [(PHVideoScrubberView *)v7 addGestureRecognizer:v13];
  }

  return v7;
}

- (void)dealloc
{
  [(AVPlayer *)self->_player removeObserver:self forKeyPath:@"status" context:avPlayerObservationContext];
  [(AVPlayer *)self->_player removeObserver:self forKeyPath:@"currentItem" context:avPlayerObservationContext];
  [(AVPlayer *)self->_player removeObserver:self forKeyPath:@"currentItem.videoComposition" context:avPlayerObservationContext];
  v3.receiver = self;
  v3.super_class = PHVideoScrubberView;
  [(PHVideoScrubberView *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (avPlayerObservationContext == context)
  {

    [(PHVideoScrubberView *)self _invalidateFilmStripView:path];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = PHVideoScrubberView;
    [(PHVideoScrubberView *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

@end