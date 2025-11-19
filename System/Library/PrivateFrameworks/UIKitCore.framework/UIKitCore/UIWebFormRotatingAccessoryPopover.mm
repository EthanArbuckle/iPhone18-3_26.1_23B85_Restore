@interface UIWebFormRotatingAccessoryPopover
- (UIWebFormRotatingAccessoryPopover)initWithDOMNode:(id)a3;
- (unint64_t)popoverArrowDirections;
- (void)accessoryDone;
- (void)popoverWasDismissed:(id)a3;
@end

@implementation UIWebFormRotatingAccessoryPopover

- (UIWebFormRotatingAccessoryPopover)initWithDOMNode:(id)a3
{
  v7.receiver = self;
  v7.super_class = UIWebFormRotatingAccessoryPopover;
  v3 = [(UIWebRotatingNodePopover *)&v7 initWithDOMNode:a3];
  v4 = v3;
  if (v3)
  {
    [(UIWebRotatingNodePopover *)v3 setDismissDelegate:v3];
    v5 = v4;
  }

  return v4;
}

- (void)accessoryDone
{
  WebThreadLock();
  v3 = [(UIWebRotatingNodePopover *)self node];
  v4 = [v3 ownerDocument];
  v6 = [v4 webFrame];

  v5 = [UIWebBrowserView getUIWebBrowserViewForWebFrame:v6];
  [v5 accessoryDone];
}

- (unint64_t)popoverArrowDirections
{
  if (([UIApp _defaultSceneInterfaceOrientationReturningUnknownForNilScene:0] - 3) > 1)
  {
    return 3;
  }

  if (UIKeyboardAutomaticIsOnScreen())
  {
    return 12;
  }

  return 3;
}

- (void)popoverWasDismissed:(id)a3
{
  v4 = [(UIWebRotatingNodePopover *)self node];

  if (v4)
  {

    [(UIWebFormRotatingAccessoryPopover *)self accessoryDone];
  }
}

@end