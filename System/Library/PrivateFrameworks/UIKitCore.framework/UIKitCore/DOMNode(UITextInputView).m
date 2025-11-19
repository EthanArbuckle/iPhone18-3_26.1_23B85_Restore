@interface DOMNode(UITextInputView)
- (id)textInputView;
@end

@implementation DOMNode(UITextInputView)

- (id)textInputView
{
  v1 = [a1 ownerDocument];
  v2 = [v1 webFrame];
  v3 = [v2 webView];
  v4 = [v3 _UIKitDelegate];

  return v4;
}

@end