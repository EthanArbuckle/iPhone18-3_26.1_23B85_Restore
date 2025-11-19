@interface _UIKeyShortcutHUDDismissalResponse
- (_UIKeyShortcutHUDDismissalResponse)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIKeyShortcutHUDDismissalResponse

- (void)encodeWithCoder:(id)a3
{
  keyCommand = self->_keyCommand;
  v5 = a3;
  [v5 encodeObject:keyCommand forKey:@"keyCommand"];
  [v5 encodeObject:self->_pasteAuthenticationMessage forKey:@"pasteAuthenticationMessage"];
}

- (_UIKeyShortcutHUDDismissalResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_self();
  v7 = [v4 decodeObjectOfClass:v6 forKey:@"keyCommand"];
  [(_UIKeyShortcutHUDDismissalResponse *)v5 setKeyCommand:v7];

  v8 = objc_opt_self();
  v9 = [v4 decodeObjectOfClass:v8 forKey:@"pasteAuthenticationMessage"];

  [(_UIKeyShortcutHUDDismissalResponse *)v5 setPasteAuthenticationMessage:v9];
  return v5;
}

@end