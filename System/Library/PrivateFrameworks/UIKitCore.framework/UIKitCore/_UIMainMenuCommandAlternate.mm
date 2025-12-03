@interface _UIMainMenuCommandAlternate
- (BOOL)isEqual:(id)equal;
- (_UIMainMenuCommandAlternate)initWithCoder:(id)coder;
- (id)_initWithModifierFlags:(int64_t)flags command:(id)command;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIMainMenuCommandAlternate

- (id)_initWithModifierFlags:(int64_t)flags command:(id)command
{
  commandCopy = command;
  v11.receiver = self;
  v11.super_class = _UIMainMenuCommandAlternate;
  v8 = [(_UIMainMenuCommandAlternate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_modifierFlags = flags;
    objc_storeStrong(&v8->_command, command);
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  modifierFlags = self->_modifierFlags;
  coderCopy = coder;
  [coderCopy encodeInteger:modifierFlags forKey:@"ModifierFlags"];
  [coderCopy encodeObject:self->_command forKey:@"Command"];
}

- (_UIMainMenuCommandAlternate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UIMainMenuCommandAlternate *)self init];
  if (v5)
  {
    v5->_modifierFlags = [coderCopy decodeIntegerForKey:@"ModifierFlags"];
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"Command"];
    command = v5->_command;
    v5->_command = v7;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      v8 = v7;
      if (self->_modifierFlags == v7->_modifierFlags)
      {
        command = self->_command;
        v10 = v7->_command;
        v11 = command;
        v12 = v10;
        v13 = v12;
        if (v11 == v12)
        {
          v14 = 1;
        }

        else
        {
          v14 = 0;
          if (v11 && v12)
          {
            v14 = [(_UIMainMenuCommand *)v11 isEqual:v12];
          }
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = _UIKeyModiferFlagsDescription(self->_modifierFlags);
  [v3 appendString:v4 withName:@"modifierFlags"];

  v5 = [v3 appendObject:self->_command withName:@"command"];
  build = [v3 build];

  return build;
}

@end