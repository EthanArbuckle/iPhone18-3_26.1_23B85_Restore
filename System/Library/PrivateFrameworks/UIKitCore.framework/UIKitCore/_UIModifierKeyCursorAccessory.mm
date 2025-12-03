@interface _UIModifierKeyCursorAccessory
- (_UIModifierKeyCursorAccessory)initWithCoder:(id)coder;
- (id)descriptionBuilder;
- (id)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIModifierKeyCursorAccessory

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIModifierKeyCursorAccessory;
  coderCopy = coder;
  [(_UICursorAccessory *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_modifierType forKey:{@"modifierType", v5.receiver, v5.super_class}];
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _UIModifierKeyCursorAccessory;
  return self->_modifierType ^ [(_UICursorAccessory *)&v3 hash];
}

- (_UIModifierKeyCursorAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = _UIModifierKeyCursorAccessory;
  v5 = [(_UICursorAccessory *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_modifierType = [coderCopy decodeIntegerForKey:@"modifierType"];
  }

  return v5;
}

- (id)descriptionBuilder
{
  v6.receiver = self;
  v6.super_class = _UIModifierKeyCursorAccessory;
  descriptionBuilder = [(_UICursorAccessory *)&v6 descriptionBuilder];
  v4 = [descriptionBuilder appendInt:LODWORD(self->_modifierType) withName:@"modifierType"];

  return descriptionBuilder;
}

- (id)identifier
{
  v5.receiver = self;
  v5.super_class = _UIModifierKeyCursorAccessory;
  identifier = [(_UICursorAccessory *)&v5 identifier];
  if (!identifier)
  {
    identifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"mod:%ld", self->_modifierType];
    [(_UICursorAccessory *)self setIdentifier:identifier];
  }

  return identifier;
}

@end