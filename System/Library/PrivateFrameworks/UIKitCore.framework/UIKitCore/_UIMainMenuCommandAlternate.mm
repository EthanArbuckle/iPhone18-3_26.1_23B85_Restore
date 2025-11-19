@interface _UIMainMenuCommandAlternate
- (BOOL)isEqual:(id)a3;
- (_UIMainMenuCommandAlternate)initWithCoder:(id)a3;
- (id)_initWithModifierFlags:(int64_t)a3 command:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIMainMenuCommandAlternate

- (id)_initWithModifierFlags:(int64_t)a3 command:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _UIMainMenuCommandAlternate;
  v8 = [(_UIMainMenuCommandAlternate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_modifierFlags = a3;
    objc_storeStrong(&v8->_command, a4);
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  modifierFlags = self->_modifierFlags;
  v5 = a3;
  [v5 encodeInteger:modifierFlags forKey:@"ModifierFlags"];
  [v5 encodeObject:self->_command forKey:@"Command"];
}

- (_UIMainMenuCommandAlternate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIMainMenuCommandAlternate *)self init];
  if (v5)
  {
    v5->_modifierFlags = [v4 decodeIntegerForKey:@"ModifierFlags"];
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"Command"];
    command = v5->_command;
    v5->_command = v7;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v14 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
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
  v6 = [v3 build];

  return v6;
}

@end