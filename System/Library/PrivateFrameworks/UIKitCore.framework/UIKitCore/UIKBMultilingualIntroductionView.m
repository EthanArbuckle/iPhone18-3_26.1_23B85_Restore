@interface UIKBMultilingualIntroductionView
+ (BOOL)shouldShowIntroductionForInputMode:(id)a3;
- (UIKBMultilingualIntroductionView)initWithInputMode:(id)a3 frame:(CGRect)a4;
@end

@implementation UIKBMultilingualIntroductionView

+ (BOOL)shouldShowIntroductionForInputMode:(id)a3
{
  v3 = +[UIKeyboard keyboardBundleIdentifier];
  if (([v3 isEqualToString:@"com.apple.purplebuddy"] & 1) != 0 || +[UIKeyboardImpl isSplit](UIKeyboardImpl, "isSplit"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = +[UIKeyboardImpl activeInstance];
    if ([v5 isMinimized])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v6 = +[UIKeyboardImpl activeInstance];
      v4 = [v6 isPredictionViewControllerVisible];

      if (v4)
      {
        v7 = [v5 keyboardStateManager];
        v8 = [v7 textInputTraits];
        if ([v8 isSecureTextEntry])
        {
          LOBYTE(v4) = 0;
        }

        else
        {
          v9 = [v8 keyboardType];
          LOBYTE(v4) = 0;
          if ((v9 > 0xB || ((1 << v9) & 0x930) == 0) && v9 != 127)
          {
            LOBYTE(v4) = 1;
          }
        }
      }
    }
  }

  return v4;
}

- (UIKBMultilingualIntroductionView)initWithInputMode:(id)a3 frame:(CGRect)a4
{
  v5.receiver = self;
  v5.super_class = UIKBMultilingualIntroductionView;
  return [(UIView *)&v5 initWithFrame:a3, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
}

@end