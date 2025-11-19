@interface SBMainDisplayDarkener
+ (id)sharedInstance;
- (SBMainDisplayDarkener)initWithRootView:(id)a3;
- (void)_configureDarkeningView;
- (void)setDarkeningPercentage:(double)a3;
@end

@implementation SBMainDisplayDarkener

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_17 != -1)
  {
    +[SBMainDisplayDarkener sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_10;

  return v3;
}

void __39__SBMainDisplayDarkener_sharedInstance__block_invoke()
{
  v0 = [SBMainDisplayDarkener alloc];
  v4 = +[SBMainDisplayRootWindowScenePresentationBinder sharedInstance];
  v1 = [v4 rootWindow];
  v2 = [(SBMainDisplayDarkener *)v0 initWithRootView:v1];
  v3 = sharedInstance___sharedInstance_10;
  sharedInstance___sharedInstance_10 = v2;
}

- (SBMainDisplayDarkener)initWithRootView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBMainDisplayDarkener;
  v6 = [(SBMainDisplayDarkener *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootView, a3);
  }

  return v7;
}

- (void)setDarkeningPercentage:(double)a3
{
  if (self->_darkeningPercentage != a3)
  {
    self->_darkeningPercentage = a3;
    [(SBMainDisplayDarkener *)self _configureDarkeningView];
  }
}

- (void)_configureDarkeningView
{
  v3 = BSFloatGreaterThanFloat();
  darkeningView = self->_darkeningView;
  if (v3)
  {
    if (!darkeningView)
    {
      v5 = objc_alloc(MEMORY[0x277D75D18]);
      [(UIView *)self->_rootView bounds];
      v6 = [v5 initWithFrame:?];
      v7 = self->_darkeningView;
      self->_darkeningView = v6;

      v8 = self->_darkeningView;
      v9 = [MEMORY[0x277D75348] blackColor];
      [(UIView *)v8 setBackgroundColor:v9];

      [(UIView *)self->_darkeningView setAutoresizingMask:18];
      [(UIView *)self->_darkeningView setUserInteractionEnabled:0];
      v10 = [(UIView *)self->_darkeningView layer];
      [v10 setAllowsHitTesting:0];

      [(UIView *)self->_rootView addSubview:self->_darkeningView];
      darkeningView = self->_darkeningView;
    }

    darkeningPercentage = self->_darkeningPercentage;

    [(UIView *)darkeningView setAlpha:darkeningPercentage];
  }

  else
  {
    [(UIView *)darkeningView removeFromSuperview];
    v12 = self->_darkeningView;
    self->_darkeningView = 0;
  }
}

@end