@interface UIKBMultilingualIntroductionView
+ (BOOL)shouldShowIntroductionForInputMode:(id)mode;
- (UIKBMultilingualIntroductionView)initWithInputMode:(id)mode frame:(CGRect)frame;
@end

@implementation UIKBMultilingualIntroductionView

+ (BOOL)shouldShowIntroductionForInputMode:(id)mode
{
  v3 = +[UIKeyboard keyboardBundleIdentifier];
  if (([v3 isEqualToString:@"com.apple.purplebuddy"] & 1) != 0 || +[UIKeyboardImpl isSplit](UIKeyboardImpl, "isSplit"))
  {
    LOBYTE(isPredictionViewControllerVisible) = 0;
  }

  else
  {
    v5 = +[UIKeyboardImpl activeInstance];
    if ([v5 isMinimized])
    {
      LOBYTE(isPredictionViewControllerVisible) = 0;
    }

    else
    {
      v6 = +[UIKeyboardImpl activeInstance];
      isPredictionViewControllerVisible = [v6 isPredictionViewControllerVisible];

      if (isPredictionViewControllerVisible)
      {
        keyboardStateManager = [v5 keyboardStateManager];
        textInputTraits = [keyboardStateManager textInputTraits];
        if ([textInputTraits isSecureTextEntry])
        {
          LOBYTE(isPredictionViewControllerVisible) = 0;
        }

        else
        {
          keyboardType = [textInputTraits keyboardType];
          LOBYTE(isPredictionViewControllerVisible) = 0;
          if ((keyboardType > 0xB || ((1 << keyboardType) & 0x930) == 0) && keyboardType != 127)
          {
            LOBYTE(isPredictionViewControllerVisible) = 1;
          }
        }
      }
    }
  }

  return isPredictionViewControllerVisible;
}

- (UIKBMultilingualIntroductionView)initWithInputMode:(id)mode frame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = UIKBMultilingualIntroductionView;
  return [(UIView *)&v5 initWithFrame:mode, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

@end