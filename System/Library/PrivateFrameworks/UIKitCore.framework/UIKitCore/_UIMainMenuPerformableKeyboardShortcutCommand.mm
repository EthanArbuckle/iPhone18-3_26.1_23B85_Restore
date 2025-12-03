@interface _UIMainMenuPerformableKeyboardShortcutCommand
- (BOOL)isEqual:(id)equal;
- (_UIMainMenuPerformableKeyboardShortcutCommand)initWithCoder:(id)coder;
- (id)_initWithCommand:(id)command state:(id)state categoryMenuIdentifier:(id)identifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIMainMenuPerformableKeyboardShortcutCommand

- (id)_initWithCommand:(id)command state:(id)state categoryMenuIdentifier:(id)identifier
{
  commandCopy = command;
  stateCopy = state;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = _UIMainMenuPerformableKeyboardShortcutCommand;
  v12 = [(_UIMainMenuPerformableKeyboardShortcutCommand *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_command, command);
    objc_storeStrong(p_isa + 2, state);
    objc_storeStrong(p_isa + 3, identifier);
  }

  return p_isa;
}

- (void)encodeWithCoder:(id)coder
{
  command = self->_command;
  coderCopy = coder;
  [coderCopy encodeObject:command forKey:@"Command"];
  [coderCopy encodeObject:self->_state forKey:@"State"];
  [coderCopy encodeObject:self->_categoryMenuIdentifier forKey:@"CategoryMenuIdentifier"];
}

- (_UIMainMenuPerformableKeyboardShortcutCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UIMainMenuPerformableKeyboardShortcutCommand *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"Command"];
    command = v5->_command;
    v5->_command = v7;

    v9 = objc_opt_self();
    v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"State"];
    state = v5->_state;
    v5->_state = v10;

    v12 = objc_opt_self();
    v13 = [coderCopy decodeObjectOfClass:v12 forKey:@"CategoryMenuIdentifier"];
    categoryMenuIdentifier = v5->_categoryMenuIdentifier;
    v5->_categoryMenuIdentifier = v13;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
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
  build = [v3 build];

  return build;
}

@end