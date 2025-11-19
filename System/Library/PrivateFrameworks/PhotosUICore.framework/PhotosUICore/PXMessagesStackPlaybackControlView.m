@interface PXMessagesStackPlaybackControlView
- (BOOL)_shouldPauseOnTap;
- (BOOL)_wantsButton;
- (BOOL)handleTapAtPoint:(CGPoint)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)clippingRect;
- (PXMessagesStackPlaybackControlView)initWithFrame:(CGRect)a3;
- (void)_handleButton:(id)a3;
- (void)_updateButtonVisibility;
- (void)becomeReusable;
- (void)layoutSubviews;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setUserData:(id)a3;
- (void)setVideoController:(id)a3;
- (void)setViewModel:(id)a3;
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v23 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (ViewModelObservationContext_203695 == a5)
  {
    if ((v6 & 4) == 0)
    {
      if ((v6 & 3) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v10 = [(PXMessagesStackPlaybackControlView *)self viewModel];
    v17 = [v10 videoController];
    [(PXMessagesStackPlaybackControlView *)self setVideoController:v17];

LABEL_12:
LABEL_13:
    [(PXMessagesStackPlaybackControlView *)self _updateButtonVisibility];
    goto LABEL_14;
  }

  if (VideoControllerObservationContext != a5)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PXMessagesStackPlaybackControlView.m" lineNumber:249 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 0x206) != 0)
  {
    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(PXMessagesStackPlaybackControlView *)self videoController];
      v12 = [v11 actualPlayState];
      v13 = [(PXMessagesStackPlaybackControlView *)self videoController];
      v14 = [v13 isAtEnd];
      v15 = @"NO";
      if (v14)
      {
        v15 = @"YES";
      }

      v16 = v15;
      v19 = 134218242;
      v20 = v12;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "[Stack Playback] Updated play state: %ld isAtEnd: %@", &v19, 0x16u);
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
  v3 = [(_PXMessagesStackPlayButton *)self->_button layer];
  [v3 removeAllAnimations];

  button = self->_button;

  [(_PXMessagesStackPlayButton *)button setHidden:1];
}

- (void)setUserData:(id)a3
{
  if (self->_userData != a3)
  {
    v4 = a3;
    v5 = [v4 copy];
    userData = self->_userData;
    self->_userData = v5;

    v7 = [v4 viewModel];
    [(PXMessagesStackPlaybackControlView *)self setViewModel:v7];

    v8 = [v4 viewModel];
    v9 = [v8 videoController];
    [(PXMessagesStackPlaybackControlView *)self setVideoController:v9];

    v10 = [v4 itemIndex];
    self->_itemIndex = v10;

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

- (void)_handleButton:(id)a3
{
  v4 = [(PXMessagesStackPlaybackControlView *)self viewModel];
  v5 = [v4 currentItem];
  itemIndex = self->_itemIndex;

  if (v5 == itemIndex)
  {
    v7 = [(PXMessagesStackPlaybackControlView *)self videoController];
    v8 = [v7 isAtEnd];

    if ((v8 & 1) != 0 || (-[PXMessagesStackPlaybackControlView videoController](self, "videoController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 desiredPlayState], v9, v10 != 1))
    {
      v11 = PLUIGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "[Stack Playback] Attempting to start video playback due to play button tap", buf, 2u);
      }
    }

    v12 = [(PXMessagesStackPlaybackControlView *)self videoController];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__PXMessagesStackPlaybackControlView__handleButton___block_invoke;
    v13[3] = &__block_descriptor_33_e61_v16__0___PXGMutableDisplayAssetVideoPresentationController__8l;
    v14 = v8;
    [v12 performChanges:v13];
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
  v3 = [(PXMessagesStackPlaybackControlView *)self _wantsButton];
  [(PXMessagesStackPlaybackControlView *)self setUserInteractionEnabled:v3];
  v4 = [(_PXMessagesStackPlayButton *)self->_button isHidden];
  if (v3)
  {
    if (v4)
    {
      [(_PXMessagesStackPlayButton *)self->_button setHidden:0];
      v5 = [(PXMessagesStackPlaybackControlView *)self viewModel];
      v6 = [v5 currentItem];
      itemIndex = self->_itemIndex;

      button = self->_button;
      if (v6 == itemIndex)
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

  else if ((v4 & 1) == 0)
  {
    v9 = [(_PXMessagesStackPlayButton *)self->_button layer];
    [v9 removeAllAnimations];

    v10 = self->_button;

    [(_PXMessagesStackPlayButton *)v10 setHidden:1];
  }
}

- (BOOL)_wantsButton
{
  v3 = [(PXMessagesStackPlaybackControlView *)self videoController];
  if ([v3 desiredPlayState] == 1)
  {
    v4 = [v3 isAtEnd];
  }

  else
  {
    v4 = 1;
  }

  v5 = [(PXMessagesStackPlaybackControlView *)self viewModel];
  v6 = [v5 currentItem];
  itemIndex = self->_itemIndex;
  v8 = v6 - itemIndex;
  if (v6 - itemIndex < 0)
  {
    v8 = itemIndex - v6;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  if (v6 != itemIndex)
  {
    if (v8 <= 1)
    {
      v9 = [v5 isSettled] ^ 1;
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

- (void)setVideoController:(id)a3
{
  v5 = a3;
  videoController = self->_videoController;
  if (videoController != v5)
  {
    v7 = v5;
    [(PXGDisplayAssetVideoPresentationController *)videoController unregisterChangeObserver:self context:VideoControllerObservationContext];
    objc_storeStrong(&self->_videoController, a3);
    [(PXGDisplayAssetVideoPresentationController *)self->_videoController registerChangeObserver:self context:VideoControllerObservationContext];
    v5 = v7;
  }
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  viewModel = self->_viewModel;
  if (viewModel != v5)
  {
    v7 = v5;
    [(PXMessagesStackPlaybackControlViewModel *)viewModel unregisterChangeObserver:self context:ViewModelObservationContext_203695];
    objc_storeStrong(&self->_viewModel, a3);
    [(PXMessagesStackPlaybackControlViewModel *)self->_viewModel registerChangeObserver:self context:ViewModelObservationContext_203695];
    v5 = v7;
  }
}

- (BOOL)handleTapAtPoint:(CGPoint)a3
{
  v4 = [(PXMessagesStackPlaybackControlView *)self hitTest:0 withEvent:a3.x, a3.y];
  button = self->_button;

  if (v4 == button)
  {
    [(PXMessagesStackPlaybackControlView *)self _handleButton:self->_button];
LABEL_7:
    LOBYTE(v6) = 1;
    return v6;
  }

  v6 = [(PXMessagesStackPlaybackControlView *)self _shouldPauseOnTap];
  if (v6)
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "[Stack Playback] Attempting to pause video playback due to tap on playing item", v10, 2u);
    }

    v8 = [(PXMessagesStackPlaybackControlView *)self videoController];
    [v8 performChanges:&__block_literal_global_203715];

    goto LABEL_7;
  }

  return v6;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = PXMessagesStackPlaybackControlView;
  if ([(PXMessagesStackPlaybackControlView *)&v10 pointInside:v7 withEvent:x, y])
  {
    if ([(PXMessagesStackPlaybackControlView *)self _shouldPauseOnTap])
    {
      v8 = 1;
    }

    else
    {
      [(_PXMessagesStackPlayButton *)self->_button convertPoint:self fromView:x, y];
      v8 = [(_PXMessagesStackPlayButton *)self->_button pointInside:v7 withEvent:?];
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

  v4 = [(PXMessagesStackPlaybackControlView *)self videoController];
  v3 = [v4 desiredPlayState] == 1;

  return v3;
}

- (PXMessagesStackPlaybackControlView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = PXMessagesStackPlaybackControlView;
  v3 = [(PXMessagesStackPlaybackControlView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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