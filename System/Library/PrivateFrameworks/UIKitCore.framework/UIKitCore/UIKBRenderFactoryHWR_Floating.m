@interface UIKBRenderFactoryHWR_Floating
- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4;
@end

@implementation UIKBRenderFactoryHWR_Floating

- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4
{
  v12.receiver = self;
  v12.super_class = UIKBRenderFactoryHWR_Floating;
  v6 = a3;
  v7 = [(UIKBRenderFactoryHWR_Portrait *)&v12 _traitsForKey:v6 onKeyplane:a4];
  v8 = [v6 displayType];

  if (v8 == 12)
  {
    v9 = [(UIKBRenderFactory *)self renderConfig];
    v10 = [v9 lightKeyboard];

    if (v10)
    {
      [v7 setBackgroundGradient:0];
      [v7 removeAllRenderEffects];
    }
  }

  return v7;
}

@end