@interface _UIKeyShortcutHUDPresentationResponse
- (_UIKeyShortcutHUDPresentationResponse)initWithCoder:(id)a3;
@end

@implementation _UIKeyShortcutHUDPresentationResponse

- (_UIKeyShortcutHUDPresentationResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 decodeBoolForKey:@"accepted"];

  [(_UIKeyShortcutHUDPresentationResponse *)v5 setAccepted:v6];
  return v5;
}

@end