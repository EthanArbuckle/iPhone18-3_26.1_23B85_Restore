@interface SBHWidgetAddSheetTransitionContext
- (SBHWidgetAddSheetTransitionContext)initWithSourceCell:(id)cell;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
@end

@implementation SBHWidgetAddSheetTransitionContext

- (SBHWidgetAddSheetTransitionContext)initWithSourceCell:(id)cell
{
  cellCopy = cell;
  v9.receiver = self;
  v9.super_class = SBHWidgetAddSheetTransitionContext;
  v6 = [(SBHWidgetAddSheetTransitionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceCell, cell);
  }

  return v7;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
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