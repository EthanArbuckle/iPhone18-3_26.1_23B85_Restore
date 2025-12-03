@interface PLPhotoTilePlaceholderView
- (PLPhotoTilePlaceholderView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)fadeOutSoonIfNeededAndRemoveFromSuperview:(BOOL)superview;
- (void)layoutSubviews;
- (void)showLoadingIndicatorWhenReady;
@end

@implementation PLPhotoTilePlaceholderView

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = PLPhotoTilePlaceholderView;
  [(PLPhotoTilePlaceholderView *)&v16 layoutSubviews];
  [(PLPhotoTilePlaceholderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIActivityIndicatorView *)self->_loadingIndicatorView setFrame:10.0, 10.0, 20.0, 20.0];
  [(UILabel *)self->_loadingLabel sizeThatFits:v8, v10];
  v12 = v11;
  v14 = v13;
  v17.origin.x = 10.0;
  v17.origin.y = 10.0;
  v17.size.width = 20.0;
  v17.size.height = 20.0;
  v15 = CGRectGetMaxX(v17) + 5.0;
  [(UILabel *)self->_loadingLabel setFrame:v15, 11.0, v12, v14];
  v18.origin.y = 11.0;
  v18.origin.x = v15;
  v18.size.width = v12;
  v18.size.height = v14;
  CGRectGetMaxX(v18);
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  CGRectGetMidY(v19);
  UIRectCenteredXInRect();
  [(UIView *)self->_loadingContainerView setFrame:?];
}

- (void)showLoadingIndicatorWhenReady
{
  if (!self->_indicatorIsVisible)
  {
    self->_indicatorIsVisible = 1;
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __59__PLPhotoTilePlaceholderView_showLoadingIndicatorWhenReady__block_invoke;
    v3[3] = &unk_2782A2020;
    v3[4] = self;
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __59__PLPhotoTilePlaceholderView_showLoadingIndicatorWhenReady__block_invoke_2;
    v2[3] = &unk_2782A2048;
    v2[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:0 delay:v3 options:v2 animations:0.25 completion:1.0];
  }
}

uint64_t __59__PLPhotoTilePlaceholderView_showLoadingIndicatorWhenReady__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  *(*(a1 + 32) + 432) = v3;
  return result;
}

- (void)fadeOutSoonIfNeededAndRemoveFromSuperview:(BOOL)superview
{
  superviewCopy = superview;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  if (superviewCopy)
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
    v11[2] = __72__PLPhotoTilePlaceholderView_fadeOutSoonIfNeededAndRemoveFromSuperview___block_invoke;
    v11[3] = &unk_2782A2020;
    v11[4] = self;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__PLPhotoTilePlaceholderView_fadeOutSoonIfNeededAndRemoveFromSuperview___block_invoke_2;
    v10[3] = &unk_2782A2048;
    v10[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:0 delay:v11 options:v10 animations:0.3 completion:v9];
  }

  else
  {

    [(PLPhotoTilePlaceholderView *)self removeFromSuperview];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PLPhotoTilePlaceholderView;
  [(PLPhotoTilePlaceholderView *)&v3 dealloc];
}

- (PLPhotoTilePlaceholderView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = PLPhotoTilePlaceholderView;
  v3 = [(PLPhotoTilePlaceholderView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v3->_lastViewPhaseChangeDate = v4;
    [(PLPhotoTilePlaceholderView *)v3 setUserInteractionEnabled:0];
    -[PLPhotoTilePlaceholderView setBackgroundColor:](v3, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
    v3->_loadingContainerView = objc_alloc_init(MEMORY[0x277D75D18]);
    v5 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2020];
    [(UIView *)v3->_loadingContainerView addSubview:v5];
    [(UIView *)v3->_loadingContainerView sendSubviewToBack:v5];
    [(UIView *)v3->_loadingContainerView setClipsToBounds:1];
    [(CALayer *)[(UIView *)v3->_loadingContainerView layer] setCornerRadius:9.0];
    v6 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    v3->_loadingIndicatorView = v6;
    [(UIActivityIndicatorView *)v6 startAnimating];
    [(UIView *)v3->_loadingContainerView addSubview:v3->_loadingIndicatorView];
    v7 = objc_alloc_init(MEMORY[0x277D756B8]);
    v3->_loadingLabel = v7;
    [(UILabel *)v7 setOpaque:0];
    -[UILabel setBackgroundColor:](v3->_loadingLabel, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
    -[UILabel setFont:](v3->_loadingLabel, "setFont:", [MEMORY[0x277D74300] boldSystemFontOfSize:16.0]);
    [(UILabel *)v3->_loadingLabel setAlpha:0.5];
    -[UILabel setTextColor:](v3->_loadingLabel, "setTextColor:", [MEMORY[0x277D75348] blackColor]);
    [(UILabel *)v3->_loadingLabel setText:PLLocalizedFrameworkString()];
    [(UIView *)v3->_loadingContainerView addSubview:v3->_loadingLabel];
    [(PLPhotoTilePlaceholderView *)v3 addSubview:v3->_loadingContainerView];
  }

  return v3;
}

@end