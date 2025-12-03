@interface UIWebFormRotatingAccessoryPopover
- (UIWebFormRotatingAccessoryPopover)initWithDOMNode:(id)node;
- (unint64_t)popoverArrowDirections;
- (void)accessoryDone;
- (void)popoverWasDismissed:(id)dismissed;
@end

@implementation UIWebFormRotatingAccessoryPopover

- (UIWebFormRotatingAccessoryPopover)initWithDOMNode:(id)node
{
  v7.receiver = self;
  v7.super_class = UIWebFormRotatingAccessoryPopover;
  v3 = [(UIWebRotatingNodePopover *)&v7 initWithDOMNode:node];
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
  node = [(UIWebRotatingNodePopover *)self node];
  ownerDocument = [node ownerDocument];
  webFrame = [ownerDocument webFrame];

  v5 = [UIWebBrowserView getUIWebBrowserViewForWebFrame:webFrame];
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

- (void)popoverWasDismissed:(id)dismissed
{
  node = [(UIWebRotatingNodePopover *)self node];

  if (node)
  {

    [(UIWebFormRotatingAccessoryPopover *)self accessoryDone];
  }
}

@end