@interface _UIKeyboardResponderOverrideInfo
- (id)initWithKeyboardResponder:(void *)a3 sourceView:(void *)a4 commonView:;
@end

@implementation _UIKeyboardResponderOverrideInfo

- (id)initWithKeyboardResponder:(void *)a3 sourceView:(void *)a4 commonView:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = _UIKeyboardResponderOverrideInfo;
    v10 = objc_msgSendSuper2(&v12, sel_init);
    a1 = v10;
    if (v10)
    {
      objc_storeWeak(v10 + 1, v7);
      objc_storeWeak(a1 + 2, v8);
      objc_storeWeak(a1 + 3, v9);
    }
  }

  return a1;
}

@end