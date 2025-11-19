@interface _UIMainMenuPerformableKeyboardShortcutCommand
- (BOOL)isEqual:(id)a3;
- (_UIMainMenuPerformableKeyboardShortcutCommand)initWithCoder:(id)a3;
- (id)_initWithCommand:(id)a3 state:(id)a4 categoryMenuIdentifier:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIMainMenuPerformableKeyboardShortcutCommand

- (id)_initWithCommand:(id)a3 state:(id)a4 categoryMenuIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _UIMainMenuPerformableKeyboardShortcutCommand;
  v12 = [(_UIMainMenuPerformableKeyboardShortcutCommand *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_command, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
  }

  return p_isa;
}

- (void)encodeWithCoder:(id)a3
{
  command = self->_command;
  v5 = a3;
  [v5 encodeObject:command forKey:@"Command"];
  [v5 encodeObject:self->_state forKey:@"State"];
  [v5 encodeObject:self->_categoryMenuIdentifier forKey:@"CategoryMenuIdentifier"];
}

- (_UIMainMenuPerformableKeyboardShortcutCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIMainMenuPerformableKeyboardShortcutCommand *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"Command"];
    command = v5->_command;
    v5->_command = v7;

    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"State"];
    state = v5->_state;
    v5->_state = v10;

    v12 = objc_opt_self();
    v13 = [v4 decodeObjectOfClass:v12 forKey:@"CategoryMenuIdentifier"];
    categoryMenuIdentifier = v5->_categoryMenuIdentifier;
    v5->_categoryMenuIdentifier = v13;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      command = v7->_command;
      v9 = self->_command;
      v10 = command;
      v11 = v10;
      if (v9 == v10)
      {
      }

      else
      {
        LOBYTE(v12) = 0;
        if (!v9 || !v10)
        {
          goto LABEL_22;
        }

        v12 = [(_UIMainMenuCommand *)v9 isEqual:v10];

        if (!v12)
        {
          goto LABEL_23;
        }
      }

      state = v7->_state;
      v9 = self->_state;
      v14 = state;
      v11 = v14;
      if (v9 == v14)
      {

LABEL_17:
        categoryMenuIdentifier = self->_categoryMenuIdentifier;
        v16 = v7->_categoryMenuIdentifier;
        v9 = categoryMenuIdentifier;
        v17 = v16;
        v11 = v17;
        if (v9 == v17)
        {
          LOBYTE(v12) = 1;
        }

        else
        {
          LOBYTE(v12) = 0;
          if (v9 && v17)
          {
            LOBYTE(v12) = [(_UIMainMenuCommand *)v9 isEqual:v17];
          }
        }

        goto LABEL_22;
      }

      LOBYTE(v12) = 0;
      if (v9 && v14)
      {
        v12 = [(_UIMainMenuCommand *)v9 isEqual:v14];

        if (!v12)
        {
          goto LABEL_23;
        }

        goto LABEL_17;
      }

LABEL_22:

LABEL_23:
      goto LABEL_24;
    }

    LOBYTE(v12) = 0;
  }

LABEL_24:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(_UIMainMenuCommand *)self->_command hash];
  v4 = [(_UIMainMenuCommandState *)self->_state hash]^ v3;
  return v4 ^ [(_UIMainMenuIdentifier *)self->_categoryMenuIdentifier hash];
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_command withName:@"command"];
  v5 = [v3 appendObject:self->_state withName:@"state"];
  v6 = [v3 appendObject:self->_categoryMenuIdentifier withName:@"categoryMenuIdentifier"];
  v7 = [v3 build];

  return v7;
}

@end