@interface UIKBRenderFactoryiPadFudgePasscode
- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4;
- (id)hashStringElement;
@end

@implementation UIKBRenderFactoryiPadFudgePasscode

- (id)hashStringElement
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(UIKBRenderFactory *)self renderConfig];
  [v3 keycapOpacity];
  v4 = [v2 numberWithDouble:?];

  return v4;
}

- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4
{
  v12.receiver = self;
  v12.super_class = UIKBRenderFactoryiPadFudgePasscode;
  v6 = a4;
  v7 = a3;
  v8 = [(UIKBRenderFactoryiPadFudge *)&v12 _traitsForKey:v7 onKeyplane:v6];
  [(UIKBRenderFactory *)self modifyKeyTraitsForPasscode:v8 forKey:v7 onKeyplane:v6, v12.receiver, v12.super_class];

  v9 = [(UIKBRenderFactoryiPhone *)self _popupStyleForKey:v7];
  if (v9)
  {
    v10 = [(UIKBRenderFactoryiPadFudgePasscode *)self activeControlKeyTraits];
    [v8 overlayWithTraits:v10];
  }

  return v8;
}

@end