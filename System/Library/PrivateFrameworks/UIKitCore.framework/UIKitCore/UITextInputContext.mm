@interface UITextInputContext
+ (UITextInputContext)current;
+ (UITextInputContext)new;
- (BOOL)isDictationInputExpected;
- (BOOL)isHardwareKeyboardInputExpected;
- (BOOL)isPencilInputExpected;
- (void)updateInputSource:(int64_t)source toUpdate:(BOOL)update;
@end

@implementation UITextInputContext

+ (UITextInputContext)new
{
  v3.receiver = self;
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

- (void)updateInputSource:(int64_t)source toUpdate:(BOOL)update
{
  if (!update)
  {
    v5 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    lastEventSource = [v5 lastEventSource];

    if (lastEventSource == source)
    {
      source = 0;
    }

    else
    {
      source = lastEventSource;
    }
  }

  v7 = +[UIKeyboardSceneDelegate automaticTextInputSourceCache];
  [v7 updateEventSource:source options:15];
}

@end