@interface SCROBrailleKeyboardKey
- (SCROBrailleKeyboardKey)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCROBrailleKeyboardKey

- (SCROBrailleKeyboardKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SCROBrailleKeyboardKey;
  v5 = [(SCROBrailleKey *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_keyString"];
    keyString = v5->_keyString;
    v5->_keyString = v6;

    v5->_modifiers = [coderCopy decodeInt32ForKey:@"_modifiers"];
    v5->_keyCode = [coderCopy decodeInt32ForKey:@"_keyCode"];
    v5->_virtualKeyCode = [coderCopy decodeInt32ForKey:@"_virtualKeyCode"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = SCROBrailleKeyboardKey;
  [(SCROBrailleKey *)&v6 encodeWithCoder:coderCopy];
  keyString = self->_keyString;
  if (keyString)
  {
    [coderCopy encodeObject:keyString forKey:@"_keyString"];
  }

  [coderCopy encodeInt32:self->_modifiers forKey:@"_modifiers"];
  [coderCopy encodeInt32:self->_keyCode forKey:@"_keyCode"];
  [coderCopy encodeInt32:self->_virtualKeyCode forKey:@"_virtualKeyCode"];
}

@end