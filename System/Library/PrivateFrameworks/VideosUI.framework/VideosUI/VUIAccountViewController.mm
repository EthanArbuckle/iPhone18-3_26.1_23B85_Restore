@interface VUIAccountViewController
- (VUIAccountViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)signInController:(id)controller didCompleteWithOperationsResults:(id)results;
- (void)signInControllerDidCancel:(id)cancel;
- (void)signInControllerDidSkip:(id)skip;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VUIAccountViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  AccountViewController.viewWillAppear(_:)(appear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  AccountViewController.viewDidLayoutSubviews()();
}

- (VUIAccountViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  AccountViewController.init(nibName:bundle:)();
}

- (void)signInControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  OUTLINED_FUNCTION_1_26();
  AccountViewController.signInControllerDidCancel(_:)();
}

- (void)signInController:(id)controller didCompleteWithOperationsResults:(id)results
{
  sub_1E3280A90(0, &unk_1ECF37CB0);
  v6 = sub_1E4205C64();
  controllerCopy = controller;
  selfCopy = self;
  AccountViewController.signInController(_:didCompleteWithOperationsResults:)(controllerCopy, v6);
}

- (void)signInControllerDidSkip:(id)skip
{
  skipCopy = skip;
  selfCopy = self;
  OUTLINED_FUNCTION_1_26();
  AccountViewController.signInControllerDidSkip(_:)();
}

@end