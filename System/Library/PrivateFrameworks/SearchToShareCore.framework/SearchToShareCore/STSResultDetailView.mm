@interface STSResultDetailView
- (CGRect)contentFrameForBounds:(CGRect)bounds traitCollection:(id)collection;
- (CGSize)contentSize;
- (CGSize)providerIconSize;
- (NSString)providerName;
- (STSResultDetailView)initWithFrame:(CGRect)frame;
- (STSResultDetailViewDelegate)delegate;
- (UIEdgeInsets)layoutMargins;
- (void)_calculateFramesForBounds:(CGRect)bounds traitCollection:(id)collection andSetFrames:(BOOL)frames contentFrame:(CGRect *)frame;
- (void)_didTapProvider:(id)provider;
- (void)_didTapReportConcern:(id)concern;
- (void)_didTapSend:(id)send;
- (void)layoutSubviews;
- (void)setCustomContentView:(id)view;
- (void)setIsFullscreen:(BOOL)fullscreen;
- (void)setProviderName:(id)name;
- (void)setShowReportConcern:(BOOL)concern;
- (void)setUseBackgroundBlur:(BOOL)blur;
- (void)updateReportConcernButtonTitle;
- (void)updateWithThumbnail:(id)thumbnail orThumbnailInfo:(id)info;
@end

@implementation STSResultDetailView

- (STSResultDetailView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = STSResultDetailView;
  v3 = [(STSResultDetailView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    sts_detailViewBackgroundColor = [MEMORY[0x277D75348] sts_detailViewBackgroundColor];
    [(STSResultDetailView *)v3 setBackgroundColor:sts_detailViewBackgroundColor];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(STSResultDetailView *)v3 setTintColor:whiteColor];

    v6 = [STSResultDetailFooter alloc];
    v7 = [(STSResultDetailFooter *)v6 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    footer = v3->_footer;
    v3->_footer = v7;

    providerButton = [(STSResultDetailFooter *)v3->_footer providerButton];
    [providerButton addTarget:v3 action:sel__didTapProvider_ forControlEvents:64];

    sendButton = [(STSResultDetailFooter *)v3->_footer sendButton];
    [sendButton addTarget:v3 action:sel__didTapSend_ forControlEvents:64];

    [(STSResultDetailView *)v3 addSubview:v3->_footer];
  }

  return v3;
}

- (void)layoutSubviews
{
  [(STSResultDetailView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  traitCollection = [(STSResultDetailView *)self traitCollection];
  [(STSResultDetailView *)self _calculateFramesForBounds:traitCollection traitCollection:1 andSetFrames:0 contentFrame:v4, v6, v8, v10];
}

- (void)_calculateFramesForBounds:(CGRect)bounds traitCollection:(id)collection andSetFrames:(BOOL)frames contentFrame:(CGRect *)frame
{
  framesCopy = frames;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  collectionCopy = collection;
  [(STSResultDetailView *)self layoutMargins];
  v51 = x;
  v52 = y;
  v16 = width - (v14 + v15);
  v19 = height - (v17 + v18);
  if ([collectionCopy horizontalSizeClass] == 1 || objc_msgSend(collectionCopy, "verticalSizeClass") == 1)
  {
    v50 = dbl_264EC5CB0[v16 < v19];
  }

  else
  {
    v55.origin.x = x;
    v55.origin.y = y;
    v55.size.width = width;
    v55.size.height = height;
    v20 = CGRectGetWidth(v55);
    v56.origin.x = x;
    v56.origin.y = v52;
    v56.size.width = width;
    v56.size.height = height;
    v21 = CGRectGetHeight(v56);
    if (v20 < v21)
    {
      v21 = v20;
    }

    if (v21 >= 1024.0)
    {
      v50 = dbl_264EC5C90[v16 < v19];
    }

    else
    {
      v50 = dbl_264EC5CA0[v16 < v19];
    }
  }

  if (v16 >= v19)
  {
    v22 = v19;
  }

  else
  {
    v22 = v16;
  }

  UICeilToViewScale();
  v24 = v23;
  [(STSResultDetailView *)self contentSize];
  UISizeAspectFitSizeInSizeScale(v25, v26, v22, v24, 0.0);
  UIRectCenteredIntegralRectScale();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  remainder.origin.x = v27;
  remainder.origin.y = v29;
  remainder.size.width = v31;
  remainder.size.height = v33;
  if (self->_isFullscreen)
  {
    v57.origin.x = v51;
    v57.origin.y = v52;
    v57.size.width = width;
    v57.size.height = height;
    v49 = CGRectGetHeight(v57);
    v58.origin.x = v28;
    v58.origin.y = v30;
    v58.size.width = v32;
    v58.size.height = v34;
    v35 = v49 - CGRectGetMaxY(v58);
    v59.origin.x = v51;
    v59.origin.y = v52;
    v36 = v35;
    v59.size.width = width;
    v59.size.height = height;
    if (v36 < v50 * CGRectGetHeight(v59))
    {
      v60.origin.x = v51;
      v60.origin.y = v52;
      v60.size.width = width;
      v60.size.height = height;
      CGRectGetHeight(v60);
      UICeilToViewScale();
      v30 = v30 - v37;
      remainder.origin.y = v30;
    }
  }

  v38 = *(MEMORY[0x277CBF3A0] + 16);
  slice.origin = *MEMORY[0x277CBF3A0];
  slice.size = v38;
  v39 = v28;
  v38.width = v30;
  v40 = v32;
  v41 = v34;
  CGRectDivide(*(&v38 - 8), &slice, &remainder, 52.0, CGRectMaxYEdge);
  slice.origin.x = slice.origin.x + -10.0;
  slice.size.width = slice.size.width + 20.0;
  if (self->_showReportConcern)
  {
    [(UIButton *)self->_reportConcernButton sizeToFit];
    [(UIButton *)self->_reportConcernButton frame];
    v43 = width - v42 + -32.0;
    [(UIButton *)self->_reportConcernButton frame];
    v45 = height - v44 + -8.0;
    [(UIButton *)self->_reportConcernButton frame];
    v47 = v46;
    [(UIButton *)self->_reportConcernButton frame];
    [(UIButton *)self->_reportConcernButton setFrame:v43, v45, v47];
  }

  if (frame)
  {
    size = remainder.size;
    frame->origin = remainder.origin;
    frame->size = size;
  }

  if (framesCopy)
  {
    [(UIVisualEffectView *)self->_backgroundView setFrame:v51, v52, width, height];
    [(UIView *)self->_customContentView setFrame:remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height];
    [(UIImageView *)self->_thumbnailView setFrame:remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height];
    [(STSResultDetailFooter *)self->_footer setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  }
}

- (UIEdgeInsets)layoutMargins
{
  v2 = 0.0;
  v3 = 6.0;
  v4 = 0.0;
  v5 = 6.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_didTapProvider:(id)provider
{
  delegate = [(STSResultDetailView *)self delegate];
  [delegate detailViewDidTapProvider:self];
}

- (void)_didTapSend:(id)send
{
  delegate = [(STSResultDetailView *)self delegate];
  [delegate detailViewDidTapSend:self];
}

- (void)_didTapReportConcern:(id)concern
{
  delegate = [(STSResultDetailView *)self delegate];
  [delegate detailViewDidTapReportConcern:self];
}

- (void)setCustomContentView:(id)view
{
  viewCopy = view;
  customContentView = self->_customContentView;
  v10 = viewCopy;
  if (customContentView != viewCopy)
  {
    [(UIView *)customContentView removeFromSuperview];
    objc_storeStrong(&self->_customContentView, view);
    if (self->_customContentView)
    {
      p_thumbnailView = &self->_thumbnailView;
      superview = [(UIImageView *)self->_thumbnailView superview];
      if (!superview)
      {
        p_thumbnailView = &self->_footer;
      }

      v9 = *p_thumbnailView;

      [(STSResultDetailView *)self insertSubview:self->_customContentView belowSubview:v9];
      [(STSResultDetailView *)self setNeedsLayout];
      [(STSResultDetailView *)self layoutIfNeeded];
    }
  }
}

- (void)updateWithThumbnail:(id)thumbnail orThumbnailInfo:(id)info
{
  thumbnailCopy = thumbnail;
  infoCopy = info;
  if (*&self->_thumbnail != __PAIR128__(infoCopy, thumbnailCopy))
  {
    objc_storeStrong(&self->_thumbnail, thumbnail);
    objc_storeStrong(&self->_thumbnailInfo, info);
    if (self->_thumbnail || self->_thumbnailInfo)
    {
      thumbnailView = self->_thumbnailView;
      if (!thumbnailView)
      {
        v9 = objc_alloc(MEMORY[0x277D755E8]);
        v10 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        v11 = self->_thumbnailView;
        self->_thumbnailView = v10;

        v12 = self->_thumbnailView;
        blackColor = [MEMORY[0x277D75348] blackColor];
        [(UIImageView *)v12 setBackgroundColor:blackColor];

        [(UIImageView *)self->_thumbnailView setContentMode:1];
        [(STSResultDetailView *)self insertSubview:self->_thumbnailView belowSubview:self->_footer];
        [(STSResultDetailView *)self setNeedsLayout];
        [(STSResultDetailView *)self layoutIfNeeded];
        thumbnailView = self->_thumbnailView;
      }

      layer = [(UIImageView *)thumbnailView layer];
      [layer removeAllAnimations];

      v15 = self->_thumbnailView;
      if (self->_thumbnailInfo)
      {
        [(UIImageView *)v15 setImage:0];
        [(UIImageView *)self->_thumbnailView sts_addAnimationsForSTSAnimatedImageInfo:self->_thumbnailInfo];
      }

      else
      {
        [(UIImageView *)v15 setImage:self->_thumbnail];
      }
    }

    else
    {
      [(UIImageView *)self->_thumbnailView removeFromSuperview];
      v16 = self->_thumbnailView;
      self->_thumbnailView = 0;
    }
  }
}

- (CGRect)contentFrameForBounds:(CGRect)bounds traitCollection:(id)collection
{
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *MEMORY[0x277CBF3A0];
  v10 = v4;
  [(STSResultDetailView *)self _calculateFramesForBounds:collection traitCollection:0 andSetFrames:&v9 contentFrame:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v6 = *(&v9 + 1);
  v5 = *&v9;
  v8 = *(&v10 + 1);
  v7 = *&v10;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGSize)providerIconSize
{
  [(STSResultDetailFooter *)self->_footer providerIconSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (NSString)providerName
{
  providerButton = [(STSResultDetailFooter *)self->_footer providerButton];
  v3 = [providerButton titleForState:0];

  return v3;
}

- (void)setProviderName:(id)name
{
  footer = self->_footer;
  nameCopy = name;
  providerButton = [(STSResultDetailFooter *)footer providerButton];
  [providerButton setTitle:nameCopy forState:0];
}

- (void)setIsFullscreen:(BOOL)fullscreen
{
  if (self->_isFullscreen != fullscreen)
  {
    self->_isFullscreen = fullscreen;
    [(STSResultDetailView *)self setNeedsLayout];
  }
}

- (void)setUseBackgroundBlur:(BOOL)blur
{
  if (self->_useBackgroundBlur != blur)
  {
    self->_useBackgroundBlur = blur;
    if (blur)
    {
      clearColor = [MEMORY[0x277D75348] clearColor];
      [(STSResultDetailView *)self setBackgroundColor:clearColor];

      sts_detailViewBackgroundColor = [MEMORY[0x277D75210] effectWithStyle:2];
      v6 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:sts_detailViewBackgroundColor];
      backgroundView = self->_backgroundView;
      self->_backgroundView = v6;

      v8 = self->_backgroundView;
      [(STSResultDetailView *)self bounds];
      [(UIVisualEffectView *)v8 setFrame:?];
      [(STSResultDetailView *)self addSubview:self->_backgroundView];
      [(STSResultDetailView *)self sendSubviewToBack:self->_backgroundView];
    }

    else
    {
      [(UIVisualEffectView *)self->_backgroundView removeFromSuperview];
      v9 = self->_backgroundView;
      self->_backgroundView = 0;

      sts_detailViewBackgroundColor = [MEMORY[0x277D75348] sts_detailViewBackgroundColor];
      [(STSResultDetailView *)self setBackgroundColor:?];
    }
  }
}

- (void)setShowReportConcern:(BOOL)concern
{
  if (self->_showReportConcern != concern)
  {
    v18 = v5;
    v19 = v4;
    v20 = v3;
    self->_showReportConcern = concern;
    reportConcernButton = self->_reportConcernButton;
    if (concern)
    {
      if (!reportConcernButton)
      {
        v11 = [MEMORY[0x277D75220] buttonWithType:1];
        v12 = self->_reportConcernButton;
        self->_reportConcernButton = v11;

        v13 = self->_reportConcernButton;
        systemPinkColor = [MEMORY[0x277D75348] systemPinkColor];
        [(UIButton *)v13 setTitleColor:systemPinkColor forState:0];

        [(UIButton *)self->_reportConcernButton setContentEdgeInsets:10.0, 0.0, 10.0, 0.0];
        titleLabel = [(UIButton *)self->_reportConcernButton titleLabel];
        v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
        [titleLabel setFont:v16];

        [(UIButton *)self->_reportConcernButton addTarget:self action:sel__didTapReportConcern_ forControlEvents:64];
        [(STSResultDetailView *)self addSubview:self->_reportConcernButton];
      }
    }

    else if (reportConcernButton)
    {
      [(UIButton *)reportConcernButton removeFromSuperview];
      v17 = self->_reportConcernButton;
      self->_reportConcernButton = 0;
    }

    [(STSResultDetailView *)self setNeedsLayout:v6];

    [(STSResultDetailView *)self layoutIfNeeded];
  }
}

- (void)updateReportConcernButtonTitle
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__STSResultDetailView_updateReportConcernButtonTitle__block_invoke;
  block[3] = &unk_279B8A988;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __53__STSResultDetailView_updateReportConcernButtonTitle__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 472) setEnabled:0];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__STSResultDetailView_updateReportConcernButtonTitle__block_invoke_2;
  v4[3] = &unk_279B8A988;
  v5 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__STSResultDetailView_updateReportConcernButtonTitle__block_invoke_3;
  v3[3] = &unk_279B8AD38;
  v3[4] = v5;
  return [MEMORY[0x277D75D18] animateWithDuration:v4 animations:v3 completion:0.25];
}

uint64_t __53__STSResultDetailView_updateReportConcernButtonTitle__block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 472) setTitle:@"Feedback submitted" forState:0];
  [*(*(a1 + 32) + 472) sizeToFit];
  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) layoutIfNeeded];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__STSResultDetailView_updateReportConcernButtonTitle__block_invoke_4;
  v3[3] = &unk_279B8A988;
  v3[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] animateWithDuration:v3 animations:0.25];
}

- (STSResultDetailViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end