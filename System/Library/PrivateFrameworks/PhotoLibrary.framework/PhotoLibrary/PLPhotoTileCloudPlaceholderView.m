@interface PLPhotoTileCloudPlaceholderView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (PLPhotoTileCloudPlaceholderView)initWithFrame:(CGRect)a3;
- (void)_retryDownload;
- (void)dealloc;
- (void)fadeOutSoonIfNeededAndRemoveFromSuperview:(BOOL)a3;
- (void)layoutSubviews;
- (void)setImageRect:(CGRect)a3;
- (void)setToolbarVisible:(BOOL)a3;
- (void)showErrorIndicator;
- (void)showLoadingIndicator;
- (void)showLoadingIndicatorWhenReady;
@end

@implementation PLPhotoTileCloudPlaceholderView

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = PLPhotoTileCloudPlaceholderView;
  [(PLPhotoTileCloudPlaceholderView *)&v33 layoutSubviews];
  [(PLPhotoTileCloudPlaceholderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  v12 = MEMORY[0x277D75C58];
  v13 = [objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL;
  if ((v11 - 1) < 2 || v13 == 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = 2;
  }

  [v12 defaultHeightForBarSize:v15];
  v17 = v10 - v16;
  if (self->_toolbarVisible)
  {
    v10 = v17;
  }

  if (!CGRectIsEmpty(self->_imageRect))
  {
    height = self->_imageRect.size.height;
    y = self->_imageRect.origin.y;
    if (self->_imageRect.size.width + self->_imageRect.origin.x < v8)
    {
      v8 = self->_imageRect.size.width + self->_imageRect.origin.x;
    }

    if (height + y < v10)
    {
      v10 = height + y;
    }

    v4 = 0.0;
    v6 = 0.0;
  }

  if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v20 = 44.0;
  }

  else
  {
    v20 = 22.0;
  }

  if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v21 = 44.0;
  }

  else
  {
    v21 = 22.0;
  }

  v22 = 0;
  v23 = 0;
  v24 = v20;
  v25 = CGRectGetMaxX(*(&v21 - 3)) + 8.0;
  if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v26 = 44.0;
  }

  else
  {
    v26 = 22.0;
  }

  if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v27 = 44.0;
  }

  else
  {
    v27 = 22.0;
  }

  v28 = 0;
  v29 = 0;
  v30 = v26;
  v31 = CGRectGetMaxY(*(&v27 - 3)) + 8.0;
  v34.origin.x = v4;
  v34.origin.y = v6;
  v34.size.width = v8;
  v34.size.height = v10;
  v32 = CGRectGetMaxX(v34) - v25;
  v35.origin.x = v4;
  v35.origin.y = v6;
  v35.size.width = v8;
  v35.size.height = v10;
  [(UIView *)self->_loadingContainerView setFrame:v32, CGRectGetMaxY(v35) - v31, v25, v31];
}

- (void)setImageRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_imageRect = &self->_imageRect;
  if (!CGRectEqualToRect(self->_imageRect, a3))
  {
    p_imageRect->origin.x = x;
    p_imageRect->origin.y = y;
    p_imageRect->size.width = width;
    p_imageRect->size.height = height;

    [(PLPhotoTileCloudPlaceholderView *)self setNeedsLayout];
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  if (!self->_showingError)
  {
    return 0;
  }

  loadingErrorButton = self->_loadingErrorButton;
  [(UIButton *)loadingErrorButton convertPoint:self fromView:a3.x, a3.y];

  return [(UIButton *)loadingErrorButton pointInside:a4 withEvent:?];
}

- (void)_retryDownload
{
  if (self->_delegate)
  {
    [(PLRoundProgressView *)self->_loadingIndicatorView resetProgress];
    [(PLPhotoTileCloudPlaceholderView *)self showLoadingIndicator];
    delegate = self->_delegate;

    [(PLPhotoTileCloudPlaceholderViewDelegate *)delegate retryDownload];
  }
}

- (void)setToolbarVisible:(BOOL)a3
{
  if (self->_toolbarVisible != a3)
  {
    self->_toolbarVisible = a3;
    [(PLPhotoTileCloudPlaceholderView *)self setNeedsLayout];
  }
}

- (void)showErrorIndicator
{
  if (self->_indicatorIsVisible)
  {
    v33[5] = v11;
    v33[6] = v10;
    v33[7] = v9;
    v33[8] = v8;
    v33[9] = v7;
    v33[10] = v6;
    v33[11] = v5;
    v33[12] = v4;
    v33[19] = v2;
    v33[20] = v3;
    if (self->_loadingErrorButton)
    {
      p_showingError = &self->_showingError;
      if (self->_showingError && !self->_showingLoading)
      {
        return;
      }
    }

    else
    {
      v14 = MEMORY[0x277CCACA8];
      if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v15 = @"_iPad";
      }

      else
      {
        v15 = &stru_282C49210;
      }

      v16 = [v14 stringWithFormat:@"Loading_Error%@.png", v15];
      v17 = [MEMORY[0x277D755B8] imageNamed:v16 inBundle:PLPhotoLibraryFrameworkBundle()];
      v18 = [MEMORY[0x277D75220] buttonWithType:0];
      self->_loadingErrorButton = v18;
      if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v19 = 44.0;
      }

      else
      {
        v19 = 22.0;
      }

      if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v20 = 60.0;
      }

      else
      {
        v20 = 40.0;
      }

      v21 = v19 - v20;
      if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v22 = 44.0;
      }

      else
      {
        v22 = 22.0;
      }

      if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v23 = 60.0;
      }

      else
      {
        v23 = 40.0;
      }

      v24 = v22 - v23;
      if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v25 = 60.0;
      }

      else
      {
        v25 = 40.0;
      }

      if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v26 = 60.0;
      }

      else
      {
        v26 = 40.0;
      }

      [(UIButton *)v18 setFrame:v21, v24, v25, v26];
      [(UIButton *)self->_loadingErrorButton setImage:v17 forState:0];
      loadingErrorButton = self->_loadingErrorButton;
      if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v28 = 60.0;
      }

      else
      {
        v28 = 40.0;
      }

      if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v29 = 44.0;
      }

      else
      {
        v29 = 22.0;
      }

      v30 = v28 - v29;
      if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v31 = 60.0;
      }

      else
      {
        v31 = 40.0;
      }

      if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v32 = 44.0;
      }

      else
      {
        v32 = 22.0;
      }

      [(UIButton *)loadingErrorButton setImageEdgeInsets:v30, v31 - v32, 0.0, 0.0];
      [(UIButton *)self->_loadingErrorButton addTarget:self action:sel__retryDownload forControlEvents:64];
      [(UIButton *)self->_loadingErrorButton setAlpha:0.0];
      [(UIView *)self->_loadingContainerView addSubview:self->_loadingErrorButton];
      p_showingError = &self->_showingError;
      self->_showingError = 0;
    }

    *p_showingError = 1;
    self->_showingLoading = 0;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __53__PLPhotoTileCloudPlaceholderView_showErrorIndicator__block_invoke;
    v33[3] = &unk_2782A2020;
    v33[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:0 delay:v33 options:&__block_literal_global_1443 animations:0.25 completion:0.0];
  }
}

uint64_t __53__PLPhotoTileCloudPlaceholderView_showErrorIndicator__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 408) stopProgressTimer];
  [*(*(a1 + 32) + 408) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 424);

  return [v2 setAlpha:1.0];
}

- (void)showLoadingIndicator
{
  if (self->_indicatorIsVisible && (self->_showingError || !self->_showingLoading))
  {
    v5[5] = v2;
    v5[6] = v3;
    self->_showingError = 0;
    self->_showingLoading = 1;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __55__PLPhotoTileCloudPlaceholderView_showLoadingIndicator__block_invoke;
    v5[3] = &unk_2782A2020;
    v5[4] = self;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __55__PLPhotoTileCloudPlaceholderView_showLoadingIndicator__block_invoke_2;
    v4[3] = &unk_2782A2048;
    v4[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:0 delay:v5 options:v4 animations:0.25 completion:1.0];
  }
}

uint64_t __55__PLPhotoTileCloudPlaceholderView_showLoadingIndicator__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 408) setAlpha:1.0];
  [*(*(a1 + 32) + 408) startProgressTimer];
  v2 = *(*(a1 + 32) + 424);

  return [v2 setAlpha:0.0];
}

uint64_t __55__PLPhotoTileCloudPlaceholderView_showLoadingIndicator__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  *(*(a1 + 32) + 480) = v3;
  return result;
}

- (void)showLoadingIndicatorWhenReady
{
  if (!self->_indicatorIsVisible)
  {
    self->_indicatorIsVisible = 1;
    [(PLPhotoTileCloudPlaceholderView *)self showLoadingIndicator];
  }
}

- (void)fadeOutSoonIfNeededAndRemoveFromSuperview:(BOOL)a3
{
  v3 = a3;
  self->_delegate = 0;
  [(PLRoundProgressView *)self->_loadingIndicatorView setProgress:1.0];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  if (v3)
  {
    v6 = v5 - self->_lastViewPhaseChangeDate;
    v7 = 0.3 - v6;
    v8 = v6 < 0.3;
    v9 = 0.0;
    if (v8)
    {
      v9 = v7;
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __77__PLPhotoTileCloudPlaceholderView_fadeOutSoonIfNeededAndRemoveFromSuperview___block_invoke;
    v11[3] = &unk_2782A2020;
    v11[4] = self;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __77__PLPhotoTileCloudPlaceholderView_fadeOutSoonIfNeededAndRemoveFromSuperview___block_invoke_2;
    v10[3] = &unk_2782A2048;
    v10[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:2 delay:v11 options:v10 animations:0.3 completion:v9];
  }

  else
  {
    [(PLRoundProgressView *)self->_loadingIndicatorView stopProgressTimer];

    [(PLPhotoTileCloudPlaceholderView *)self removeFromSuperview];
  }
}

uint64_t __77__PLPhotoTileCloudPlaceholderView_fadeOutSoonIfNeededAndRemoveFromSuperview___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 408) stopProgressTimer];
  v2 = *(a1 + 32);

  return [v2 removeFromSuperview];
}

- (void)dealloc
{
  self->_loadingErrorButton = 0;
  [(PLRoundProgressView *)self->_loadingIndicatorView stopProgressTimer];

  self->_loadingIndicatorView = 0;
  self->_loadingContainerView = 0;
  v3.receiver = self;
  v3.super_class = PLPhotoTileCloudPlaceholderView;
  [(PLPhotoTileCloudPlaceholderView *)&v3 dealloc];
}

- (PLPhotoTileCloudPlaceholderView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = PLPhotoTileCloudPlaceholderView;
  v3 = [(PLPhotoTileCloudPlaceholderView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v3->_lastViewPhaseChangeDate = v4;
    [(PLPhotoTileCloudPlaceholderView *)v3 setUserInteractionEnabled:0];
    -[PLPhotoTileCloudPlaceholderView setBackgroundColor:](v3, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
    v5 = objc_alloc(MEMORY[0x277D75D18]);
    v3->_loadingContainerView = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = [PLRoundProgressView alloc];
    if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v7 = 44.0;
    }

    else
    {
      v7 = 22.0;
    }

    if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v8 = 44.0;
    }

    else
    {
      v8 = 22.0;
    }

    v9 = [(PLRoundProgressView *)v6 initWithFrame:0.0, 0.0, v7, v8];
    v3->_loadingIndicatorView = v9;
    [(UIView *)v3->_loadingContainerView addSubview:v9];
    [(PLPhotoTileCloudPlaceholderView *)v3 addSubview:v3->_loadingContainerView];
    [(PLPhotoTileCloudPlaceholderView *)v3 setUserInteractionEnabled:1];
    v3->_toolbarVisible = 1;
  }

  return v3;
}

@end