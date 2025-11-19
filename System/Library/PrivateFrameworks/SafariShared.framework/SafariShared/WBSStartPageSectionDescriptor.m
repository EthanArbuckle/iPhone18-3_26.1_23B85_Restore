@interface WBSStartPageSectionDescriptor
- (BOOL)isEqual:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (WBSStartPageSectionDescriptor)initWithCoder:(id)a3;
- (WBSStartPageSectionDescriptor)initWithDictionaryRepresentation:(id)a3;
- (WBSStartPageSectionDescriptor)initWithIdentifier:(id)a3 enabled:(BOOL)a4;
- (id)description;
- (id)sectionWithEnabled:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSStartPageSectionDescriptor

- (WBSStartPageSectionDescriptor)initWithIdentifier:(id)a3 enabled:(BOOL)a4
{
  v10.receiver = self;
  v10.super_class = WBSStartPageSectionDescriptor;
  v5 = a3;
  v6 = [(WBSStartPageSectionDescriptor *)&v10 init];
  v7 = [v5 copy];

  identifier = v6->_identifier;
  v6->_identifier = v7;

  v6->_enabled = a4;
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (id)sectionWithEnabled:(BOOL)a3
{
  if (self->_enabled == a3)
  {
    v3 = self;
  }

  else
  {
    v3 = [objc_alloc(objc_opt_class()) initWithIdentifier:self->_identifier enabled:a3];
  }

  return v3;
}

- (WBSStartPageSectionDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  v6 = [v4 decodeBoolForKey:@"IsEnabled"];

  if ([v5 length])
  {
    self = [(WBSStartPageSectionDescriptor *)self initWithIdentifier:v5 enabled:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"Identifier"];
  [v5 encodeBool:self->_enabled forKey:@"IsEnabled"];
}

- (WBSStartPageSectionDescriptor)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 safari_stringForKey:@"Identifier"];
  if ([v5 length])
  {
    self = -[WBSStartPageSectionDescriptor initWithIdentifier:enabled:](self, "initWithIdentifier:enabled:", v5, [v4 safari_BOOLForKey:@"IsEnabled"]);
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
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