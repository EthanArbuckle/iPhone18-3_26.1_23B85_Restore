@interface _TVRotatingViewController
- (void)setView:(id)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation _TVRotatingViewController

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = _TVRotatingViewController;
  v7 = a4;
  [(_TVRotatingViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80___TVRotatingViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_279D6EA18;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)setView:(id)a3
{
  v4 = a3;
  [v4 setAutoresizingMask:18];
  v5.receiver = self;
  v5.super_class = _TVRotatingViewController;
  [(_TVRotatingViewController *)&v5 setView:v4];
}

@end