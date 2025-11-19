@interface PHVideoScrubberView
- (BOOL)_isUserInteractingWithScrollView;
- (BOOL)_needsUpdate;
- (BOOL)_playerIsPlaying;
- (PHVideoScrubberFilmstripViewProvider)filmstripViewProvider;
- (PHVideoScrubberView)initWithFrame:(CGRect)a3;
- (PHVideoScrubberViewInteractionDelegate)interactionDelegate;
- (double)_lengthForDuration:(double)a3;
- (double)videoScrubberController:(id)a3 lengthForDuration:(double)a4;
- (id)_currentAVAsset;
- (id)_currentVideoComposition;
- (void)_handleInteractionBegan;
- (void)_handleInteractionEndedAndTogglePlayState:(BOOL)a3;
- (void)_handleTouchGesture:(id)a3;
- (void)_invalidateFilmStripView;
- (void)_invalidateVideoScrubberController;
- (void)_setVideoScrubberController:(id)a3;
- (void)_updateFilmStripViewIfNeeded;
- (void)_updateIfNeeded;
- (void)_updatePlayheadFrame;
- (void)_updateScrollViewContentOffset;
- (void)_updateVideoscrubberControllerIfNeeded;
- (void)_updateVisibleRectOfFilmStripView;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDecelerating:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setEstimatedDuration:(double)a3;
- (void)setInteractionDelegate:(id)a3;
- (void)setPlaceholderThumbnail:(id)a3;
- (void)setPlayer:(id)a3;
- (void)videoScrubberControllerDidUpdate:(id)a3;
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

- (void)videoScrubberControllerDidUpdate:(id)a3
{
  v4 = [(PHVideoScrubberView *)self scrollView];
  if (([v4 isDragging] & 1) == 0 && (objc_msgSend(v4, "isTracking") & 1) == 0 && (objc_msgSend(v4, "isDecelerating") & 1) == 0)
  {
    [(PHVideoScrubberView *)self _updateScrollViewContentOffset];
  }
}

- (double)_lengthForDuration:(double)a3
{
  if (a3 < 1.0)
  {
    a3 = 1.0;
  }

  if (a3 >= 2.0)
  {
    v4 = a3;
    v3 = log2f(v4);
  }

  else
  {
    v3 = a3 * 0.5;
  }

  return v3 * 150.0;
}

- (double)videoScrubberController:(id)a3 lengthForDuration:(double)a4
{
  [(PHVideoScrubberView *)self estimatedDuration:a3];

  [(PHVideoScrubberView *)self _lengthForDuration:?];
  return result;
}

- (void)_updatePlayheadFrame
{
  v3 = [(PHVideoScrubberView *)self scrollView];
  [v3 frame];
  v5 = v4;
  v7 = v6;

  v18 = [(PHVideoScrubberView *)self scrollView];
  [v18 contentSize];
  v9 = v8;
  [v18 contentInset];
  v11 = v10;
  [v18 contentOffset];
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
  v17 = [(PHVideoScrubberView *)self _playheadView];
  [v17 setFrame:{v16, 0.0, v7 * 0.5, v7 + 2.0}];
}

- (void)_updateScrollViewContentOffset
{
  v9 = [(PHVideoScrubberView *)self scrollView];
  v3 = [(PHVideoScrubberView *)self _videoScrubberController];
  [v3 playheadProgress];
  v5 = v4;

  [v9 contentSize];
  v7 = v5 * v6;
  [v9 contentInset];
  [v9 setContentOffset:{v7 - v8, 0.0}];
}

- (void)_updateVisibleRectOfFilmStripView
{
  v3 = [(PHVideoScrubberView *)self scrollView];
  [v3 bounds];
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

  v12 = [(PHVideoScrubberView *)self _filmStripView];
  [v12 setVisibleRect:{v5, v10, v7, v9}];
}

- (void)_updateIfNeeded
{
  if ([(PHVideoScrubberView *)self _needsUpdate])
  {
    [(PHVideoScrubberView *)self _updateVideoscrubberControllerIfNeeded];
    [(PHVideoScrubberView *)self _updateFilmStripViewIfNeeded];
    if ([(PHVideoScrubberView *)self _needsUpdate])
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:a2 object:self file:@"PHVideoScrubberView.m" lineNumber:396 description:@"Video scrubber still dirty after update"];
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
  v14 = [(PHVideoScrubberView *)self player];
  v3 = [(PHVideoScrubberView *)self _videoScrubberController];
  if (v14)
  {
    v4 = [v3 target];
    v5 = [v4 videoPlayer];
    if (v5 != v14)
    {

LABEL_8:
      [(PHVideoScrubberView *)self estimatedDuration];
      v11 = v10;
      v12 = [objc_alloc(MEMORY[0x1E69C3A50]) initWithVideoPlayer:v14];
      v13 = [objc_alloc(MEMORY[0x1E69C3C68]) initWithTarget:v12 estimatedDuration:v11];
      [(PHVideoScrubberView *)self _setVideoScrubberController:v13];

      goto LABEL_9;
    }

    [v3 estimatedDuration];
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
    v3 = [(PHVideoScrubberView *)self _filmStripView];

    if (!v3)
    {
      v4 = [(PHVideoScrubberView *)self filmstripViewProvider];
      v5 = [v4 createFilmstripViewForVideoScrubberView:self];
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
      v10 = [(PHVideoScrubberView *)self scrollView];
      [v10 addSubview:v9];
    }

    v11 = [(PHVideoScrubberView *)self _filmStripView];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(PHVideoScrubberView *)self _filmStripView];
      v14 = [(PHVideoScrubberView *)self _currentAVAsset];
      v15 = [(PHVideoScrubberView *)self _currentVideoComposition];
      [v13 setAsset:v14 videoComposition:v15];
    }

    v16 = [(PHVideoScrubberView *)self _filmStripView];
    v17 = [(PHVideoScrubberView *)self _currentAVAsset];
    [v16 setAsset:v17];

    v18 = [(PHVideoScrubberView *)self _filmStripView];
    v19 = [(PHVideoScrubberView *)self placeholderThumbnail];
    [v18 setPlaceholderImage:v19];

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

- (void)_handleInteractionEndedAndTogglePlayState:(BOOL)a3
{
  previousPlayState = self->_previousPlayState;
  if (previousPlayState)
  {
    v5 = previousPlayState == 2;
    if (a3)
    {
      v5 = previousPlayState != 2;
      if (previousPlayState != 1)
      {
LABEL_4:
        v6 = [(PHVideoScrubberView *)self player];
        [v6 play];
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

    v6 = [(PHVideoScrubberView *)self player];
    [v6 pause];
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
      v3 = [(PHVideoScrubberView *)self player];
      [v3 pause];
    }

    else
    {
      self->_previousPlayState = 2;
    }
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v5 = a3;
  [(PHVideoScrubberView *)self _handleInteractionEndedAndTogglePlayState:0];
  if (self->_interactionDelegateRespondsTo.didEndDecelerating)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
    [WeakRetained videoScrubberView:self didEndDeceleratingInScrollView:v5];
  }
}

- (void)scrollViewWillBeginDecelerating:(id)a3
{
  if (self->_interactionDelegateRespondsTo.willBeginDecelerating)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
    [WeakRetained videoScrubberView:self willBeginDeceleratingInScrollView:v5];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v7 = a3;
  if (!a4)
  {
    [(PHVideoScrubberView *)self _handleInteractionEndedAndTogglePlayState:0];
  }

  if (self->_interactionDelegateRespondsTo.didEndDragging)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
    [WeakRetained videoScrubberView:self didEndDraggingInScrollView:v7];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  if (self->_interactionDelegateRespondsTo.willBeginDragging)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
    [WeakRetained videoScrubberView:self willBeginDraggingInScrollView:v5];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v12 = a3;
  if ([(PHVideoScrubberView *)self _isUserInteractingWithScrollView])
  {
    [v12 contentSize];
    v5 = v4;
    [v12 contentInset];
    v7 = v6;
    [v12 contentOffset];
    v9 = fmax(v7 + v8, 0.0);
    if (v5 < v9)
    {
      v9 = v5;
    }

    v10 = v9 / v5;
    v11 = [(PHVideoScrubberView *)self _videoScrubberController];
    [v11 setPlayheadProgress:v10];
  }

  [(PHVideoScrubberView *)self _updateVisibleRectOfFilmStripView];
  [(PHVideoScrubberView *)self _updatePlayheadFrame];
}

- (void)_handleTouchGesture:(id)a3
{
  v4 = [a3 state];
  if (v4 == 3)
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
    if (v4 != 1)
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
  v2 = [(PHVideoScrubberView *)self player];
  [v2 rate];
  v4 = v3 > 0.0;

  return v4;
}

- (BOOL)_isUserInteractingWithScrollView
{
  v2 = [(PHVideoScrubberView *)self scrollView];
  if ([v2 isDragging] & 1) != 0 || (objc_msgSend(v2, "isTracking"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isDecelerating];
  }

  return v3;
}

- (id)_currentVideoComposition
{
  v2 = [(PHVideoScrubberView *)self player];
  v3 = [v2 currentItem];

  v4 = [v3 videoComposition];

  return v4;
}

- (id)_currentAVAsset
{
  v2 = [(PHVideoScrubberView *)self player];
  v3 = [v2 currentItem];

  v4 = [v3 asset];

  return v4;
}

- (void)setPlaceholderThumbnail:(id)a3
{
  v5 = a3;
  if (self->_placeholderThumbnail != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_placeholderThumbnail, a3);
    [(PHVideoScrubberView *)self _invalidateFilmStripView];
    v5 = v6;
  }
}

- (void)_setVideoScrubberController:(id)a3
{
  v5 = a3;
  videoScrubberController = self->__videoScrubberController;
  if (videoScrubberController != v5)
  {
    v7 = v5;
    [(PXVideoScrubberController *)videoScrubberController setDelegate:0];
    objc_storeStrong(&self->__videoScrubberController, a3);
    videoScrubberController = [(PXVideoScrubberController *)v7 setDelegate:self];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](videoScrubberController, v5);
}

- (void)setEstimatedDuration:(double)a3
{
  if (self->_estimatedDuration != a3)
  {
    self->_estimatedDuration = a3;
    [(PHVideoScrubberView *)self _invalidateVideoScrubberController];

    [(PHVideoScrubberView *)self _invalidateFilmStripView];
  }
}

- (void)setPlayer:(id)a3
{
  v5 = a3;
  player = self->_player;
  if (player != v5)
  {
    v7 = v5;
    [(AVPlayer *)player removeObserver:self forKeyPath:@"status" context:avPlayerObservationContext];
    [(AVPlayer *)self->_player removeObserver:self forKeyPath:@"currentItem" context:avPlayerObservationContext];
    [(AVPlayer *)self->_player removeObserver:self forKeyPath:@"currentItem.videoComposition" context:avPlayerObservationContext];
    objc_storeStrong(&self->_player, a3);
    [(AVPlayer *)self->_player addObserver:self forKeyPath:@"status" options:0 context:avPlayerObservationContext];
    [(AVPlayer *)self->_player addObserver:self forKeyPath:@"currentItem" options:0 context:avPlayerObservationContext];
    [(AVPlayer *)self->_player addObserver:self forKeyPath:@"currentItem.videoComposition" options:0 context:avPlayerObservationContext];
    [(PHVideoScrubberView *)self _invalidateVideoScrubberController];
    player = [(PHVideoScrubberView *)self _invalidateFilmStripView];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](player, v5);
}

- (void)setInteractionDelegate:(id)a3
{
  obj = a3;
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
  v8 = [(PHVideoScrubberView *)self scrollView];
  [v8 setFrame:{x, y, v6, height}];

  v9 = width * 0.5;
  v10 = [(PHVideoScrubberView *)self _videoScrubberController];
  [v10 length];
  v12 = v11;

  v13 = [(PHVideoScrubberView *)self scrollView];
  [v13 setContentInset:{0.0, v9, 0.0, v9}];

  v14 = [(PHVideoScrubberView *)self _filmStripView];

  if (v14)
  {
    v15 = [(PHVideoScrubberView *)self _filmStripView];
    [v15 setFrame:{0.0, 0.0, v12, height}];
  }

  v16 = [(PHVideoScrubberView *)self scrollView];
  [v16 setContentSize:{v12, height}];

  [(PHVideoScrubberView *)self _updateScrollViewContentOffset];
  [(PHVideoScrubberView *)self _updatePlayheadFrame];
}

- (PHVideoScrubberView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (avPlayerObservationContext == a6)
  {

    [(PHVideoScrubberView *)self _invalidateFilmStripView:a3];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = PHVideoScrubberView;
    [(PHVideoScrubberView *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

@end