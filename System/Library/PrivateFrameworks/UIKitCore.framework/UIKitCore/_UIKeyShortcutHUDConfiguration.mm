@interface _UIKeyShortcutHUDConfiguration
- (_UIKeyShortcutHUDConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIKeyShortcutHUDConfiguration

- (void)encodeWithCoder:(id)coder
{
  model = self->_model;
  coderCopy = coder;
  [coderCopy encodeObject:model forKey:@"model"];
  [coderCopy encodeBool:self->_searching forKey:@"searching"];
  [coderCopy encodeInteger:self->_presentedModifierFlag forKey:@"presentedModifierFlag"];
  [coderCopy encodeInteger:self->_initialHeldModifierFlags forKey:@"initialHeldModifierFlag"];
  [coderCopy encodeObject:self->_clientTraits forKey:@"clientTraits"];
}

- (_UIKeyShortcutHUDConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UIKeyShortcutHUDConfiguration *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"model"];
    model = v5->_model;
    v5->_model = v7;

    v5->_searching = [coderCopy decodeBoolForKey:@"searching"];
    v5->_presentedModifierFlag = [coderCopy decodeIntegerForKey:@"presentedModifierFlag"];
    v5->_initialHeldModifierFlags = [coderCopy decodeIntegerForKey:@"initialHeldModifierFlag"];
    v9 = objc_opt_self();
    v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"clientTraits"];
    clientTraits = v5->_clientTraits;
    v5->_clientTraits = v10;
  }

  return v5;
}

@end