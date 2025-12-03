@interface _UIKeyShortcutHUDDismissalResponse
- (_UIKeyShortcutHUDDismissalResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIKeyShortcutHUDDismissalResponse

- (void)encodeWithCoder:(id)coder
{
  keyCommand = self->_keyCommand;
  coderCopy = coder;
  [coderCopy encodeObject:keyCommand forKey:@"keyCommand"];
  [coderCopy encodeObject:self->_pasteAuthenticationMessage forKey:@"pasteAuthenticationMessage"];
}

- (_UIKeyShortcutHUDDismissalResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_new();
  v6 = objc_opt_self();
  v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"keyCommand"];
  [(_UIKeyShortcutHUDDismissalResponse *)v5 setKeyCommand:v7];

  v8 = objc_opt_self();
  v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"pasteAuthenticationMessage"];

  [(_UIKeyShortcutHUDDismissalResponse *)v5 setPasteAuthenticationMessage:v9];
  return v5;
}

@end