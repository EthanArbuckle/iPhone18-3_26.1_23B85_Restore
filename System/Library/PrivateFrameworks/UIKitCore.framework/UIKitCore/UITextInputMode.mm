@interface UITextInputMode
+ (NSArray)activeInputModes;
+ (UITextInputMode)currentInputMode;
- (NSString)primaryLanguage;
- (UITextInputMode)initWithCoder:(id)coder;
@end

@implementation UITextInputMode

- (NSString)primaryLanguage
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    primaryLanguage = [(UITextInputMode *)self primaryLanguage];
  }

  else
  {
    primaryLanguage = 0;
  }

  return primaryLanguage;
}

+ (UITextInputMode)currentInputMode
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v2 currentInputMode];

  return currentInputMode;
}

+ (NSArray)activeInputModes
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  activeInputModes = [v2 activeInputModes];

  return activeInputModes;
}

- (UITextInputMode)initWithCoder:(id)coder
{
  coderCopy = coder;

  v5 = [[UIKeyboardInputMode alloc] initWithCoder:coderCopy];
  return &v5->super;
}

@end