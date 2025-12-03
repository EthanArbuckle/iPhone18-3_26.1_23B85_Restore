@interface _UIAlertControllerTextField
- (void)setSecureTextEntry:(BOOL)entry;
@end

@implementation _UIAlertControllerTextField

- (void)setSecureTextEntry:(BOOL)entry
{
  entryCopy = entry;
  v5.receiver = self;
  v5.super_class = _UIAlertControllerTextField;
  [(UITextField *)&v5 setSecureTextEntry:?];
  if (entryCopy)
  {
    [(_UIAlertControllerTextField *)self setShortcutConversionType:1];
  }
}

@end