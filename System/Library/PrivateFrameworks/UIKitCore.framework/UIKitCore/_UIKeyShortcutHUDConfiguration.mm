@interface _UIKeyShortcutHUDConfiguration
- (_UIKeyShortcutHUDConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIKeyShortcutHUDConfiguration

- (void)encodeWithCoder:(id)a3
{
  model = self->_model;
  v5 = a3;
  [v5 encodeObject:model forKey:@"model"];
  [v5 encodeBool:self->_searching forKey:@"searching"];
  [v5 encodeInteger:self->_presentedModifierFlag forKey:@"presentedModifierFlag"];
  [v5 encodeInteger:self->_initialHeldModifierFlags forKey:@"initialHeldModifierFlag"];
  [v5 encodeObject:self->_clientTraits forKey:@"clientTraits"];
}

- (_UIKeyShortcutHUDConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyShortcutHUDConfiguration *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"model"];
    model = v5->_model;
    v5->_model = v7;

    v5->_searching = [v4 decodeBoolForKey:@"searching"];
    v5->_presentedModifierFlag = [v4 decodeIntegerForKey:@"presentedModifierFlag"];
    v5->_initialHeldModifierFlags = [v4 decodeIntegerForKey:@"initialHeldModifierFlag"];
    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"clientTraits"];
    clientTraits = v5->_clientTraits;
    v5->_clientTraits = v10;
  }

  return v5;
}

@end