@interface _UICursorAccessory
- (BOOL)isEqual:(id)equal;
- (_UICursorAccessory)initWithCoder:(id)coder;
- (id)description;
- (id)descriptionBuilder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UICursorAccessory

- (void)encodeWithCoder:(id)coder
{
  style = self->_style;
  coderCopy = coder;
  [coderCopy encodeInteger:style forKey:@"style"];
  [coderCopy encodeBool:self->_interactive forKey:@"interactive"];
  [coderCopy encodeBool:self->_large forKey:@"large"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeDouble:@"preferredWidth" forKey:self->_preferredWidth];
  [coderCopy encodeObject:self->_groupIdentifier forKey:@"groupIdentifier"];
}

- (unint64_t)hash
{
  preferredWidth = self->_preferredWidth;
  v4 = [(NSString *)self->_identifier hash];
  return v4 ^ [(NSString *)self->_groupIdentifier hash]^ preferredWidth;
}

- (_UICursorAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UICursorAccessory *)self init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"preferredWidth"];
    v5->_preferredWidth = v6;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupIdentifier"];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v9;

    v5->_interactive = [coderCopy decodeBoolForKey:@"interactive"];
    v5->_large = [coderCopy decodeBoolForKey:@"large"];
    v5->_style = [coderCopy decodeIntegerForKey:@"style"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      style = [(_UICursorAccessory *)v5 style];
      if (style == [(_UICursorAccessory *)self style])
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
  descriptionBuilder = [(_UICursorAccessory *)self descriptionBuilder];
  build = [descriptionBuilder build];

  return build;
}

@end