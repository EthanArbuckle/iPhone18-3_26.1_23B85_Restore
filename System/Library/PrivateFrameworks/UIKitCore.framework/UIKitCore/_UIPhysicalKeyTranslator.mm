@interface _UIPhysicalKeyTranslator
- (_UIPhysicalKeyTranslator)initWithGSKeyboard:(__GSKeyboard *)keyboard;
- (id)layoutName;
- (id)translationForHIDUsageCode:(unsigned __int16)code modifiers:(int64_t)modifiers;
- (int)HIDUsageCodeForCharacter:(unsigned __int16)character modifiers:(int64_t)modifiers;
- (void)dealloc;
@end

@implementation _UIPhysicalKeyTranslator

- (_UIPhysicalKeyTranslator)initWithGSKeyboard:(__GSKeyboard *)keyboard
{
  v7.receiver = self;
  v7.super_class = _UIPhysicalKeyTranslator;
  v4 = [(_UIPhysicalKeyTranslator *)&v7 init];
  v5 = v4;
  if (keyboard && v4)
  {
    v4->_keyboardRef = keyboard;
    CFRetain(keyboard);
  }

  return v5;
}

- (void)dealloc
{
  keyboardRef = self->_keyboardRef;
  if (keyboardRef)
  {
    CFRelease(keyboardRef);
  }

  v4.receiver = self;
  v4.super_class = _UIPhysicalKeyTranslator;
  [(_UIPhysicalKeyTranslator *)&v4 dealloc];
}

- (id)translationForHIDUsageCode:(unsigned __int16)code modifiers:(int64_t)modifiers
{
  v6 = *MEMORY[0x1E69E9840];
  keyboardRef = [(_UIPhysicalKeyTranslator *)self keyboardRef];
  if (keyboardRef)
  {
    GSKeyboardTranslateKeyWithModifiers();
    keyboardRef = 0;
  }

  return keyboardRef;
}

- (int)HIDUsageCodeForCharacter:(unsigned __int16)character modifiers:(int64_t)modifiers
{
  if (![(_UIPhysicalKeyTranslator *)self keyboardRef])
  {
    return -1;
  }

  return GSKeyboardGetKeyCodeForChar();
}

- (id)layoutName
{
  keyboardRef = [(_UIPhysicalKeyTranslator *)self keyboardRef];
  if (keyboardRef)
  {
    keyboardRef = GSKeyboardGetLayout();
  }

  return keyboardRef;
}

@end