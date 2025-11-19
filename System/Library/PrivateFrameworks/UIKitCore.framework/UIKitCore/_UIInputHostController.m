@interface _UIInputHostController
+ (id)_keyboardControllerForIntent:(int64_t)a3;
@end

@implementation _UIInputHostController

+ (id)_keyboardControllerForIntent:(int64_t)a3
{
  switch(a3)
  {
    case 3:
      goto LABEL_4;
    case 2:
      v3 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      v4 = [v3 inputWindowRootViewController];
      goto LABEL_6;
    case 1:
LABEL_4:
      v3 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:0];
      v4 = [v3 rootViewController];
LABEL_6:
      v5 = v4;

      goto LABEL_8;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

@end