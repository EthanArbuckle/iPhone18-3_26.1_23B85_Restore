@interface _UIKeyboardResponderOverrideInfo
- (id)initWithKeyboardResponder:(void *)responder sourceView:(void *)view commonView:;
@end

@implementation _UIKeyboardResponderOverrideInfo

- (id)initWithKeyboardResponder:(void *)responder sourceView:(void *)view commonView:
{
  v7 = a2;
  responderCopy = responder;
  viewCopy = view;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = _UIKeyboardResponderOverrideInfo;
    v10 = objc_msgSendSuper2(&v12, sel_init);
    self = v10;
    if (v10)
    {
      objc_storeWeak(v10 + 1, v7);
      objc_storeWeak(self + 2, responderCopy);
      objc_storeWeak(self + 3, viewCopy);
    }
  }

  return self;
}

@end