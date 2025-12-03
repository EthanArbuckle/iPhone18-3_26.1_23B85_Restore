@interface SBSlideOverTongueView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (SBSlideOverTongueView)initWithFrame:(CGRect)frame;
- (SBSlideOverTongueViewDelegate)delegate;
- (void)_handleTap:(id)tap;
- (void)_updateContainerTransform;
- (void)_updateSubviewCollapsedExpandedState;
- (void)layoutSubviews;
- (void)setDirection:(unint64_t)direction state:(unint64_t)state animated:(BOOL)animated;
@end

@implementation SBSlideOverTongueView

- (SBSlideOverTongueView)initWithFrame:(CGRect)frame
{
  v36[1] = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = SBSlideOverTongueView;
  v3 = [(SBSlideOverTongueView *)&v35 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_direction = 0;
    v3->_state = 0;
    v5 = objc_alloc(MEMORY[0x277D75D18]);
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], v7, v8, v9}];
    contentView = v4->_contentView;
    v4->_contentView = v10;

    [(SBSlideOverTongueView *)v4 addSubview:v4->_contentView];
    v4->_tongueSize = xmmword_21F8A82D0;
    v12 = [[SBSlideOverGlassMaterialView alloc] initWithFrame:v6, v7, v8, v9];
    glassView = v4->_glassView;
    v4->_glassView = v12;

    [(UIView *)v4->_contentView addSubview:v4->_glassView];
    v14 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6, v7, v8, v9}];
    sdfElementContainerView = v4->_sdfElementContainerView;
    v4->_sdfElementContainerView = v14;

    v16 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v16 setName:@"gaussianBlur"];
    [v16 setValue:@"low" forKey:@"inputIntermediateBitDepth"];
    [v16 setValue:@"low" forKey:@"inputQuality"];
    layer = [(UIView *)v4->_sdfElementContainerView layer];
    v36[0] = v16;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
    [layer setFilters:v18];

    [(UIView *)v4->_contentView addSubview:v4->_sdfElementContainerView];
    [(UIView *)v4->_contentView sendSubviewToBack:v4->_sdfElementContainerView];
    v19 = [[SBSDFElementView alloc] initWithFrame:v6, v7, v8, v9];
    sourceSDFElementView = v4->_sourceSDFElementView;
    v4->_sourceSDFElementView = v19;

    layer2 = [(SBSDFElementView *)v4->_sourceSDFElementView layer];
    [layer2 setGradientOvalization:1.0];

    [(UIView *)v4->_sdfElementContainerView addSubview:v4->_sourceSDFElementView];
    v22 = [[SBSDFElementView alloc] initWithFrame:v6, v7, v8, v9];
    destinationSDFElementView = v4->_destinationSDFElementView;
    v4->_destinationSDFElementView = v22;

    [(UIView *)v4->_sdfElementContainerView addSubview:v4->_destinationSDFElementView];
    [(SBSlideOverGlassMaterialView *)v4->_glassView addSDFElementView:v4->_sdfElementContainerView];
    v24 = MEMORY[0x277D755B8];
    v25 = [MEMORY[0x277D755D0] configurationWithPointSize:44.0];
    v26 = [v24 systemImageNamed:@"chevron.compact.left" withConfiguration:v25];

    v27 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v26];
    chevronImageView = v4->_chevronImageView;
    v4->_chevronImageView = v27;

    [(UIImageView *)v4->_chevronImageView setSemanticContentAttribute:3];
    v29 = v4->_chevronImageView;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UIImageView *)v29 setTintColor:blackColor];

    layer3 = [(UIImageView *)v4->_chevronImageView layer];
    [layer3 setCompositingFilter:*MEMORY[0x277CDA5D8]];

    [(UIImageView *)v4->_chevronImageView setAnchorPoint:1.0, 0.5];
    [(UIView *)v4->_contentView addSubview:v4->_chevronImageView];
    v32 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v4 action:sel__handleTap_];
    tapGestureRecognizer = v4->_tapGestureRecognizer;
    v4->_tapGestureRecognizer = v32;

    [(SBSlideOverTongueView *)v4 addGestureRecognizer:v4->_tapGestureRecognizer];
    [(SBSlideOverTongueView *)v4 setIsAccessibilityElement:1];
    [(SBSlideOverTongueView *)v4 setAccessibilityIdentifier:@"slide-over-tongue"];
  }

  return v4;
}

- (void)setDirection:(unint64_t)direction state:(unint64_t)state animated:(BOOL)animated
{
  direction = self->_direction;
  if (direction)
  {
    directionCopy = direction;
  }

  else
  {
    directionCopy = self->_direction;
  }

  state = self->_state;
  if (direction != directionCopy || state != state)
  {
    animatedCopy = animated;
    self->_direction = directionCopy;
    self->_state = state;
    v12 = +[SBAppSwitcherDomain rootSettings];
    floatingSwitcherSettings = [v12 floatingSwitcherSettings];

    if (direction != directionCopy)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __53__SBSlideOverTongueView_setDirection_state_animated___block_invoke;
      v18[3] = &unk_2783A8C18;
      v18[4] = self;
      [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v18];
    }

    if (state != state)
    {
      if (animatedCopy)
      {
        if (self->_state)
        {
          [floatingSwitcherSettings tongueCollapsedToExpandedAnimationSettings];
        }

        else
        {
          [floatingSwitcherSettings tongueExpandedToCollapsedAnimationSettings];
        }
        v14 = ;
        v15 = 3;
      }

      else
      {
        v14 = 0;
        v15 = 2;
      }

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __53__SBSlideOverTongueView_setDirection_state_animated___block_invoke_2;
      v17[3] = &unk_2783A8C18;
      v17[4] = self;
      [MEMORY[0x277D75D18] sb_animateWithSettings:v14 mode:v15 animations:v17 completion:0];
    }

    [(SBSlideOverTongueView *)self setAccessibilityValue:0];
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      if (directionCopy != 2)
      {
        if (directionCopy != 1)
        {
          goto LABEL_27;
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (directionCopy == 2)
      {
LABEL_25:
        v16 = @"Right side view";
        goto LABEL_26;
      }

      if (directionCopy != 1)
      {
LABEL_27:

        return;
      }
    }

    v16 = @"Left side view";
LABEL_26:
    [(SBSlideOverTongueView *)self setAccessibilityValue:v16];
    goto LABEL_27;
  }
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = SBSlideOverTongueView;
  [(SBSlideOverTongueView *)&v26 layoutSubviews];
  [(SBSlideOverTongueView *)self bounds];
  v4 = v3;
  v24 = v5;
  v25 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  SBRectWithSize();
  v12 = v11;
  v14 = v13;
  v22 = v15;
  v17 = v16;
  [(UIView *)self->_contentView setBounds:v4, v6, v8, v10];
  contentView = self->_contentView;
  v23 = v8;
  UIRectGetCenter();
  [(UIView *)contentView setCenter:?];
  [(SBSlideOverGlassMaterialView *)self->_glassView setBounds:v12, v14, v22, v17];
  v19 = v8 * 0.5;
  [(SBSlideOverGlassMaterialView *)self->_glassView setCenter:v19 - self->_tongueSize.width * 0.5, v10 * 0.5];
  [(UIView *)self->_sdfElementContainerView setBounds:v12, v14, v22, v17];
  [(UIView *)self->_sdfElementContainerView setCenter:v19 - self->_tongueSize.width * 0.5, v10 * 0.5];
  sourceSDFElementView = self->_sourceSDFElementView;
  SBRectWithSize();
  [(SBSDFElementView *)sourceSDFElementView setBounds:?];
  [(SBSDFElementView *)self->_sourceSDFElementView setCenter:self->_tongueSize.width * 0.5, v10 * 0.5];
  [(SBSDFElementView *)self->_sourceSDFElementView _setContinuousCornerRadius:self->_tongueSize.width * 0.5];
  [(SBSDFElementView *)self->_destinationSDFElementView setBounds:v25, v24, v23, v10];
  [(SBSDFElementView *)self->_destinationSDFElementView setCenter:v19 + self->_tongueSize.width, v10 * 0.5];
  chevronImageView = self->_chevronImageView;
  [(UIImageView *)chevronImageView bounds];
  SBRectWithSize();
  [(UIImageView *)chevronImageView setBounds:?];
  [(UIImageView *)self->_chevronImageView setCenter:0.0, v10 * 0.5];
  [(SBSlideOverTongueView *)self _updateContainerTransform];
  [(SBSlideOverTongueView *)self _updateSubviewCollapsedExpandedState];
}

- (void)_updateContainerTransform
{
  v3 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
  direction = self->_direction;
  memset(&v8, 0, sizeof(v8));
  if (v3 == (direction == 1))
  {
    CGAffineTransformMakeScale(&v8, -1.0, 1.0);
  }

  else
  {
    v5 = *(MEMORY[0x277CBF2C0] + 16);
    *&v8.a = *MEMORY[0x277CBF2C0];
    *&v8.c = v5;
    *&v8.tx = *(MEMORY[0x277CBF2C0] + 32);
  }

  contentView = self->_contentView;
  v7 = v8;
  [(UIView *)contentView setTransform:&v7];
}

- (void)_updateSubviewCollapsedExpandedState
{
  state = self->_state;
  memset(&v16, 0, sizeof(v16));
  if (state == 1)
  {
    v4 = *(MEMORY[0x277CBF2C0] + 16);
    *&v16.a = *MEMORY[0x277CBF2C0];
    *&v16.c = v4;
    *&v16.tx = *(MEMORY[0x277CBF2C0] + 32);
    *&v15.a = *&v16.a;
    *&v15.c = v4;
    *&v15.tx = *&v16.tx;
    memset(&v14, 0, sizeof(v14));
    CGAffineTransformMakeTranslation(&v14, 1.0, 0.0);
    v5 = 10.0;
    v6 = 0.4;
  }

  else
  {
    v5 = 0.0;
    CGAffineTransformMakeScale(&v16, 0.0, 1.0);
    memset(&v15, 0, sizeof(v15));
    CGAffineTransformMakeTranslation(&v15, self->_tongueSize.width + 4.0, 0.0);
    v7 = *(MEMORY[0x277CBF2C0] + 16);
    *&v14.a = *MEMORY[0x277CBF2C0];
    *&v14.c = v7;
    *&v14.tx = *(MEMORY[0x277CBF2C0] + 32);
    v6 = 0.0;
  }

  chevronImageView = self->_chevronImageView;
  v13 = v16;
  [(UIImageView *)chevronImageView setTransform:&v13];
  [(UIImageView *)self->_chevronImageView setAlpha:v6];
  sourceSDFElementView = self->_sourceSDFElementView;
  v13 = v15;
  [(SBSDFElementView *)sourceSDFElementView setTransform:&v13];
  destinationSDFElementView = self->_destinationSDFElementView;
  v13 = v14;
  [(SBSDFElementView *)destinationSDFElementView setTransform:&v13];
  layer = [(UIView *)self->_sdfElementContainerView layer];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  [layer setValue:v12 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v11.receiver = self;
  v11.super_class = SBSlideOverTongueView;
  if ([(SBSlideOverTongueView *)&v11 pointInside:eventCopy withEvent:x, y])
  {
    v8 = 1;
  }

  else
  {
    sourceSDFElementView = self->_sourceSDFElementView;
    [(SBSlideOverTongueView *)self convertPoint:self->_contentView toView:x, y];
    [(SBSDFElementView *)sourceSDFElementView convertPoint:self->_contentView fromView:?];
    v8 = [(SBSDFElementView *)self->_sourceSDFElementView pointInside:eventCopy withEvent:?];
  }

  return v8;
}

- (void)_handleTap:(id)tap
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained slideOverTongueViewTapped:self];
}

- (SBSlideOverTongueViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end