@interface UIInputViewAnimationControllerViewController
+ (id)controllerWithContext:(id)context;
- (UIInputViewAnimationControllerViewController)initWithContext:(id)context;
- (id)prepareAnimationWithHost:(id)host startPlacement:(id)placement endPlacement:(id)endPlacement;
- (void)performAnimationWithHost:(id)host context:(id)context;
@end

@implementation UIInputViewAnimationControllerViewController

- (UIInputViewAnimationControllerViewController)initWithContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = UIInputViewAnimationControllerViewController;
  v6 = [(UIInputViewAnimationControllerViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    _animator = [contextCopy _animator];
    animator = v7->_animator;
    v7->_animator = _animator;
  }

  return v7;
}

+ (id)controllerWithContext:(id)context
{
  contextCopy = context;
  v5 = [[self alloc] initWithContext:contextCopy];

  return v5;
}

- (id)prepareAnimationWithHost:(id)host startPlacement:(id)placement endPlacement:(id)endPlacement
{
  endPlacementCopy = endPlacement;
  v9 = [UIInputViewAnimationControllerViewControllerContext contextWithHost:host startPlacement:placement endPlacement:endPlacementCopy transitionContext:self->_context];
  endPlacement = self->_endPlacement;
  self->_endPlacement = endPlacementCopy;
  v11 = endPlacementCopy;

  [(UIViewControllerAnimatedTransitioning_Keyboard *)self->_animator prepareToAnimateKeyboard:v9];

  return v9;
}

- (void)performAnimationWithHost:(id)host context:(id)context
{
  animator = self->_animator;
  hostCopy = host;
  [(UIViewControllerAnimatedTransitioning_Keyboard *)animator animateKeyboard:context];
  [hostCopy updateToPlacement:self->_endPlacement withNormalAnimationsAndNotifications:1];
}

@end