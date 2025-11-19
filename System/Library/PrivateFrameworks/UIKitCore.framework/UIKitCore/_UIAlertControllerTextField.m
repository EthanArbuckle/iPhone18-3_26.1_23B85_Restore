@interface _UIAlertControllerTextField
- (void)setSecureTextEntry:(BOOL)a3;
@end

@implementation _UIAlertControllerTextField

- (void)setSecureTextEntry:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = _UIAlertControllerTextField;
  [(UITextField *)&v5 setSecureTextEntry:?];
  if (v3)
  {
    [(_UIAlertControllerTextField *)self setShortcutConversionType:1];
  }
}

@end