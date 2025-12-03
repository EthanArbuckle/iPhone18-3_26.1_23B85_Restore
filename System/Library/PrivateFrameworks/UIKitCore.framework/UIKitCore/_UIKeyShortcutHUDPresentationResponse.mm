@interface _UIKeyShortcutHUDPresentationResponse
- (_UIKeyShortcutHUDPresentationResponse)initWithCoder:(id)coder;
@end

@implementation _UIKeyShortcutHUDPresentationResponse

- (_UIKeyShortcutHUDPresentationResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_new();
  v6 = [coderCopy decodeBoolForKey:@"accepted"];

  [(_UIKeyShortcutHUDPresentationResponse *)v5 setAccepted:v6];
  return v5;
}

@end