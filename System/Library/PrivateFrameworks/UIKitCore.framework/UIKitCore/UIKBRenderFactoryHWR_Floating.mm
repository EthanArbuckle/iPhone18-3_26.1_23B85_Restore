@interface UIKBRenderFactoryHWR_Floating
- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane;
@end

@implementation UIKBRenderFactoryHWR_Floating

- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane
{
  v12.receiver = self;
  v12.super_class = UIKBRenderFactoryHWR_Floating;
  keyCopy = key;
  v7 = [(UIKBRenderFactoryHWR_Portrait *)&v12 _traitsForKey:keyCopy onKeyplane:keyplane];
  displayType = [keyCopy displayType];

  if (displayType == 12)
  {
    renderConfig = [(UIKBRenderFactory *)self renderConfig];
    lightKeyboard = [renderConfig lightKeyboard];

    if (lightKeyboard)
    {
      [v7 setBackgroundGradient:0];
      [v7 removeAllRenderEffects];
    }
  }

  return v7;
}

@end