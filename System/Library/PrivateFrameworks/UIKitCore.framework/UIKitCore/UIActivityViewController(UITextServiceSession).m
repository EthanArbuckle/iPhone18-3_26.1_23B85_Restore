@interface UIActivityViewController(UITextServiceSession)
- (void)setDismissCompletionHandler:()UITextServiceSession;
@end

@implementation UIActivityViewController(UITextServiceSession)

- (void)setDismissCompletionHandler:()UITextServiceSession
{
  v4 = _Block_copy(aBlock);
  objc_setAssociatedObject(a1, &kDismissCompletionHandlerKey_0, v4, 3);
}

@end