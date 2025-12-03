@interface WBSStartPageSectionDescriptor
- (BOOL)isEqual:(id)equal;
- (NSDictionary)dictionaryRepresentation;
- (WBSStartPageSectionDescriptor)initWithCoder:(id)coder;
- (WBSStartPageSectionDescriptor)initWithDictionaryRepresentation:(id)representation;
- (WBSStartPageSectionDescriptor)initWithIdentifier:(id)identifier enabled:(BOOL)enabled;
- (id)description;
- (id)sectionWithEnabled:(BOOL)enabled;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSStartPageSectionDescriptor

- (WBSStartPageSectionDescriptor)initWithIdentifier:(id)identifier enabled:(BOOL)enabled
{
  v10.receiver = self;
  v10.super_class = WBSStartPageSectionDescriptor;
  identifierCopy = identifier;
  v6 = [(WBSStartPageSectionDescriptor *)&v10 init];
  v7 = [identifierCopy copy];

  identifier = v6->_identifier;
  v6->_identifier = v7;

  v6->_enabled = enabled;
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if ([(NSString *)self->_identifier isEqualToString:v5->_identifier])
      {
        v6 = self->_enabled == v5->_enabled;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self->_enabled)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  return [v3 stringWithFormat:@"<%@: %p; identifier = %@; enabled = %@>", v4, self, self->_identifier, v5];
}

- (id)sectionWithEnabled:(BOOL)enabled
{
  if (self->_enabled == enabled)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [objc_alloc(objc_opt_class()) initWithIdentifier:self->_identifier enabled:enabled];
  }

  return selfCopy;
}

- (WBSStartPageSectionDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  v6 = [coderCopy decodeBoolForKey:@"IsEnabled"];

  if ([v5 length])
  {
    self = [(WBSStartPageSectionDescriptor *)self initWithIdentifier:v5 enabled:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"Identifier"];
  [coderCopy encodeBool:self->_enabled forKey:@"IsEnabled"];
}

- (WBSStartPageSectionDescriptor)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy safari_stringForKey:@"Identifier"];
  if ([v5 length])
  {
    self = -[WBSStartPageSectionDescriptor initWithIdentifier:enabled:](self, "initWithIdentifier:enabled:", v5, [representationCopy safari_BOOLForKey:@"IsEnabled"]);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSDictionary)dictionaryRepresentation
{
  v7[2] = *MEMORY[0x1E69E9840];
  identifier = self->_identifier;
  v6[1] = @"IsEnabled";
  v7[0] = identifier;
  v6[0] = @"Identifier";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_enabled];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

@end