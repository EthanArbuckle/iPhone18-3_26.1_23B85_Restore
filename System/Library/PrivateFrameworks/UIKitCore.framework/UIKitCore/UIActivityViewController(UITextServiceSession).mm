@interface UIActivityViewController(UITextServiceSession)
- (void)setDismissCompletionHandler:()UITextServiceSession;
@end

@implementation UIActivityViewController(UITextServiceSession)

- (void)setDismissCompletionHandler:()UITextServiceSession
{
  v4 = _Block_copy(aBlock);
  objc_setAssociatedObject(self, &kDismissCompletionHandlerKey_0, v4, 3);
}

@end