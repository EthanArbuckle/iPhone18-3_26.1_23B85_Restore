@interface TUCollaborationInitiator
- (BOOL)isEqual:(id)equal;
- (TUCollaborationInitiator)initWithCoder:(id)coder;
- (TUCollaborationInitiator)initWithNameComponents:(id)components handle:(id)handle;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUCollaborationInitiator

- (TUCollaborationInitiator)initWithNameComponents:(id)components handle:(id)handle
{
  componentsCopy = components;
  handleCopy = handle;
  v15.receiver = self;
  v15.super_class = TUCollaborationInitiator;
  v8 = [(TUCollaborationInitiator *)&v15 init];
  if (v8)
  {
    v9 = [componentsCopy copy];
    nameComponents = v8->_nameComponents;
    v8->_nameComponents = v9;

    v11 = [handleCopy copy];
    handle = v8->_handle;
    v8->_handle = v11;

    v13 = v8;
  }

  return v8;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_nameComponents);
  [v3 appendFormat:@"%@=%@", v4, self->_nameComponents];

  v5 = NSStringFromSelector(sel_handle);
  [v3 appendFormat:@", %@=%@", v5, self->_handle];

  [v3 appendFormat:@">"];
  v6 = [v3 copy];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    nameComponents = self->_nameComponents;
    nameComponents = [equalCopy nameComponents];
    if (TUObjectsAreEqualOrNil(nameComponents, nameComponents))
    {
      handle = self->_handle;
      handle = [equalCopy handle];
      v9 = TUObjectsAreEqualOrNil(handle, handle);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  nameComponents = self->_nameComponents;
  handle = self->_handle;

  return [v4 initWithNameComponents:nameComponents handle:handle];
}

- (TUCollaborationInitiator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_nameComponents);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_handle);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = [(TUCollaborationInitiator *)self initWithNameComponents:v7 handle:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  nameComponents = self->_nameComponents;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_nameComponents);
  [coderCopy encodeObject:nameComponents forKey:v6];

  handle = self->_handle;
  v8 = NSStringFromSelector(sel_handle);
  [coderCopy encodeObject:handle forKey:v8];
}

@end