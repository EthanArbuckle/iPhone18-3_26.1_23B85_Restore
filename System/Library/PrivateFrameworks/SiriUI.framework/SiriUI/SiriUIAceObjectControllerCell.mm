@interface SiriUIAceObjectControllerCell
+ (id)reuseIdentifier;
- (SiriUIAceObjectControllerCell)initWithFrame:(CGRect)a3;
- (id)_flyInAnimationForAceViewController:(id)a3;
- (void)_animateInsertionFadeIn;
- (void)_animateInsertionFlyIn;
- (void)_animateReplacementCrossFade;
- (void)_parentPreviousViewInCell;
- (void)_parentViewInCell;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)beginAnimation;
- (void)configureSubviewsForAnimationType;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAceViewController:(id)a3;
- (void)setReplacedView:(id)a3;
@end

@implementation SiriUIAceObjectControllerCell

- (SiriUIAceObjectControllerCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v22.receiver = self;
  v22.super_class = SiriUIAceObjectControllerCell;
  v7 = [(SiriUIClearBackgroundCell *)&v22 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{x, y, width, height}];
    animationView = v7->_animationView;
    v7->_animationView = v8;

    v10 = [(UIView *)v7->_animationView layer];
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
    [v10 setSublayerTransform:v17];

    v15 = [(UIView *)v7->_animationView layer];
    [v15 setAnchorPoint:{0.5, 0.6}];
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
  v3 = [(UIView *)self->_animationView subviews];
  [v3 makeObjectsPerformSelector:sel_removeFromSuperview];

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
  v11 = [(SiriUIAceObjectControllerCell *)self aceViewController];
  v12 = [v11 view];
  [v12 setFrame:{v4, v6, v8, v10}];
}

- (void)setAceViewController:(id)a3
{
  v5 = a3;
  aceViewController = self->_aceViewController;
  if (aceViewController != v5)
  {
    v12 = v5;
    v7 = [(SiriUIAceObjectViewController *)aceViewController view];
    v8 = [v7 layer];
    [v8 removeAllAnimations];

    v9 = [(SiriUIAceObjectViewController *)self->_aceViewController view];
    v10 = [(SiriUIAceObjectControllerCell *)self contentView];
    v11 = [v9 isDescendantOfView:v10];

    if (v11)
    {
      [v9 removeFromSuperview];
    }

    objc_storeStrong(&self->_aceViewController, a3);

    v5 = v12;
  }

  MEMORY[0x2821F96F8](aceViewController, v5);
}

- (void)setReplacedView:(id)a3
{
  v5 = a3;
  replacedView = self->_replacedView;
  if (replacedView != v5)
  {
    v10 = v5;
    v7 = [(UIView *)replacedView superview];
    v8 = [(SiriUIAceObjectControllerCell *)self contentView];

    if (v7 == v8)
    {
      [(UIView *)self->_replacedView removeFromSuperview];
      v9 = [(UIView *)self->_replacedView layer];
      [v9 removeAllAnimations];
    }

    objc_storeStrong(&self->_replacedView, a3);
    v5 = v10;
  }

  MEMORY[0x2821F96F8](replacedView, v5);
}

- (void)configureSubviewsForAnimationType
{
  v3 = [(UIView *)self->_animationView layer];
  [v3 removeAllAnimations];

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
  v4 = [(SiriUIAceObjectControllerCell *)self contentView];
  v3 = [(SiriUIAceObjectViewController *)self->_aceViewController view];
  [v4 addSubview:v3];
}

- (void)_parentPreviousViewInCell
{
  v3 = [(SiriUIAceObjectControllerCell *)self contentView];
  [v3 addSubview:self->_replacedView];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v5 = [(SiriUIAceObjectViewController *)self->_aceViewController view:a3];
  v6 = [v5 isDescendantOfView:self->_animationView];

  if (v6)
  {
    [(SiriUIAceObjectControllerCell *)self _parentViewInCell];
  }

  [(UIView *)self->_animationView removeFromSuperview];
  v7 = [(UIView *)self->_animationView subviews];
  [v7 makeObjectsPerformSelector:sel_removeFromSuperview];
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
  v3 = [(SiriUIAceObjectViewController *)self->_aceViewController view];
  [v3 setAlpha:0.0];

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
  v4 = [(SiriUIAceObjectViewController *)v3 view];
  [v4 setAlpha:0.0];

  [(SiriUIAceObjectControllerCell *)self _parentPreviousViewInCell];
  v5 = self->_replacedView;
  replacedView = self->_replacedView;
  self->_replacedView = 0;

  v7 = [(UIView *)v5 layer];
  [v7 removeAllAnimations];

  [(UIView *)v5 setAlpha:1.0];
  v8 = [(UIView *)v5 layer];
  LODWORD(v9) = 1.0;
  [v8 setOpacity:v9];

  v10 = [(UIView *)v5 layer];
  [v10 setZPosition:0.0];

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
  v3 = [(SiriUIAceObjectControllerCell *)self contentView];
  [v3 addSubview:self->_animationView];

  animationView = self->_animationView;
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 bounds];
  [(UIView *)animationView setFrame:v5, v6];

  v8 = [(SiriUIAceObjectControllerCell *)self aceViewController];
  v14 = [v8 view];

  [(UIView *)self->_animationView addSubview:v14];
  [v14 frame];
  [v14 setFrame:{v5, v6}];
  v9 = [(SiriUIAceObjectControllerCell *)self aceViewController];
  v10 = [(SiriUIAceObjectControllerCell *)self _flyInAnimationForAceViewController:v9];

  [v10 setDelegate:self];
  v11 = [v14 layer];
  [v11 addAnimation:v10 forKey:@"Insertion Animation"];

  v12 = [v14 layer];
  LODWORD(v13) = 1.0;
  [v12 setOpacity:v13];
}

- (id)_flyInAnimationForAceViewController:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CD9E00];
  v4 = a3;
  v5 = [v3 animation];
  [v5 setRemovedOnCompletion:1];
  [MEMORY[0x277D60100] defaultAnimationDuration];
  [v5 setDuration:?];
  [v5 setBeginTime:CACurrentMediaTime()];
  [v5 setFillMode:*MEMORY[0x277CDA228]];
  v6 = [MEMORY[0x277D60100] defaultTimingFunction];
  [v5 setTimingFunction:v6];

  v7 = [MEMORY[0x277CD9FA0] animation];
  [v7 setKeyPath:@"zPosition"];
  v8 = MEMORY[0x277CCABB0];
  [v4 _insertionAnimatedZPosition];
  v10 = v9;

  v11 = [v8 numberWithDouble:v10];
  [v7 setFromValue:v11];

  [v7 setToValue:&unk_287A0D558];
  [v7 setMass:4.0];
  [v7 setStiffness:600.0];
  [v7 setDamping:800.0];
  v12 = [MEMORY[0x277CD9FA0] animation];
  [v12 setKeyPath:@"opacity"];
  [v12 setFromValue:&unk_287A0D558];
  [v12 setToValue:&unk_287A0D568];
  [v12 setMass:4.0];
  [v12 setStiffness:600.0];
  [v12 setDamping:800.0];
  v15[0] = v7;
  v15[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  [v5 setAnimations:v13];

  return v5;
}

@end