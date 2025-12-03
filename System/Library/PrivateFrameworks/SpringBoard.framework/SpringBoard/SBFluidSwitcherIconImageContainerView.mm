@interface SBFluidSwitcherIconImageContainerView
- (SBFluidSwitcherIconImageContainerView)initWithFrame:(CGRect)frame;
- (void)_configureIconImageView:(id)view;
- (void)_crossfadeToCustomImageView:(id)view;
- (void)_crossfadeToImage:(id)image;
- (void)layoutSubviews;
- (void)setCustomImageView:(id)view animated:(BOOL)animated;
- (void)setImage:(id)image animated:(BOOL)animated;
@end

@implementation SBFluidSwitcherIconImageContainerView

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = SBFluidSwitcherIconImageContainerView;
  [(SBFluidSwitcherIconImageContainerView *)&v27 layoutSubviews];
  [(SBFluidSwitcherIconImageContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  superview = [(UIImageView *)self->_imageView superview];

  if (superview == self)
  {
    [(UIImageView *)self->_imageView setFrame:v4, v6, v8, v10];
  }

  customImageView = [(SBFluidSwitcherIconImageContainerView *)self customImageView];
  v13 = customImageView;
  if (customImageView)
  {
    [customImageView bounds];
    v15 = v14;
    v25 = v16;
    rect.origin.x = v14;
    v18 = v17;
    v20 = v19;
    v28.origin.x = v4;
    v28.origin.y = v6;
    v28.size.width = v8;
    v28.size.height = v10;
    Width = CGRectGetWidth(v28);
    v29.origin.x = v15;
    v29.origin.y = v18;
    v29.size.width = v20;
    v29.size.height = v25;
    v22 = Width / CGRectGetWidth(v29);
    v30.origin.x = v4;
    v30.origin.y = v6;
    v30.size.width = v8;
    v30.size.height = v10;
    Height = CGRectGetHeight(v30);
    v31.origin.x = rect.origin.x;
    v31.origin.y = v18;
    v31.size.width = v20;
    v31.size.height = v25;
    v24 = CGRectGetHeight(v31);
    CGAffineTransformMakeScale(&rect.size, v22, Height / v24);
    [v13 setTransform:&rect.size];
    UIRectGetCenter();
    [v13 setCenter:?];
  }
}

- (SBFluidSwitcherIconImageContainerView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = SBFluidSwitcherIconImageContainerView;
  v3 = [(SBFluidSwitcherIconImageContainerView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    [(SBFluidSwitcherIconImageContainerView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    imageView = v3->_imageView;
    v3->_imageView = v5;

    [(SBFluidSwitcherIconImageContainerView *)v3 _configureIconImageView:v3->_imageView];
    [(SBFluidSwitcherIconImageContainerView *)v3 addSubview:v3->_imageView];
  }

  return v3;
}

- (void)setImage:(id)image animated:(BOOL)animated
{
  animatedCopy = animated;
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v8 = imageCopy;
    objc_storeStrong(&self->_image, image);
    if (animatedCopy)
    {
      [(SBFluidSwitcherIconImageContainerView *)self _crossfadeToImage:v8];
    }

    else
    {
      [(UIImageView *)self->_imageView setImage:v8];
    }

    imageCopy = v8;
  }
}

- (void)setCustomImageView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  customImageView = self->_customImageView;
  if (customImageView != viewCopy)
  {
    v9 = viewCopy;
    if (animatedCopy)
    {
      [(SBFluidSwitcherIconImageContainerView *)self _crossfadeToCustomImageView:viewCopy];
    }

    else
    {
      [(UIView *)customImageView removeFromSuperview];
      if (v9)
      {
        [(SBFluidSwitcherIconImageContainerView *)self addSubview:v9];
      }

      objc_storeStrong(&self->_customImageView, view);
    }

    viewCopy = v9;
  }
}

- (void)_configureIconImageView:(id)view
{
  viewCopy = view;
  [viewCopy setContentMode:1];
  layer = [viewCopy layer];

  [layer setAllowsEdgeAntialiasing:1];
}

- (void)_crossfadeToImage:(id)image
{
  v4 = MEMORY[0x277D755E8];
  imageCopy = image;
  v6 = [[v4 alloc] initWithImage:imageCopy];

  [(SBFluidSwitcherIconImageContainerView *)self _configureIconImageView:v6];
  v7 = [MEMORY[0x277D67940] crossfadeViewWithStartView:self->_imageView endView:v6 translucent:0];
  imageView = self->_imageView;
  self->_imageView = v6;
  v9 = v6;

  v10 = [MEMORY[0x277CF0D38] factoryWithDuration:0.1];
  [v7 setAnimationFactory:v10];

  [(SBFluidSwitcherIconImageContainerView *)self bounds];
  [v7 setFrame:?];
  [(SBFluidSwitcherIconImageContainerView *)self addSubview:v7];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__SBFluidSwitcherIconImageContainerView__crossfadeToImage___block_invoke;
  v12[3] = &unk_2783A92D8;
  v12[4] = self;
  v13 = v7;
  v11 = v7;
  [v11 crossfadeWithCompletion:v12];
}

uint64_t __59__SBFluidSwitcherIconImageContainerView__crossfadeToImage___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[51];
  [v2 bounds];
  [v3 setFrame:?];
  [*(a1 + 32) addSubview:*(*(a1 + 32) + 408)];
  [*(a1 + 40) removeFromSuperview];
  v4 = *(a1 + 32);

  return [v4 setNeedsLayout];
}

- (void)_crossfadeToCustomImageView:(id)view
{
  viewCopy = view;
  v6 = self->_customImageView;
  v7 = [MEMORY[0x277D67940] crossfadeViewWithStartView:self->_customImageView endView:viewCopy translucent:0];
  objc_storeStrong(&self->_customImageView, view);
  v8 = [MEMORY[0x277CF0D38] factoryWithDuration:0.1];
  [v7 setAnimationFactory:v8];

  [(UIView *)v6 bounds];
  [v7 setBounds:?];
  [(UIView *)v6 center];
  [v7 setCenter:?];
  if (v6)
  {
    [(UIView *)v6 transform];
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  [v7 setTransform:v12];
  [(SBFluidSwitcherIconImageContainerView *)self addSubview:v7];
  [(SBFluidSwitcherIconImageContainerView *)self layoutIfNeeded];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__SBFluidSwitcherIconImageContainerView__crossfadeToCustomImageView___block_invoke;
  v10[3] = &unk_2783A92D8;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [v9 crossfadeWithCompletion:v10];
}

uint64_t __69__SBFluidSwitcherIconImageContainerView__crossfadeToCustomImageView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addSubview:*(*(a1 + 32) + 416)];
  [*(a1 + 40) removeFromSuperview];
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

@end