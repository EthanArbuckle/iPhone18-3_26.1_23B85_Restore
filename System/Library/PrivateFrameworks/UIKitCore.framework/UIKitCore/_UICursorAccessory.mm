@interface _UICursorAccessory
- (BOOL)isEqual:(id)a3;
- (_UICursorAccessory)initWithCoder:(id)a3;
- (id)description;
- (id)descriptionBuilder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UICursorAccessory

- (void)encodeWithCoder:(id)a3
{
  style = self->_style;
  v5 = a3;
  [v5 encodeInteger:style forKey:@"style"];
  [v5 encodeBool:self->_interactive forKey:@"interactive"];
  [v5 encodeBool:self->_large forKey:@"large"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeDouble:@"preferredWidth" forKey:self->_preferredWidth];
  [v5 encodeObject:self->_groupIdentifier forKey:@"groupIdentifier"];
}

- (unint64_t)hash
{
  preferredWidth = self->_preferredWidth;
  v4 = [(NSString *)self->_identifier hash];
  return v4 ^ [(NSString *)self->_groupIdentifier hash]^ preferredWidth;
}

- (_UICursorAccessory)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UICursorAccessory *)self init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"preferredWidth"];
    v5->_preferredWidth = v6;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupIdentifier"];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v9;

    v5->_interactive = [v4 decodeBoolForKey:@"interactive"];
    v5->_large = [v4 decodeBoolForKey:@"large"];
    v5->_style = [v4 decodeIntegerForKey:@"style"];
  }

  return v5;
}

- (id)descriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendFloat:@"preferredWidth" withName:self->_preferredWidth];
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 appendString:identifier withName:@"identifier"];
  }

  groupIdentifier = self->_groupIdentifier;
  if (groupIdentifier)
  {
    [v3 appendString:groupIdentifier withName:@"groupIdentifier"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(_UICursorAccessory *)v5 style];
      if (v6 == [(_UICursorAccessory *)self style])
      {
        v7 = [(_UICursorAccessory *)self hash];
        v8 = v7 == [(_UICursorAccessory *)v5 hash];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v2 = [(_UICursorAccessory *)self descriptionBuilder];
  v3 = [v2 build];

  return v3;
}

@end