@interface _UITextFieldImageBackgroundView
- (BOOL)respondsToSelector:(SEL)selector;
@end

@implementation _UITextFieldImageBackgroundView

- (BOOL)respondsToSelector:(SEL)selector
{
  if (sel_setCornerRadius_ == selector)
  {

    return dyld_program_sdk_at_least();
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = _UITextFieldImageBackgroundView;
    return [(_UITextFieldImageBackgroundView *)&v6 respondsToSelector:?];
  }
}

@end