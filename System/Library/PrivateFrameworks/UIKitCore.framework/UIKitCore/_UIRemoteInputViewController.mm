@interface _UIRemoteInputViewController
- (CGSize)intrinsicContentSizeForServiceSize:(CGSize)result;
- (void)viewDidInvalidateIntrinsicContentSize;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation _UIRemoteInputViewController

- (void)viewServiceDidTerminateWithError:(id)error
{
  v8.receiver = self;
  v8.super_class = _UIRemoteInputViewController;
  [(_UIRemoteViewController *)&v8 viewServiceDidTerminateWithError:error];
  parentViewController = [(UIViewController *)self parentViewController];

  if (parentViewController)
  {
    +[_UIKeyboardUsageTracking keyboardExtensionCrashed];
    v5 = TIGetKeyboardExtensionNoAutoFallbackValue();
    bOOLValue = [v5 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      v7 = +[UIKeyboardInputModeController sharedInputModeController];
      [v7 switchToCurrentSystemInputMode];
    }
  }
}

- (CGSize)intrinsicContentSizeForServiceSize:(CGSize)result
{
  if (result.height == 0.0)
  {
    +[UIKeyboard defaultSizeForInterfaceOrientation:](UIKeyboard, "defaultSizeForInterfaceOrientation:", [UIApp _frontMostAppOrientation]);
  }

  v3 = -1.0;
  result.width = v3;
  return result;
}

- (void)viewDidInvalidateIntrinsicContentSize
{
  view = [(UIViewController *)self view];
  _rootInputWindowController = [view _rootInputWindowController];
  [_rootInputWindowController updateViewSizingConstraints];

  view2 = [(UIViewController *)self view];
  view3 = [(UIViewController *)self view];
  [view3 bounds];
  v8 = [UIKBKeyplaneChangeContext keyplaneChangeContextWithSize:v6, v7];
  [view2 _didChangeKeyplaneWithContext:v8];
}

@end