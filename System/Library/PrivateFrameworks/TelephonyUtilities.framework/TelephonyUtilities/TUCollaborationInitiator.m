@interface TUCollaborationInitiator
- (BOOL)isEqual:(id)a3;
- (TUCollaborationInitiator)initWithCoder:(id)a3;
- (TUCollaborationInitiator)initWithNameComponents:(id)a3 handle:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUCollaborationInitiator

- (TUCollaborationInitiator)initWithNameComponents:(id)a3 handle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = TUCollaborationInitiator;
  v8 = [(TUCollaborationInitiator *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    nameComponents = v8->_nameComponents;
    v8->_nameComponents = v9;

    v11 = [v7 copy];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    nameComponents = self->_nameComponents;
    v6 = [v4 nameComponents];
    if (TUObjectsAreEqualOrNil(nameComponents, v6))
    {
      handle = self->_handle;
      v8 = [v4 handle];
      v9 = TUObjectsAreEqualOrNil(handle, v8);
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  nameComponents = self->_nameComponents;
  handle = self->_handle;

  return [v4 initWithNameComponents:nameComponents handle:handle];
}

- (TUCollaborationInitiator)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_nameComponents);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_handle);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = [(TUCollaborationInitiator *)self initWithNameComponents:v7 handle:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  nameComponents = self->_nameComponents;
  v5 = a3;
  v6 = NSStringFromSelector(sel_nameComponents);
  [v5 encodeObject:nameComponents forKey:v6];

  handle = self->_handle;
  v8 = NSStringFromSelector(sel_handle);
  [v5 encodeObject:handle forKey:v8];
}

@end