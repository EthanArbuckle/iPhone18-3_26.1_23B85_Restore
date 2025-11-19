@interface VideosExtrasPresenter
- (CGRect)extrasMenuBarFrame;
- (VideosExtrasPresenter)initWithExtrasContext:(id)a3 extrasMenuBarFrame:(CGRect)a4;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)dismissExtrasAnimated:(BOOL)a3 completion:(id)a4;
- (void)presentExtrasWith:(id)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation VideosExtrasPresenter

- (VideosExtrasPresenter)initWithExtrasContext:(id)a3 extrasMenuBarFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v16.receiver = self;
  v16.super_class = VideosExtrasPresenter;
  v11 = [(VideosExtrasPresenter *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_extrasContext, a3);
    v12->_extrasMenuBarFrame.origin.x = x;
    v12->_extrasMenuBarFrame.origin.y = y;
    v12->_extrasMenuBarFrame.size.width = width;
    v12->_extrasMenuBarFrame.size.height = height;
    v13 = [v10 extrasRootViewController];
    [v13 setModalPresentationStyle:4];

    v14 = [v10 extrasRootViewController];
    [v14 setTransitioningDelegate:v12];
  }

  return v12;
}

- (void)presentExtrasWith:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v15 = a3;
  v8 = a5;
  if (v15)
  {
    v9 = [MEMORY[0x1E69DC938] currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (!v10)
    {
      v11 = [(VideosExtrasPresenter *)self extrasContext];
      v12 = [v11 extrasRootViewController];
      [v12 _setIgnoreAppSupportedOrientations:1];
    }

    v13 = [(VideosExtrasPresenter *)self extrasContext];
    v14 = [v13 extrasRootViewController];
    [v15 presentViewController:v14 animated:v6 completion:v8];
  }

  else if (v8)
  {
    v8[2](v8);
  }
}

- (void)dismissExtrasAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v12 = a4;
  v6 = [(VideosExtrasPresenter *)self extrasContext];
  v7 = [v6 extrasRootViewController];
  v8 = [v7 presentingViewController];

  if (v8)
  {
    v9 = [(VideosExtrasPresenter *)self extrasContext];
    v10 = [v9 extrasRootViewController];
    v11 = [v10 presentingViewController];
    [v11 dismissViewControllerAnimated:v4 completion:v12];
  }

  else if (v12)
  {
    v12[2]();
  }
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v5 = [[VideosTransitionFadeAnimator alloc] initWithTransitionType:0 andDuration:0.3];

  return v5;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v3 = [[VideosTransitionFadeAnimator alloc] initWithTransitionType:1 andDuration:0.3];

  return v3;
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [VideosExtrasPresentationController alloc];
  v10 = [(VideosExtrasPresenter *)self extrasContext];
  v11 = [v10 extrasRootViewController];
  v12 = [v11 extrasMenuBarView];
  [(VideosExtrasPresenter *)self extrasMenuBarFrame];
  v13 = [(VideosExtrasPresentationController *)v9 initWithPresentedViewController:v8 presentingViewController:v7 extrasMenuBarView:v12 extrasmenuBarFrame:?];

  return v13;
}

- (CGRect)extrasMenuBarFrame
{
  x = self->_extrasMenuBarFrame.origin.x;
  y = self->_extrasMenuBarFrame.origin.y;
  width = self->_extrasMenuBarFrame.size.width;
  height = self->_extrasMenuBarFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end