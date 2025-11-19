@interface _UITextFieldImageBackgroundView
- (BOOL)respondsToSelector:(SEL)a3;
@end

@implementation _UITextFieldImageBackgroundView

- (BOOL)respondsToSelector:(SEL)a3
{
  if (sel_setCornerRadius_ == a3)
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