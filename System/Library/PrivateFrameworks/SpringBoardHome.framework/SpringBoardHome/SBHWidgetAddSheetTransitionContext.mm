@interface SBHWidgetAddSheetTransitionContext
- (SBHWidgetAddSheetTransitionContext)initWithSourceCell:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
@end

@implementation SBHWidgetAddSheetTransitionContext

- (SBHWidgetAddSheetTransitionContext)initWithSourceCell:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBHWidgetAddSheetTransitionContext;
  v6 = [(SBHWidgetAddSheetTransitionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceCell, a3);
  }

  return v7;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  animationController = self->_animationController;
  if (!animationController)
  {
    v7 = [[SBHWidgetAddSheetAnimationController alloc] initWithSourceCell:self->_sourceCell];
    v8 = self->_animationController;
    self->_animationController = v7;

    animationController = self->_animationController;
  }

  return animationController;
}

@end