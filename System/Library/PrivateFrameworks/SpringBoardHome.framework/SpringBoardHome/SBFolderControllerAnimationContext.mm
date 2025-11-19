@interface SBFolderControllerAnimationContext
+ (SBFolderControllerAnimationContext)contextWithScreen:(id)a3 animationWindow:(id)a4 fallbackIconContainer:(id)a5;
- (SBFolderControllerAnimationContext)initWithScreen:(id)a3 animationWindow:(id)a4 fallbackIconContainer:(id)a5;
- (UIWindow)animationWindow;
@end

@implementation SBFolderControllerAnimationContext

- (UIWindow)animationWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_animationWindow);

  return WeakRetained;
}

+ (SBFolderControllerAnimationContext)contextWithScreen:(id)a3 animationWindow:(id)a4 fallbackIconContainer:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithScreen:v10 animationWindow:v9 fallbackIconContainer:v8];

  return v11;
}

- (SBFolderControllerAnimationContext)initWithScreen:(id)a3 animationWindow:(id)a4 fallbackIconContainer:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SBFolderControllerAnimationContext;
  v12 = [(SBFolderControllerAnimationContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_screen, a3);
    objc_storeWeak(&v13->_animationWindow, v10);
    objc_storeStrong(&v13->_fallbackIconContainer, a5);
  }

  return v13;
}

@end