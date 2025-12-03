@interface SBFluidSwitcherButton
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (SBFluidSwitcherButton)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)extendedEdgeInsets;
- (id)_backgroundMaterialView;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_addHighlightViewIfNecessary;
- (void)_configureBackgroundViewIfNecessaryForStyle:(int64_t)style;
- (void)_configureGlyphImageViewIfNecessaryForStyle:(int64_t)style;
- (void)_configureXPlusDViewIfNecessaryForStyle:(int64_t)style;
- (void)_invalidateBackgroundView;
- (void)_invalidateXPlusDView;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)setBackdropGroupName:(id)name;
- (void)setButtonStyle:(int64_t)style;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image;
@end

@implementation SBFluidSwitcherButton

- (SBFluidSwitcherButton)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = SBFluidSwitcherButton;
  v3 = [(SBFluidSwitcherButton *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    glyphImageView = v3->_glyphImageView;
    v3->_glyphImageView = v5;

    [(UIImageView *)v3->_glyphImageView setContentMode:4];
    [(SBFluidSwitcherButton *)v3 addSubview:v3->_glyphImageView];
    v7 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v3];
    [(SBFluidSwitcherButton *)v3 addInteraction:v7];
  }

  return v3;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_image, image);
    [(UIImageView *)self->_glyphImageView setImage:self->_image];
    [(UIImageView *)self->_glyphImageView sizeToFit];
    [(UIImageView *)self->_xPlusDView setImage:self->_image];
    [(SBFluidSwitcherButton *)self setNeedsLayout];
    imageCopy = v6;
  }
}

- (void)setBackdropGroupName:(id)name
{
  nameCopy = name;
  if ((BSEqualStrings() & 1) == 0)
  {
    objc_storeStrong(&self->_backdropGroupName, name);
    _backgroundMaterialView = [(SBFluidSwitcherButton *)self _backgroundMaterialView];
    [_backgroundMaterialView setGroupNameBase:self->_backdropGroupName];
  }
}

- (void)setButtonStyle:(int64_t)style
{
  if (style >= 2)
  {
    [(SBFluidSwitcherButton *)a2 setButtonStyle:?];
  }

  if (self->_buttonStyle != style)
  {
    self->_buttonStyle = style;
    [(SBFluidSwitcherButton *)self _invalidateBackgroundView];
    [(SBFluidSwitcherButton *)self _invalidateXPlusDView];

    [(SBFluidSwitcherButton *)self setNeedsLayout];
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(SBFluidSwitcherButton *)self bounds];
  top = self->_extendedEdgeInsets.top;
  left = self->_extendedEdgeInsets.left;
  v10 = v9 + left;
  v12 = v11 + top;
  v14 = v13 - (left + self->_extendedEdgeInsets.right);
  v16 = v15 - (top + self->_extendedEdgeInsets.bottom);
  v17 = x;
  v18 = y;

  return CGRectContainsPoint(*&v10, *&v17);
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = SBFluidSwitcherButton;
  [(SBFluidSwitcherButton *)&v19 layoutSubviews];
  [(SBFluidSwitcherButton *)self _configureGlyphImageViewIfNecessaryForStyle:self->_buttonStyle];
  [(SBFluidSwitcherButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIImageView *)self->_glyphImageView frame];
  UIRectCenteredIntegralRectScale();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(UIImageView *)self->_glyphImageView setFrame:0];
  [(SBFluidSwitcherButton *)self _configureXPlusDViewIfNecessaryForStyle:self->_buttonStyle];
  [(UIImageView *)self->_xPlusDView setFrame:v12, v14, v16, v18];
  [(SBFluidSwitcherButton *)self _setContinuousCornerRadius:v10 * 0.5];
  [(SBFluidSwitcherButton *)self _configureBackgroundViewIfNecessaryForStyle:self->_buttonStyle];
  [(UIView *)self->_backgroundView setFrame:v4, v6, v8, v10];
  [(UIView *)self->_backgroundView _setContinuousCornerRadius:v10 * 0.5];
  [(UIView *)self->_highlightView setFrame:v4, v6, v8, v10];
  [(UIView *)self->_highlightView _setContinuousCornerRadius:v10 * 0.5];
}

- (void)didMoveToSuperview
{
  superview = [(SBFluidSwitcherButton *)self superview];

  if (superview)
  {
    _backgroundMaterialView = [(SBFluidSwitcherButton *)self _backgroundMaterialView];
    v4 = [_backgroundMaterialView visualStylingProviderForCategory:2];
    [v4 automaticallyUpdateView:self->_glyphImageView withStyle:0];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(SBFluidSwitcherButton *)self isHighlighted];
  v7.receiver = self;
  v7.super_class = SBFluidSwitcherButton;
  [(SBFluidSwitcherButton *)&v7 setHighlighted:highlightedCopy];
  if (isHighlighted != highlightedCopy)
  {
    [(SBFluidSwitcherButton *)self _addHighlightViewIfNecessary];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__SBFluidSwitcherButton_setHighlighted___block_invoke;
    v6[3] = &unk_2783A8C18;
    v6[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:0x20000 delay:v6 options:0 animations:0.19 completion:0.0];
  }
}

uint64_t __40__SBFluidSwitcherButton_setHighlighted___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[60];
  v3 = [v1 isHighlighted];
  v4 = 0.466666667;
  if (!v3)
  {
    v4 = 0.0;
  }

  return [v2 setAlpha:v4];
}

- (void)_addHighlightViewIfNecessary
{
  if (!self->_highlightView)
  {
    v4[5] = v2;
    v4[6] = v3;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __53__SBFluidSwitcherButton__addHighlightViewIfNecessary__block_invoke;
    v4[3] = &unk_2783A8C18;
    v4[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v4];
  }
}

uint64_t __53__SBFluidSwitcherButton__addHighlightViewIfNecessary__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D75D18]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 480);
  *(v3 + 480) = v2;

  v5 = *(*(a1 + 32) + 480);
  v6 = [MEMORY[0x277D75348] whiteColor];
  [v5 setBackgroundColor:v6];

  [*(*(a1 + 32) + 480) setAlpha:0.0];
  v7 = [*(*(a1 + 32) + 480) layer];
  [v7 setCompositingFilter:*MEMORY[0x277CDA610]];

  [*(a1 + 32) insertSubview:*(*(a1 + 32) + 480) aboveSubview:*(*(a1 + 32) + 456)];
  v8 = *(a1 + 32);

  return [v8 layoutIfNeeded];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  view = [beginCopy view];
  if (view == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [beginCopy numberOfTouchesRequired] != 1)
  {

    goto LABEL_7;
  }

  numberOfTapsRequired = [beginCopy numberOfTapsRequired];

  if (numberOfTapsRequired != 1)
  {
LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  v6 = MEMORY[0x277D75880];
  regionCopy = region;
  [(SBFluidSwitcherButton *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  identifier = [regionCopy identifier];

  v17 = [v6 regionWithRect:identifier identifier:{v9, v11, v13, v15}];

  return v17;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = objc_alloc_init(MEMORY[0x277D758D8]);
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v5 setBackgroundColor:clearColor];

  v7 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self parameters:v5];
  v8 = [MEMORY[0x277D75878] effectWithPreview:v7];
  v9 = [MEMORY[0x277D75890] styleWithEffect:v8 shape:0];

  return v9;
}

- (id)_backgroundMaterialView
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    backgroundView = self->_backgroundView;
  }

  else
  {
    backgroundView = 0;
  }

  return backgroundView;
}

- (void)_invalidateBackgroundView
{
  if (self->_backgroundView)
  {
    _backgroundMaterialView = [(SBFluidSwitcherButton *)self _backgroundMaterialView];
    v4 = [_backgroundMaterialView visualStylingProviderForCategory:2];
    [v4 stopAutomaticallyUpdatingView:self->_glyphImageView];

    [(UIView *)self->_backgroundView removeFromSuperview];
    backgroundView = self->_backgroundView;
    self->_backgroundView = 0;
  }
}

- (void)_configureBackgroundViewIfNecessaryForStyle:(int64_t)style
{
  if (!self->_backgroundView)
  {
    if (style == 1)
    {
      v7 = objc_alloc_init(MEMORY[0x277D75D18]);
      backgroundView = self->_backgroundView;
      self->_backgroundView = v7;

      v9 = self->_backgroundView;
      tertiarySystemFillColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
      [(UIView *)v9 setBackgroundColor:tertiarySystemFillColor];

      [(UIView *)self->_backgroundView setUserInteractionEnabled:0];
    }

    else if (!style)
    {
      v4 = [MEMORY[0x277D26718] materialViewWithRecipe:52];
      objc_storeStrong(&self->_backgroundView, v4);
      [v4 setGroupNameBase:self->_backdropGroupName];
      superview = [(SBFluidSwitcherButton *)self superview];

      if (superview)
      {
        v6 = [v4 visualStylingProviderForCategory:2];
        [v6 automaticallyUpdateView:self->_glyphImageView withStyle:0];
      }
    }

    v11 = self->_backgroundView;

    [(SBFluidSwitcherButton *)self insertSubview:v11 atIndex:0];
  }
}

- (void)_invalidateXPlusDView
{
  xPlusDView = self->_xPlusDView;
  if (xPlusDView)
  {
    [(UIImageView *)xPlusDView removeFromSuperview];
    v4 = self->_xPlusDView;
    self->_xPlusDView = 0;
  }
}

- (void)_configureXPlusDViewIfNecessaryForStyle:(int64_t)style
{
  if (!style && !self->_xPlusDView)
  {
    v4 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:self->_image];
    xPlusDView = self->_xPlusDView;
    self->_xPlusDView = v4;

    [(UIImageView *)self->_xPlusDView setContentMode:4];
    layer = [(UIImageView *)self->_xPlusDView layer];
    v7 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5D8]];
    [layer setCompositingFilter:v7];

    [(UIImageView *)self->_xPlusDView setAlpha:0.3];
    v8 = self->_xPlusDView;

    [(SBFluidSwitcherButton *)self addSubview:v8];
  }
}

- (void)_configureGlyphImageViewIfNecessaryForStyle:(int64_t)style
{
  glyphImageView = self->_glyphImageView;
  if (style == 1)
  {
    tintColor = [(UIImageView *)glyphImageView tintColor];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    if ((BSEqualObjects() & 1) == 0)
    {
      [(UIImageView *)self->_glyphImageView setTintColor:secondaryLabelColor];
    }
  }

  else
  {

    [(UIImageView *)glyphImageView setTintColor:0];
  }
}

- (UIEdgeInsets)extendedEdgeInsets
{
  top = self->_extendedEdgeInsets.top;
  left = self->_extendedEdgeInsets.left;
  bottom = self->_extendedEdgeInsets.bottom;
  right = self->_extendedEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)setButtonStyle:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFluidSwitcherButton.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"(buttonStyle == SBSwitcherPlusButtonStyleVibrant) || (buttonStyle == SBSwitcherPlusButtonStyleMuted)"}];
}

@end