@interface _TVRotatingViewController
- (void)setView:(id)view;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation _TVRotatingViewController

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = _TVRotatingViewController;
  coordinatorCopy = coordinator;
  [(_TVRotatingViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80___TVRotatingViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_279D6EA18;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)setView:(id)view
{
  viewCopy = view;
  [viewCopy setAutoresizingMask:18];
  v5.receiver = self;
  v5.super_class = _TVRotatingViewController;
  [(_TVRotatingViewController *)&v5 setView:viewCopy];
}

@end