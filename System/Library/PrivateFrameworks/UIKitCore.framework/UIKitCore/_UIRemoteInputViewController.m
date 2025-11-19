@interface _UIRemoteInputViewController
- (CGSize)intrinsicContentSizeForServiceSize:(CGSize)result;
- (void)viewDidInvalidateIntrinsicContentSize;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation _UIRemoteInputViewController

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v8.receiver = self;
  v8.super_class = _UIRemoteInputViewController;
  [(_UIRemoteViewController *)&v8 viewServiceDidTerminateWithError:a3];
  v4 = [(UIViewController *)self parentViewController];

  if (v4)
  {
    +[_UIKeyboardUsageTracking keyboardExtensionCrashed];
    v5 = TIGetKeyboardExtensionNoAutoFallbackValue();
    v6 = [v5 BOOLValue];

    if ((v6 & 1) == 0)
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
  v3 = [(UIViewController *)self view];
  v4 = [v3 _rootInputWindowController];
  [v4 updateViewSizingConstraints];

  v9 = [(UIViewController *)self view];
  v5 = [(UIViewController *)self view];
  [v5 bounds];
  v8 = [UIKBKeyplaneChangeContext keyplaneChangeContextWithSize:v6, v7];
  [v9 _didChangeKeyplaneWithContext:v8];
}

@end