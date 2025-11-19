@interface SCROBrailleKeyboardKey
- (SCROBrailleKeyboardKey)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCROBrailleKeyboardKey

- (SCROBrailleKeyboardKey)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SCROBrailleKeyboardKey;
  v5 = [(SCROBrailleKey *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_keyString"];
    keyString = v5->_keyString;
    v5->_keyString = v6;

    v5->_modifiers = [v4 decodeInt32ForKey:@"_modifiers"];
    v5->_keyCode = [v4 decodeInt32ForKey:@"_keyCode"];
    v5->_virtualKeyCode = [v4 decodeInt32ForKey:@"_virtualKeyCode"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SCROBrailleKeyboardKey;
  [(SCROBrailleKey *)&v6 encodeWithCoder:v4];
  keyString = self->_keyString;
  if (keyString)
  {
    [v4 encodeObject:keyString forKey:@"_keyString"];
  }

  [v4 encodeInt32:self->_modifiers forKey:@"_modifiers"];
  [v4 encodeInt32:self->_keyCode forKey:@"_keyCode"];
  [v4 encodeInt32:self->_virtualKeyCode forKey:@"_virtualKeyCode"];
}

@end