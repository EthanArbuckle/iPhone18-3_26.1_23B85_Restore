@interface SiriUIAceObjectControllerCell
+ (id)reuseIdentifier;
- (SiriUIAceObjectControllerCell)initWithFrame:(CGRect)frame;
- (id)_flyInAnimationForAceViewController:(id)controller;
- (void)_animateInsertionFadeIn;
- (void)_animateInsertionFlyIn;
- (void)_animateReplacementCrossFade;
- (void)_parentPreviousViewInCell;
- (void)_parentViewInCell;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)beginAnimation;
- (void)configureSubviewsForAnimationType;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAceViewController:(id)controller;
- (void)setReplacedView:(id)view;
@end

@implementation SiriUIAceObjectControllerCell

- (SiriUIAceObjectControllerCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v22.receiver = self;
  v22.super_class = SiriUIAceObjectControllerCell;
  v7 = [(SiriUIClearBackgroundCell *)&v22 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{x, y, width, height}];
    animationView = v7->_animationView;
    v7->_animationView = v8;

    layer = [(UIView *)v7->_animationView layer];
    v11 = *(MEMORY[0x277CD9DE8] + 48);
    v17[2] = *(MEMORY[0x277CD9DE8] + 32);
    v17[3] = v11;
    v17[4] = *(MEMORY[0x277CD9DE8] + 64);
    v12 = *(MEMORY[0x277CD9DE8] + 80);
    v13 = *(MEMORY[0x277CD9DE8] + 16);
    v17[0] = *MEMORY[0x277CD9DE8];
    v17[1] = v13;
    v18 = v12;
    v19 = 0xBF670B6208DEA0E0;
    v14 = *(MEMORY[0x277CD9DE8] + 112);
    v20 = *(MEMORY[0x277CD9DE8] + 96);
    v21 = v14;
    [layer setSublayerTransform:v17];

    layer2 = [(UIView *)v7->_animationView layer];
    [layer2 setAnchorPoint:{0.5, 0.6}];
  }

  return v7;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = SiriUIAceObjectControllerCell;
  [(SiriUIAceObjectControllerCell *)&v4 prepareForReuse];
  self->_topPadding = 0.0;
  [(UIView *)self->_animationView removeFromSuperview];
  subviews = [(UIView *)self->_animationView subviews];
  [subviews makeObjectsPerformSelector:sel_removeFromSuperview];

  [(SiriUIAceObjectControllerCell *)self setReplacedView:0];
  [(SiriUIAceObjectControllerCell *)self setAceViewController:0];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = SiriUIAceObjectControllerCell;
  [(SiriUIAceObjectControllerCell *)&v13 layoutSubviews];
  [(SiriUIAceObjectControllerCell *)self bounds];
  UIRectInset();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_animationView setFrame:?];
  aceViewController = [(SiriUIAceObjectControllerCell *)self aceViewController];
  view = [aceViewController view];
  [view setFrame:{v4, v6, v8, v10}];
}

- (void)setAceViewController:(id)controller
{
  controllerCopy = controller;
  aceViewController = self->_aceViewController;
  if (aceViewController != controllerCopy)
  {
    v12 = controllerCopy;
    view = [(SiriUIAceObjectViewController *)aceViewController view];
    layer = [view layer];
    [layer removeAllAnimations];

    view2 = [(SiriUIAceObjectViewController *)self->_aceViewController view];
    contentView = [(SiriUIAceObjectControllerCell *)self contentView];
    v11 = [view2 isDescendantOfView:contentView];

    if (v11)
    {
      [view2 removeFromSuperview];
    }

    objc_storeStrong(&self->_aceViewController, controller);

    controllerCopy = v12;
  }

  MEMORY[0x2821F96F8](aceViewController, controllerCopy);
}

- (void)setReplacedView:(id)view
{
  viewCopy = view;
  replacedView = self->_replacedView;
  if (replacedView != viewCopy)
  {
    v10 = viewCopy;
    superview = [(UIView *)replacedView superview];
    contentView = [(SiriUIAceObjectControllerCell *)self contentView];

    if (superview == contentView)
    {
      [(UIView *)self->_replacedView removeFromSuperview];
      layer = [(UIView *)self->_replacedView layer];
      [layer removeAllAnimations];
    }

    objc_storeStrong(&self->_replacedView, view);
    viewCopy = v10;
  }

  MEMORY[0x2821F96F8](replacedView, viewCopy);
}

- (void)configureSubviewsForAnimationType
{
  layer = [(UIView *)self->_animationView layer];
  [layer removeAllAnimations];

  [(UIView *)self->_animationView removeFromSuperview];
  if (*&self->_insertionAnimationType == 0)
  {
    [(SiriUIAceObjectControllerCell *)self _parentViewInCell];
  }

  else if (self->_replacedView)
  {
    [(SiriUIAceObjectControllerCell *)self _parentPreviousViewInCell];
  }

  [(SiriUIAceObjectControllerCell *)self setNeedsLayout];
}

- (void)_parentViewInCell
{
  contentView = [(SiriUIAceObjectControllerCell *)self contentView];
  view = [(SiriUIAceObjectViewController *)self->_aceViewController view];
  [contentView addSubview:view];
}

- (void)_parentPreviousViewInCell
{
  contentView = [(SiriUIAceObjectControllerCell *)self contentView];
  [contentView addSubview:self->_replacedView];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  v5 = [(SiriUIAceObjectViewController *)self->_aceViewController view:stop];
  v6 = [v5 isDescendantOfView:self->_animationView];

  if (v6)
  {
    [(SiriUIAceObjectControllerCell *)self _parentViewInCell];
  }

  [(UIView *)self->_animationView removeFromSuperview];
  subviews = [(UIView *)self->_animationView subviews];
  [subviews makeObjectsPerformSelector:sel_removeFromSuperview];
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 stringByAppendingString:@"ReuseIdentifier"];

  return v4;
}

- (void)beginAnimation
{
  insertionAnimationType = self->_insertionAnimationType;
  if (insertionAnimationType == 3)
  {
    [(SiriUIAceObjectControllerCell *)self _animateInsertionFadeIn];
  }

  else if (insertionAnimationType == 1)
  {
    [(SiriUIAceObjectControllerCell *)self _animateInsertionFlyIn];
  }

  else if (self->_replacementAnimationType == 2)
  {
    [(SiriUIAceObjectControllerCell *)self _animateReplacementCrossFade];
  }
}

- (void)_animateInsertionFadeIn
{
  [(SiriUIAceObjectControllerCell *)self _parentViewInCell];
  view = [(SiriUIAceObjectViewController *)self->_aceViewController view];
  [view setAlpha:0.0];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__SiriUIAceObjectControllerCell__animateInsertionFadeIn__block_invoke;
  v4[3] = &unk_279C59D78;
  v4[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v4 animations:0.5];
}

void __56__SiriUIAceObjectControllerCell__animateInsertionFadeIn__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 664) view];
  [v1 setAlpha:1.0];
}

- (void)_animateReplacementCrossFade
{
  [(SiriUIAceObjectControllerCell *)self _parentViewInCell];
  v3 = self->_aceViewController;
  view = [(SiriUIAceObjectViewController *)v3 view];
  [view setAlpha:0.0];

  [(SiriUIAceObjectControllerCell *)self _parentPreviousViewInCell];
  v5 = self->_replacedView;
  replacedView = self->_replacedView;
  self->_replacedView = 0;

  layer = [(UIView *)v5 layer];
  [layer removeAllAnimations];

  [(UIView *)v5 setAlpha:1.0];
  layer2 = [(UIView *)v5 layer];
  LODWORD(v9) = 1.0;
  [layer2 setOpacity:v9];

  layer3 = [(UIView *)v5 layer];
  [layer3 setZPosition:0.0];

  v11 = MEMORY[0x277D75D18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__SiriUIAceObjectControllerCell__animateReplacementCrossFade__block_invoke;
  v16[3] = &unk_279C5A018;
  v17 = v5;
  v18 = v3;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__SiriUIAceObjectControllerCell__animateReplacementCrossFade__block_invoke_4;
  v14[3] = &unk_279C59DF0;
  v15 = v17;
  v12 = v17;
  v13 = v3;
  [v11 animateKeyframesWithDuration:0 delay:v16 options:v14 animations:0.3 completion:0.0];
}

void __61__SiriUIAceObjectControllerCell__animateReplacementCrossFade__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SiriUIAceObjectControllerCell__animateReplacementCrossFade__block_invoke_2;
  v6[3] = &unk_279C59D78;
  v7 = *(a1 + 32);
  [v2 addKeyframeWithRelativeStartTime:v6 relativeDuration:0.0 animations:0.5];
  v3 = MEMORY[0x277D75D18];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__SiriUIAceObjectControllerCell__animateReplacementCrossFade__block_invoke_3;
  v4[3] = &unk_279C59D78;
  v5 = *(a1 + 40);
  [v3 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.25 animations:0.75];
}

void __61__SiriUIAceObjectControllerCell__animateReplacementCrossFade__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

- (void)_animateInsertionFlyIn
{
  contentView = [(SiriUIAceObjectControllerCell *)self contentView];
  [contentView addSubview:self->_animationView];

  animationView = self->_animationView;
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  [(UIView *)animationView setFrame:v5, v6];

  aceViewController = [(SiriUIAceObjectControllerCell *)self aceViewController];
  view = [aceViewController view];

  [(UIView *)self->_animationView addSubview:view];
  [view frame];
  [view setFrame:{v5, v6}];
  aceViewController2 = [(SiriUIAceObjectControllerCell *)self aceViewController];
  v10 = [(SiriUIAceObjectControllerCell *)self _flyInAnimationForAceViewController:aceViewController2];

  [v10 setDelegate:self];
  layer = [view layer];
  [layer addAnimation:v10 forKey:@"Insertion Animation"];

  layer2 = [view layer];
  LODWORD(v13) = 1.0;
  [layer2 setOpacity:v13];
}

- (id)_flyInAnimationForAceViewController:(id)controller
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CD9E00];
  controllerCopy = controller;
  animation = [v3 animation];
  [animation setRemovedOnCompletion:1];
  [MEMORY[0x277D60100] defaultAnimationDuration];
  [animation setDuration:?];
  [animation setBeginTime:CACurrentMediaTime()];
  [animation setFillMode:*MEMORY[0x277CDA228]];
  defaultTimingFunction = [MEMORY[0x277D60100] defaultTimingFunction];
  [animation setTimingFunction:defaultTimingFunction];

  animation2 = [MEMORY[0x277CD9FA0] animation];
  [animation2 setKeyPath:@"zPosition"];
  v8 = MEMORY[0x277CCABB0];
  [controllerCopy _insertionAnimatedZPosition];
  v10 = v9;

  v11 = [v8 numberWithDouble:v10];
  [animation2 setFromValue:v11];

  [animation2 setToValue:&unk_287A0D558];
  [animation2 setMass:4.0];
  [animation2 setStiffness:600.0];
  [animation2 setDamping:800.0];
  animation3 = [MEMORY[0x277CD9FA0] animation];
  [animation3 setKeyPath:@"opacity"];
  [animation3 setFromValue:&unk_287A0D558];
  [animation3 setToValue:&unk_287A0D568];
  [animation3 setMass:4.0];
  [animation3 setStiffness:600.0];
  [animation3 setDamping:800.0];
  v15[0] = animation2;
  v15[1] = animation3;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  [animation setAnimations:v13];

  return animation;
}

@end