@interface UIKBRenderFactoryiPadLandscapePasscode
- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane;
- (id)hashStringElement;
@end

@implementation UIKBRenderFactoryiPadLandscapePasscode

- (id)hashStringElement
{
  v2 = MEMORY[0x1E696AD98];
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  [renderConfig keycapOpacity];
  v4 = [v2 numberWithDouble:?];

  return v4;
}

- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane
{
  v12.receiver = self;
  v12.super_class = UIKBRenderFactoryiPadLandscapePasscode;
  keyplaneCopy = keyplane;
  keyCopy = key;
  v8 = [(UIKBRenderFactoryiPad *)&v12 _traitsForKey:keyCopy onKeyplane:keyplaneCopy];
  [(UIKBRenderFactory *)self modifyKeyTraitsForPasscode:v8 forKey:keyCopy onKeyplane:keyplaneCopy, v12.receiver, v12.super_class];

  v9 = [(UIKBRenderFactoryiPhone *)self _popupStyleForKey:keyCopy];
  if (v9)
  {
    activeControlKeyTraits = [(UIKBRenderFactoryiPadLandscapePasscode *)self activeControlKeyTraits];
    [v8 overlayWithTraits:activeControlKeyTraits];
  }

  return v8;
}

@end