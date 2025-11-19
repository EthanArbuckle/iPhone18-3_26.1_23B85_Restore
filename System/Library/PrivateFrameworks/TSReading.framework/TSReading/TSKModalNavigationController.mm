@interface TSKModalNavigationController
- (TSKModalNavigationController)initWithRootViewController:(id)a3;
- (int64_t)positionForBar:(id)a3;
- (void)dealloc;
- (void)layoutViews;
- (void)p_statusBarWillChange:(id)a3;
- (void)setShowTopSeparator:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation TSKModalNavigationController

- (TSKModalNavigationController)initWithRootViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSKModalNavigationController;
  v3 = [(TSKModalNavigationController *)&v6 initWithRootViewController:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v3 selector:sel_p_statusBarWillChange_ name:*MEMORY[0x277D76748] object:0];
    v3->mIsFullscreenViewController = 1;
  }

  return v3;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [(UIView *)self->mTopSeparator removeFromSuperview];

  v3.receiver = self;
  v3.super_class = TSKModalNavigationController;
  [(TSKModalNavigationController *)&v3 dealloc];
}

- (void)setShowTopSeparator:(BOOL)a3
{
  if (self->mShowTopSeparator != a3)
  {
    self->mShowTopSeparator = a3;
    if ([(TSKModalNavigationController *)self isViewLoaded])
    {

      [(TSKModalNavigationController *)self layoutViews];
    }
  }
}

- (void)p_statusBarWillChange:(id)a3
{
  if (TSUPhoneUI())
  {
    if (self->mIsFullscreenViewController)
    {
      v4 = MEMORY[0x277CCAE60];
      [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
      v5 = [v4 valueWithCGRect:?];
      if (v5)
      {
        [v5 CGRectValue];
        if (v6 >= v7)
        {
          v8 = v7;
        }

        else
        {
          v8 = v6;
        }

        v9 = [(TSKModalNavigationController *)self navigationBar];
        [v9 frame];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __54__TSKModalNavigationController_p_statusBarWillChange___block_invoke;
        v13[3] = &unk_279D47A10;
        v13[6] = v10;
        *&v13[7] = v8;
        v13[8] = v11;
        v13[9] = v12;
        v13[4] = v9;
        v13[5] = self;
        [MEMORY[0x277D75D18] animateWithDuration:4 delay:v13 options:0 animations:0.35 completion:0.0];
      }
    }
  }
}

uint64_t __54__TSKModalNavigationController_p_statusBarWillChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [objc_msgSend(*(a1 + 40) "view")];
  v2 = [*(a1 + 40) view];

  return [v2 layoutIfNeeded];
}

- (void)layoutViews
{
  v3 = [(TSKModalNavigationController *)self showTopSeparator];
  mTopSeparator = self->mTopSeparator;
  if (v3)
  {
    if (!mTopSeparator)
    {
      v5 = [(TSKModalNavigationController *)self navigationBar];
      [v5 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      self->mTopSeparator = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6, v8, v10, 1.0}];
      TSUScreenScale();
      v13 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v7, v9, v11, 1.0 / v12}];
      [v13 setBackgroundColor:{objc_msgSend(MEMORY[0x277D75348], "colorWithWhite:alpha:", 0.78, 1.0)}];
      [v13 setUserInteractionEnabled:0];
      [v13 setAutoresizingMask:2];
      [(UIView *)self->mTopSeparator addSubview:v13];

      [(UIView *)self->mTopSeparator setUserInteractionEnabled:0];
      [(UIView *)self->mTopSeparator setAutoresizingMask:34];
      v14 = self->mTopSeparator;

      [v5 addSubview:v14];
    }
  }

  else if (mTopSeparator)
  {
    [(UIView *)mTopSeparator removeFromSuperview];

    self->mTopSeparator = 0;
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = TSKModalNavigationController;
  [(TSKModalNavigationController *)&v3 viewDidLoad];
  [(TSKModalNavigationController *)self layoutViews];
}

- (int64_t)positionForBar:(id)a3
{
  if (self->mIsFullscreenViewController)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

@end