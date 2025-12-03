@interface SBHomeScreenBackdropDarkTintView
- (SBHomeScreenBackdropDarkTintView)initWithFrame:(CGRect)frame;
- (void)_updateDarkTintViewHidden;
- (void)beginRequiringBackdropViewForReason:(id)reason;
- (void)beginRequiringLiveBackdropViewForReason:(id)reason;
- (void)endRequiringBackdropViewForReason:(id)reason;
- (void)endRequiringLiveBackdropViewForReason:(id)reason;
- (void)setBlurProgress:(double)progress behaviorMode:(int64_t)mode completion:(id)completion;
@end

@implementation SBHomeScreenBackdropDarkTintView

- (SBHomeScreenBackdropDarkTintView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = SBHomeScreenBackdropDarkTintView;
  v3 = [(SBHomeScreenBackdropViewBase *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    [(SBHomeScreenBackdropDarkTintView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    darkTintView = v3->_darkTintView;
    v3->_darkTintView = v5;

    [(UIView *)v3->_darkTintView setAutoresizingMask:18];
    [(UIView *)v3->_darkTintView setHidden:1];
    v7 = v3->_darkTintView;
    v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
    [(UIView *)v7 setBackgroundColor:v8];

    [(SBHomeScreenBackdropDarkTintView *)v3 addSubview:v3->_darkTintView];
  }

  return v3;
}

- (void)beginRequiringBackdropViewForReason:(id)reason
{
  v4.receiver = self;
  v4.super_class = SBHomeScreenBackdropDarkTintView;
  [(SBHomeScreenBackdropViewBase *)&v4 beginRequiringBackdropViewForReason:reason];
  [(SBHomeScreenBackdropDarkTintView *)self _updateDarkTintViewHidden];
}

- (void)beginRequiringLiveBackdropViewForReason:(id)reason
{
  v4.receiver = self;
  v4.super_class = SBHomeScreenBackdropDarkTintView;
  [(SBHomeScreenBackdropViewBase *)&v4 beginRequiringLiveBackdropViewForReason:reason];
  [(SBHomeScreenBackdropDarkTintView *)self _updateDarkTintViewHidden];
}

- (void)endRequiringBackdropViewForReason:(id)reason
{
  v4.receiver = self;
  v4.super_class = SBHomeScreenBackdropDarkTintView;
  [(SBHomeScreenBackdropViewBase *)&v4 endRequiringBackdropViewForReason:reason];
  [(SBHomeScreenBackdropDarkTintView *)self _updateDarkTintViewHidden];
}

- (void)endRequiringLiveBackdropViewForReason:(id)reason
{
  v4.receiver = self;
  v4.super_class = SBHomeScreenBackdropDarkTintView;
  [(SBHomeScreenBackdropViewBase *)&v4 endRequiringLiveBackdropViewForReason:reason];
  [(SBHomeScreenBackdropDarkTintView *)self _updateDarkTintViewHidden];
}

- (void)setBlurProgress:(double)progress behaviorMode:(int64_t)mode completion:(id)completion
{
  v8 = MEMORY[0x277D75D18];
  completionCopy = completion;
  backdropBlurSettings = [(SBHomeScreenBackdropViewBase *)self backdropBlurSettings];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__SBHomeScreenBackdropDarkTintView_setBlurProgress_behaviorMode_completion___block_invoke;
  v11[3] = &unk_2783A8BC8;
  v11[4] = self;
  *&v11[5] = progress;
  [v8 sb_animateWithSettings:backdropBlurSettings mode:mode animations:v11 completion:completionCopy];
}

uint64_t __76__SBHomeScreenBackdropDarkTintView_setBlurProgress_behaviorMode_completion___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 440);
  v2 = (BSFloatIsZero() ^ 1);

  return [v1 setAlpha:v2];
}

- (void)_updateDarkTintViewHidden
{
  if ([(SBHomeScreenBackdropViewBase *)self requiresBackdropView])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(SBHomeScreenBackdropViewBase *)self requiresLiveBackdropView]^ 1;
  }

  darkTintView = self->_darkTintView;

  [(UIView *)darkTintView setHidden:v3];
}

@end