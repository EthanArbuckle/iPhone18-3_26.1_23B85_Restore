@interface UITextInputContext
+ (UITextInputContext)current;
+ (UITextInputContext)new;
- (BOOL)isDictationInputExpected;
- (BOOL)isHardwareKeyboardInputExpected;
- (BOOL)isPencilInputExpected;
- (void)updateInputSource:(int64_t)a3 toUpdate:(BOOL)a4;
@end

@implementation UITextInputContext

+ (UITextInputContext)new
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___UITextInputContext;
  return objc_msgSendSuper2(&v3, "new");
}

+ (UITextInputContext)current
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)isPencilInputExpected
{
  v2 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v3 = [v2 lastEventSource] == 3;

  return v3;
}

- (BOOL)isDictationInputExpected
{
  v2 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v3 = [v2 lastEventSource] == 2;

  return v3;
}

- (BOOL)isHardwareKeyboardInputExpected
{
  v2 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v3 = [v2 lastEventSource] == 4;

  return v3;
}

- (void)updateInputSource:(int64_t)a3 toUpdate:(BOOL)a4
{
  if (!a4)
  {
    v5 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v6 = [v5 lastEventSource];

    if (v6 == a3)
    {
      a3 = 0;
    }

    else
    {
      a3 = v6;
    }
  }

  v7 = +[UIKeyboardSceneDelegate automaticTextInputSourceCache];
  [v7 updateEventSource:a3 options:15];
}

@end