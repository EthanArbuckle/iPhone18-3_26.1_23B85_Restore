@interface SBFolderControllerAnimationContext
+ (SBFolderControllerAnimationContext)contextWithScreen:(id)screen animationWindow:(id)window fallbackIconContainer:(id)container;
- (SBFolderControllerAnimationContext)initWithScreen:(id)screen animationWindow:(id)window fallbackIconContainer:(id)container;
- (UIWindow)animationWindow;
@end

@implementation SBFolderControllerAnimationContext

- (UIWindow)animationWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_animationWindow);

  return WeakRetained;
}

+ (SBFolderControllerAnimationContext)contextWithScreen:(id)screen animationWindow:(id)window fallbackIconContainer:(id)container
{
  containerCopy = container;
  windowCopy = window;
  screenCopy = screen;
  v11 = [[self alloc] initWithScreen:screenCopy animationWindow:windowCopy fallbackIconContainer:containerCopy];

  return v11;
}

- (SBFolderControllerAnimationContext)initWithScreen:(id)screen animationWindow:(id)window fallbackIconContainer:(id)container
{
  screenCopy = screen;
  windowCopy = window;
  containerCopy = container;
  v15.receiver = self;
  v15.super_class = SBFolderControllerAnimationContext;
  v12 = [(SBFolderControllerAnimationContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_screen, screen);
    objc_storeWeak(&v13->_animationWindow, windowCopy);
    objc_storeStrong(&v13->_fallbackIconContainer, container);
  }

  return v13;
}

@end