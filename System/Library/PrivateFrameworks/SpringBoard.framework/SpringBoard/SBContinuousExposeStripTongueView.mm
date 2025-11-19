@interface SBContinuousExposeStripTongueView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (SBContinuousExposeStripTongueView)initWithFrame:(CGRect)a3;
- (SBContinuousExposeStripTongueViewDelegate)delegate;
- (SBSwitcherContinuousExposeStripTongueAttributes)attributes;
- (void)_handleTap:(id)a3;
- (void)_updateContainerPosition;
- (void)_updateContainerTransform;
- (void)_updateSubviewLayoutForCollapsedOrExpandedState;
- (void)_updateSubviewOpacityForCollapsedOrExpandedState;
- (void)layoutSubviews;
- (void)setAttributes:(SBSwitcherContinuousExposeStripTongueAttributes)a3 animated:(BOOL)a4;
@end

@implementation SBContinuousExposeStripTongueView

- (SBContinuousExposeStripTongueView)initWithFrame:(CGRect)a3
{
  v36[1] = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = SBContinuousExposeStripTongueView;
  v3 = [(SBContinuousExposeStripTongueView *)&v35 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_attributes.state = SBSwitcherContinuousExposeStripTongueAttributesNone();
    v4->_attributes.direction = v5;
    v6 = [MEMORY[0x277D755B8] imageNamed:@"SlideOverTongueMask"];
    [v6 size];
    v4->_bitmapMaskSize.width = v7;
    v4->_bitmapMaskSize.height = v8;
    v9 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, v4->_bitmapMaskSize.width, v4->_bitmapMaskSize.height}];
    tongueContainerView = v4->_tongueContainerView;
    v4->_tongueContainerView = v9;

    v11 = [(UIView *)v4->_tongueContainerView layer];
    [v11 setAnchorPoint:{1.0, 0.5}];

    [(SBContinuousExposeStripTongueView *)v4 addSubview:v4->_tongueContainerView];
    v12 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:-2];
    backdropView = v4->_backdropView;
    v4->_backdropView = v12;

    v14 = [(_UIBackdropView *)v4->_backdropView inputSettings];
    [v14 setBlurRadius:0.0];

    v15 = [(_UIBackdropView *)v4->_backdropView inputSettings];
    [v15 setScale:1.0];

    v16 = [(_UIBackdropView *)v4->_backdropView inputSettings];
    [v16 setBackdropVisible:1];

    [(_UIBackdropView *)v4->_backdropView setGroupName:@"SBContinuousExposeStripTongueBackdropName"];
    [(UIView *)v4->_tongueContainerView addSubview:v4->_backdropView];
    v17 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v6];
    tongueMaskView = v4->_tongueMaskView;
    v4->_tongueMaskView = v17;

    [(UIView *)v4->_tongueMaskView setContentMode:0];
    v19 = [(UIView *)v4->_tongueMaskView layer];
    [v19 setCompositingFilter:*MEMORY[0x277CDA310]];

    [(UIView *)v4->_tongueContainerView addSubview:v4->_tongueMaskView];
    v20 = MEMORY[0x277D755B8];
    v21 = [MEMORY[0x277D755D0] configurationWithPointSize:44.0];
    v22 = [v20 systemImageNamed:@"chevron.compact.left" withConfiguration:v21];

    v23 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v22];
    chevronImageView = v4->_chevronImageView;
    v4->_chevronImageView = v23;

    [(UIImageView *)v4->_chevronImageView setSemanticContentAttribute:3];
    v25 = v4->_chevronImageView;
    v26 = [MEMORY[0x277D75348] blackColor];
    [(UIImageView *)v25 setTintColor:v26];

    v27 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA640]];
    v34[2] = xmmword_21F8A8AD0;
    v34[3] = unk_21F8A8AE0;
    v34[4] = xmmword_21F8A8AF0;
    v34[0] = xmmword_21F8A8AB0;
    v34[1] = unk_21F8A8AC0;
    v28 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:v34];
    [v27 setValue:v28 forKey:@"inputColorMatrix"];

    v29 = [(UIImageView *)v4->_chevronImageView layer];
    v36[0] = v27;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
    [v29 setFilters:v30];

    [(UIView *)v4->_tongueContainerView addSubview:v4->_chevronImageView];
    v31 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v4 action:sel__handleTap_];
    tapGestureRecognizer = v4->_tapGestureRecognizer;
    v4->_tapGestureRecognizer = v31;

    [(UIView *)v4->_tongueContainerView addGestureRecognizer:v4->_tapGestureRecognizer];
    [(SBContinuousExposeStripTongueView *)v4 setIsAccessibilityElement:1];
    [(SBContinuousExposeStripTongueView *)v4 setAccessibilityIdentifier:@"continuous-expose-strip-tongue"];
  }

  return v4;
}

- (void)setAttributes:(SBSwitcherContinuousExposeStripTongueAttributes)a3 animated:(BOOL)a4
{
  v4 = a4;
  state = a3.state;
  p_attributes = &self->_attributes;
  v8 = self->_attributes.state;
  self->_attributes = a3;
  v9 = +[SBAppSwitcherDomain rootSettings];
  v10 = [v9 floatingSwitcherSettings];

  if (v8 != state)
  {
    if (v4)
    {
      if (p_attributes->state == 1)
      {
        [v10 tongueExpandedToCollapsedAnimationSettings];
      }

      else
      {
        [v10 tongueCollapsedToExpandedAnimationSettings];
      }
      v11 = ;
      v12 = 3;
    }

    else
    {
      v11 = 0;
      v12 = 2;
    }

    self->_animating = 1;
    objc_initWeak(&location, self);
    v13 = MEMORY[0x277D75D18];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__SBContinuousExposeStripTongueView_setAttributes_animated___block_invoke;
    v16[3] = &unk_2783A8C18;
    v16[4] = self;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__SBContinuousExposeStripTongueView_setAttributes_animated___block_invoke_2;
    v14[3] = &unk_2783B6850;
    objc_copyWeak(&v15, &location);
    [v13 sb_animateWithSettings:v11 mode:v12 animations:v16 completion:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

uint64_t __60__SBContinuousExposeStripTongueView_setAttributes_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateSubviewLayoutForCollapsedOrExpandedState];
  v2 = *(a1 + 32);

  return [v2 _updateSubviewOpacityForCollapsedOrExpandedState];
}

void __60__SBContinuousExposeStripTongueView_setAttributes_animated___block_invoke_2(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      *(WeakRetained + 464) = 0;
      v6 = WeakRetained;
      v5 = objc_loadWeakRetained(WeakRetained + 59);
      [v5 continuousExposeStripTongueView:v6 didFinishAnimatingToState:v6[60]];

      WeakRetained = v6;
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBContinuousExposeStripTongueView;
  [(SBContinuousExposeStripTongueView *)&v3 layoutSubviews];
  [(SBContinuousExposeStripTongueView *)self _updateContainerPosition];
  [(SBContinuousExposeStripTongueView *)self _updateContainerTransform];
  [(SBContinuousExposeStripTongueView *)self _updateSubviewLayoutForCollapsedOrExpandedState];
}

- (void)_updateContainerPosition
{
  direction = self->_attributes.direction;
  [(SBContinuousExposeStripTongueView *)self bounds];
  tongueContainerView = self->_tongueContainerView;
  v7 = 0.0;
  if (direction != 1)
  {
    v7 = v4;
  }

  [(UIView *)tongueContainerView setCenter:v7, v5 * 0.5];
}

- (void)_updateContainerTransform
{
  direction = self->_attributes.direction;
  memset(&v7, 0, sizeof(v7));
  if (direction == 2)
  {
    v4 = *(MEMORY[0x277CBF2C0] + 16);
    *&v7.a = *MEMORY[0x277CBF2C0];
    *&v7.c = v4;
    *&v7.tx = *(MEMORY[0x277CBF2C0] + 32);
  }

  else
  {
    CGAffineTransformMakeScale(&v7, -1.0, 1.0);
  }

  tongueContainerView = self->_tongueContainerView;
  v6 = v7;
  [(UIView *)tongueContainerView setTransform:&v6];
}

- (void)_updateSubviewLayoutForCollapsedOrExpandedState
{
  memset(&v10, 0, sizeof(v10));
  if (self->_attributes.state == 1)
  {
    CGAffineTransformMakeScale(&v10, 0.0, 1.0);
  }

  else
  {
    v3 = *(MEMORY[0x277CBF2C0] + 16);
    *&v10.a = *MEMORY[0x277CBF2C0];
    *&v10.c = v3;
    *&v10.tx = *(MEMORY[0x277CBF2C0] + 32);
  }

  backdropView = self->_backdropView;
  v9 = v10;
  [(_UIBackdropView *)backdropView setTransform:&v9];
  tongueMaskView = self->_tongueMaskView;
  v9 = v10;
  [(UIView *)tongueMaskView setTransform:&v9];
  chevronImageView = self->_chevronImageView;
  v9 = v10;
  [(UIImageView *)chevronImageView setTransform:&v9];
  if (self->_attributes.state == 1)
  {
    width = self->_bitmapMaskSize.width;
  }

  else
  {
    width = self->_bitmapMaskSize.width * 0.5;
  }

  v8 = floor(self->_bitmapMaskSize.height * 0.5);
  [(_UIBackdropView *)self->_backdropView setCenter:width, v8];
  [(UIView *)self->_tongueMaskView setCenter:width, v8];
  [(UIImageView *)self->_chevronImageView setCenter:width, v8];
}

- (void)_updateSubviewOpacityForCollapsedOrExpandedState
{
  v2 = 0.0;
  if (self->_attributes.state == 2)
  {
    v2 = 1.0;
  }

  [(UIImageView *)self->_chevronImageView setAlpha:v2];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  tongueContainerView = self->_tongueContainerView;
  v8 = a4;
  [(SBContinuousExposeStripTongueView *)v6 convertPoint:tongueContainerView toView:x, y];
  LOBYTE(v6) = [(UIView *)tongueContainerView pointInside:v8 withEvent:?];

  return v6;
}

- (void)_handleTap:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained continuousExposeStripTongueViewTapped:self];
}

- (SBContinuousExposeStripTongueViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBSwitcherContinuousExposeStripTongueAttributes)attributes
{
  p_attributes = &self->_attributes;
  state = self->_attributes.state;
  direction = p_attributes->direction;
  result.direction = direction;
  result.state = state;
  return result;
}

@end