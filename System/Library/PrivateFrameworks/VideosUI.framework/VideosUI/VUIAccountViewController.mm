@interface VUIAccountViewController
- (VUIAccountViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)signInController:(id)a3 didCompleteWithOperationsResults:(id)a4;
- (void)signInControllerDidCancel:(id)a3;
- (void)signInControllerDidSkip:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation VUIAccountViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  AccountViewController.viewWillAppear(_:)(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  AccountViewController.viewDidLayoutSubviews()();
}

- (VUIAccountViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  AccountViewController.init(nibName:bundle:)();
}

- (void)signInControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_1_26();
  AccountViewController.signInControllerDidCancel(_:)();
}

- (void)signInController:(id)a3 didCompleteWithOperationsResults:(id)a4
{
  sub_1E3280A90(0, &unk_1ECF37CB0);
  v6 = sub_1E4205C64();
  v7 = a3;
  v8 = self;
  AccountViewController.signInController(_:didCompleteWithOperationsResults:)(v7, v6);
}

- (void)signInControllerDidSkip:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_1_26();
  AccountViewController.signInControllerDidSkip(_:)();
}

@end