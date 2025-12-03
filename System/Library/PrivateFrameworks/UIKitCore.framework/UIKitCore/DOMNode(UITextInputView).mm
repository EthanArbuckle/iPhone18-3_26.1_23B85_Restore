@interface DOMNode(UITextInputView)
- (id)textInputView;
@end

@implementation DOMNode(UITextInputView)

- (id)textInputView
{
  ownerDocument = [self ownerDocument];
  webFrame = [ownerDocument webFrame];
  webView = [webFrame webView];
  _UIKitDelegate = [webView _UIKitDelegate];

  return _UIKitDelegate;
}

@end