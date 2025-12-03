@interface PXMessagesStackPlaybackControlView
- (BOOL)_shouldPauseOnTap;
- (BOOL)_wantsButton;
- (BOOL)handleTapAtPoint:(CGPoint)point;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)clippingRect;
- (PXMessagesStackPlaybackControlView)initWithFrame:(CGRect)frame;
- (void)_handleButton:(id)button;
- (void)_updateButtonVisibility;
- (void)becomeReusable;
- (void)layoutSubviews;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setUserData:(id)data;
- (void)setVideoController:(id)controller;
- (void)setViewModel:(id)model;
@end

@implementation PXMessagesStackPlaybackControlView

- (CGRect)clippingRect
{
  x = self->clippingRect.origin.x;
  y = self->clippingRect.origin.y;
  width = self->clippingRect.size.width;
  height = self->clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  v23 = *MEMORY[0x1E69E9840];
  observableCopy = observable;
  if (ViewModelObservationContext_203695 == context)
  {
    if ((changeCopy & 4) == 0)
    {
      if ((changeCopy & 3) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    viewModel = [(PXMessagesStackPlaybackControlView *)self viewModel];
    videoController = [viewModel videoController];
    [(PXMessagesStackPlaybackControlView *)self setVideoController:videoController];

LABEL_12:
LABEL_13:
    [(PXMessagesStackPlaybackControlView *)self _updateButtonVisibility];
    goto LABEL_14;
  }

  if (VideoControllerObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMessagesStackPlaybackControlView.m" lineNumber:249 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 0x206) != 0)
  {
    viewModel = PLUIGetLog();
    if (os_log_type_enabled(viewModel, OS_LOG_TYPE_DEFAULT))
    {
      videoController2 = [(PXMessagesStackPlaybackControlView *)self videoController];
      actualPlayState = [videoController2 actualPlayState];
      videoController3 = [(PXMessagesStackPlaybackControlView *)self videoController];
      isAtEnd = [videoController3 isAtEnd];
      v15 = @"NO";
      if (isAtEnd)
      {
        v15 = @"YES";
      }

      v16 = v15;
      v19 = 134218242;
      v20 = actualPlayState;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&dword_1A3C1C000, viewModel, OS_LOG_TYPE_DEFAULT, "[Stack Playback] Updated play state: %ld isAtEnd: %@", &v19, 0x16u);
    }

    goto LABEL_12;
  }

LABEL_14:
}

- (void)becomeReusable
{
  [(PXMessagesStackPlaybackControlView *)self setViewModel:0];
  [(PXMessagesStackPlaybackControlView *)self setVideoController:0];
  self->_itemIndex = 0x7FFFFFFFFFFFFFFFLL;
  layer = [(_PXMessagesStackPlayButton *)self->_button layer];
  [layer removeAllAnimations];

  button = self->_button;

  [(_PXMessagesStackPlayButton *)button setHidden:1];
}

- (void)setUserData:(id)data
{
  if (self->_userData != data)
  {
    dataCopy = data;
    v5 = [dataCopy copy];
    userData = self->_userData;
    self->_userData = v5;

    viewModel = [dataCopy viewModel];
    [(PXMessagesStackPlaybackControlView *)self setViewModel:viewModel];

    viewModel2 = [dataCopy viewModel];
    videoController = [viewModel2 videoController];
    [(PXMessagesStackPlaybackControlView *)self setVideoController:videoController];

    itemIndex = [dataCopy itemIndex];
    self->_itemIndex = itemIndex;

    [(PXMessagesStackPlaybackControlView *)self _updateButtonVisibility];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXMessagesStackPlaybackControlView;
  [(PXMessagesStackPlaybackControlView *)&v3 layoutSubviews];
  [(PXMessagesStackPlaybackControlView *)self bounds];
  PXRectGetCenter();
}

- (void)_handleButton:(id)button
{
  viewModel = [(PXMessagesStackPlaybackControlView *)self viewModel];
  currentItem = [viewModel currentItem];
  itemIndex = self->_itemIndex;

  if (currentItem == itemIndex)
  {
    videoController = [(PXMessagesStackPlaybackControlView *)self videoController];
    isAtEnd = [videoController isAtEnd];

    if ((isAtEnd & 1) != 0 || (-[PXMessagesStackPlaybackControlView videoController](self, "videoController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 desiredPlayState], v9, v10 != 1))
    {
      v11 = PLUIGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "[Stack Playback] Attempting to start video playback due to play button tap", buf, 2u);
      }
    }

    videoController2 = [(PXMessagesStackPlaybackControlView *)self videoController];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__PXMessagesStackPlaybackControlView__handleButton___block_invoke;
    v13[3] = &__block_descriptor_33_e61_v16__0___PXGMutableDisplayAssetVideoPresentationController__8l;
    v14 = isAtEnd;
    [videoController2 performChanges:v13];
  }
}

void __52__PXMessagesStackPlaybackControlView__handleButton___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == 1)
  {
    [v3 seekToBeginning];
    v3 = v4;
  }

  [v3 setDesiredPlayState:1];
}

- (void)_updateButtonVisibility
{
  _wantsButton = [(PXMessagesStackPlaybackControlView *)self _wantsButton];
  [(PXMessagesStackPlaybackControlView *)self setUserInteractionEnabled:_wantsButton];
  isHidden = [(_PXMessagesStackPlayButton *)self->_button isHidden];
  if (_wantsButton)
  {
    if (isHidden)
    {
      [(_PXMessagesStackPlayButton *)self->_button setHidden:0];
      viewModel = [(PXMessagesStackPlaybackControlView *)self viewModel];
      currentItem = [viewModel currentItem];
      itemIndex = self->_itemIndex;

      button = self->_button;
      if (currentItem == itemIndex)
      {
        [(_PXMessagesStackPlayButton *)button setAlpha:0.0];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __61__PXMessagesStackPlaybackControlView__updateButtonVisibility__block_invoke;
        v11[3] = &unk_1E774C648;
        v11[4] = self;
        [MEMORY[0x1E69DD250] animateWithDuration:v11 animations:0.3];
      }

      else
      {

        [(_PXMessagesStackPlayButton *)button setAlpha:1.0];
      }
    }
  }

  else if ((isHidden & 1) == 0)
  {
    layer = [(_PXMessagesStackPlayButton *)self->_button layer];
    [layer removeAllAnimations];

    v10 = self->_button;

    [(_PXMessagesStackPlayButton *)v10 setHidden:1];
  }
}

- (BOOL)_wantsButton
{
  videoController = [(PXMessagesStackPlaybackControlView *)self videoController];
  if ([videoController desiredPlayState] == 1)
  {
    isAtEnd = [videoController isAtEnd];
  }

  else
  {
    isAtEnd = 1;
  }

  viewModel = [(PXMessagesStackPlaybackControlView *)self viewModel];
  currentItem = [viewModel currentItem];
  itemIndex = self->_itemIndex;
  v8 = currentItem - itemIndex;
  if (currentItem - itemIndex < 0)
  {
    v8 = itemIndex - currentItem;
  }

  if (!isAtEnd)
  {
    goto LABEL_11;
  }

  if (currentItem != itemIndex)
  {
    if (v8 <= 1)
    {
      v9 = [viewModel isSettled] ^ 1;
      goto LABEL_12;
    }

LABEL_11:
    LOBYTE(v9) = 0;
    goto LABEL_12;
  }

  LOBYTE(v9) = 1;
LABEL_12:

  return v9;
}

- (void)setVideoController:(id)controller
{
  controllerCopy = controller;
  videoController = self->_videoController;
  if (videoController != controllerCopy)
  {
    v7 = controllerCopy;
    [(PXGDisplayAssetVideoPresentationController *)videoController unregisterChangeObserver:self context:VideoControllerObservationContext];
    objc_storeStrong(&self->_videoController, controller);
    [(PXGDisplayAssetVideoPresentationController *)self->_videoController registerChangeObserver:self context:VideoControllerObservationContext];
    controllerCopy = v7;
  }
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  viewModel = self->_viewModel;
  if (viewModel != modelCopy)
  {
    v7 = modelCopy;
    [(PXMessagesStackPlaybackControlViewModel *)viewModel unregisterChangeObserver:self context:ViewModelObservationContext_203695];
    objc_storeStrong(&self->_viewModel, model);
    [(PXMessagesStackPlaybackControlViewModel *)self->_viewModel registerChangeObserver:self context:ViewModelObservationContext_203695];
    modelCopy = v7;
  }
}

- (BOOL)handleTapAtPoint:(CGPoint)point
{
  v4 = [(PXMessagesStackPlaybackControlView *)self hitTest:0 withEvent:point.x, point.y];
  button = self->_button;

  if (v4 == button)
  {
    [(PXMessagesStackPlaybackControlView *)self _handleButton:self->_button];
LABEL_7:
    LOBYTE(_shouldPauseOnTap) = 1;
    return _shouldPauseOnTap;
  }

  _shouldPauseOnTap = [(PXMessagesStackPlaybackControlView *)self _shouldPauseOnTap];
  if (_shouldPauseOnTap)
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "[Stack Playback] Attempting to pause video playback due to tap on playing item", v10, 2u);
    }

    videoController = [(PXMessagesStackPlaybackControlView *)self videoController];
    [videoController performChanges:&__block_literal_global_203715];

    goto LABEL_7;
  }

  return _shouldPauseOnTap;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v10.receiver = self;
  v10.super_class = PXMessagesStackPlaybackControlView;
  if ([(PXMessagesStackPlaybackControlView *)&v10 pointInside:eventCopy withEvent:x, y])
  {
    if ([(PXMessagesStackPlaybackControlView *)self _shouldPauseOnTap])
    {
      v8 = 1;
    }

    else
    {
      [(_PXMessagesStackPlayButton *)self->_button convertPoint:self fromView:x, y];
      v8 = [(_PXMessagesStackPlayButton *)self->_button pointInside:eventCopy withEvent:?];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_shouldPauseOnTap
{
  if ([(PXMessagesStackPlaybackControlView *)self _wantsButton])
  {
    return 0;
  }

  videoController = [(PXMessagesStackPlaybackControlView *)self videoController];
  v3 = [videoController desiredPlayState] == 1;

  return v3;
}

- (PXMessagesStackPlaybackControlView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = PXMessagesStackPlaybackControlView;
  v3 = [(PXMessagesStackPlaybackControlView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [_PXMessagesStackPlayButton alloc];
    v5 = [(_PXMessagesStackPlayButton *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(_PXMessagesStackPlayButton *)v5 setHidden:1];
    button = v3->_button;
    v3->_button = v5;
    v7 = v5;

    [(_PXMessagesStackPlayButton *)v3->_button addTarget:v3 action:sel__handleButton_ forControlEvents:64];
    [(PXMessagesStackPlaybackControlView *)v3 addSubview:v7];

    v3->_itemIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v3;
}

@end