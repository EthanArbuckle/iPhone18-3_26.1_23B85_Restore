@interface _UICellAccessoryConfigurationCustomView
- (BOOL)isEqual:(id)equal;
- (_UICellAccessoryConfigurationCustomView)initWithCoder:(id)coder;
- (_UICellAccessoryConfigurationCustomView)initWithCustomView:(id)view;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UICellAccessoryConfigurationCustomView

- (_UICellAccessoryConfigurationCustomView)initWithCustomView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICellAccessoryConfiguration.m" lineNumber:501 description:{@"Invalid parameter not satisfying: %@", @"customView != nil"}];
  }

  if (([viewCopy translatesAutoresizingMaskIntoConstraints] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UICellAccessoryConfiguration.m" lineNumber:502 description:{@"Custom view accessories must have translatesAutoresizingMaskIntoConstraints enabled, even if auto layout constraints are used inside them. Custom view: %@", viewCopy}];
  }

  v13.receiver = self;
  v13.super_class = _UICellAccessoryConfigurationCustomView;
  v7 = [(_UICellAccessoryConfiguration *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_customView, view);
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v9 = 0;
    }

    else
    {
      objc_opt_class();
      v9 = (objc_opt_isKindOfClass() & 1) == 0 || _UICellAccessoryCustomViewDefaultUsesStandardLayoutWidthForCustomButton(viewCopy);
    }

    [(_UICellAccessoryConfiguration *)v8 setUsesDefaultLayoutWidth:v9];
  }

  return v8;
}

- (_UICellAccessoryConfigurationCustomView)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy requiresSecureCoding] & 1) != 0 || (objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"customView"), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    v8 = 0;
    v6 = 0;
  }

  else
  {
    v6 = v5;
    v10.receiver = self;
    v10.super_class = _UICellAccessoryConfigurationCustomView;
    v7 = [(_UICellAccessoryConfiguration *)&v10 initWithCoder:coderCopy];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_customView, v6);
      v8->_maintainsFixedSize = [coderCopy decodeBoolForKey:@"maintainsFixedSize"];
    }
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = _UICellAccessoryConfigurationCustomView;
  [(_UICellAccessoryConfiguration *)&v5 encodeWithCoder:coderCopy];
  if (([coderCopy requiresSecureCoding] & 1) == 0)
  {
    [coderCopy encodeObject:self->_customView forKey:@"customView"];
  }

  [coderCopy encodeBool:self->_maintainsFixedSize forKey:@"maintainsFixedSize"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = _UICellAccessoryConfigurationCustomView;
  v4 = [(_UICellAccessoryConfiguration *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 5, self->_customView);
    *(v5 + 32) = self->_maintainsFixedSize;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = _UICellAccessoryConfigurationCustomView;
  v5 = [(_UICellAccessoryConfiguration *)&v7 isEqual:equalCopy]&& self->_customView == equalCopy[5] && self->_maintainsFixedSize == *(equalCopy + 32);

  return v5;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = _UICellAccessoryConfigurationCustomView;
  v3 = [(_UICellAccessoryConfiguration *)&v5 hash];
  return [(UIView *)self->_customView hash]^ v3 ^ self->_maintainsFixedSize;
}

@end