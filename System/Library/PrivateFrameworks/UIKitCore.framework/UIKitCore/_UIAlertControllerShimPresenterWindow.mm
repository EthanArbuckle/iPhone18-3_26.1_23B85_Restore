@interface _UIAlertControllerShimPresenterWindow
- (UIAlertController)alertController;
- (_UIAlertControllerShimPresenterWindow)init;
- (_UIAlertControllerShimPresenterWindow)initWithWindowScene:(id)scene;
- (id)_presentationViewController;
- (void)presentAlertController:(id)controller animated:(BOOL)animated completionBlock:(id)block;
@end

@implementation _UIAlertControllerShimPresenterWindow

- (_UIAlertControllerShimPresenterWindow)init
{
  v7.receiver = self;
  v7.super_class = _UIAlertControllerShimPresenterWindow;
  v2 = [(UIApplicationRotationFollowingWindow *)&v7 init];
  if (v2)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      mainScreen = [objc_opt_self() mainScreen];
      [mainScreen bounds];
      [(UIWindow *)v2 setFrame:?];
    }

    [(UIView *)v2 setOpaque:0];
    v4 = +[UIColor clearColor];
    [(UIView *)v2 setBackgroundColor:v4];

    mainScreen2 = [objc_opt_self() mainScreen];
    [(UIWindow *)v2 setScreen:mainScreen2];

    [(UIWindow *)v2 setWindowLevel:2000.0];
    [(UIWindow *)v2 setHidden:1];
  }

  return v2;
}

- (_UIAlertControllerShimPresenterWindow)initWithWindowScene:(id)scene
{
  v7.receiver = self;
  v7.super_class = _UIAlertControllerShimPresenterWindow;
  v3 = [(UIApplicationRotationFollowingWindow *)&v7 initWithWindowScene:scene];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setOpaque:0];
    v5 = +[UIColor clearColor];
    [(UIView *)v4 setBackgroundColor:v5];

    [(UIWindow *)v4 setWindowLevel:2000.0];
    [(UIWindow *)v4 setHidden:1];
  }

  return v4;
}

- (id)_presentationViewController
{
  rootViewController = [(UIWindow *)self rootViewController];

  if (!rootViewController)
  {
    v4 = objc_alloc_init(UIApplicationRotationFollowingController);
    [(UIApplicationRotationFollowingController *)v4 setSizesWindowToScene:1];
    [(UIWindow *)self setRootViewController:v4];
  }

  return [(UIWindow *)self rootViewController];
}

- (void)presentAlertController:(id)controller animated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  controllerCopy = controller;
  blockCopy = block;
  _presentationViewController = [(_UIAlertControllerShimPresenterWindow *)self _presentationViewController];
  presentedViewController = [_presentationViewController presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [_presentationViewController presentedViewController];

    if (presentedViewController2 != controllerCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIAlertControllerShimPresenter.m" lineNumber:366 description:{@"Multiple alert controllers assigned to the same window %@", self}];

      if (!blockCopy)
      {
        goto LABEL_8;
      }

      goto LABEL_4;
    }

    if (blockCopy)
    {
LABEL_4:
      presentedViewController3 = [_presentationViewController presentedViewController];
      blockCopy[2](blockCopy, presentedViewController3 == controllerCopy);
    }
  }

  else
  {
    v15 = +[UIWindow _applicationKeyWindow];
    [v15 windowLevel];
    v17 = v16 + 1.0;

    [(UIWindow *)self windowLevel];
    if (v17 >= v18)
    {
      v18 = v17;
    }

    [(UIWindow *)self setWindowLevel:v18];
    [(UIWindow *)self makeKeyWindow];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __89___UIAlertControllerShimPresenterWindow_presentAlertController_animated_completionBlock___block_invoke;
    v20[3] = &unk_1E70F0F78;
    v21 = blockCopy;
    [_presentationViewController presentViewController:controllerCopy animated:animatedCopy completion:v20];
  }

LABEL_8:
}

- (UIAlertController)alertController
{
  _presentationViewController = [(_UIAlertControllerShimPresenterWindow *)self _presentationViewController];
  presentedViewController = [_presentationViewController presentedViewController];

  return presentedViewController;
}

@end