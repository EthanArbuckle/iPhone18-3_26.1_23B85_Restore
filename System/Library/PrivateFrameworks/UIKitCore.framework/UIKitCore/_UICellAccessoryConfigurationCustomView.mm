@interface _UICellAccessoryConfigurationCustomView
- (BOOL)isEqual:(id)a3;
- (_UICellAccessoryConfigurationCustomView)initWithCoder:(id)a3;
- (_UICellAccessoryConfigurationCustomView)initWithCustomView:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UICellAccessoryConfigurationCustomView

- (_UICellAccessoryConfigurationCustomView)initWithCustomView:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UICellAccessoryConfiguration.m" lineNumber:501 description:{@"Invalid parameter not satisfying: %@", @"customView != nil"}];
  }

  if (([v6 translatesAutoresizingMaskIntoConstraints] & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UICellAccessoryConfiguration.m" lineNumber:502 description:{@"Custom view accessories must have translatesAutoresizingMaskIntoConstraints enabled, even if auto layout constraints are used inside them. Custom view: %@", v6}];
  }

  v13.receiver = self;
  v13.super_class = _UICellAccessoryConfigurationCustomView;
  v7 = [(_UICellAccessoryConfiguration *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_customView, a3);
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v9 = 0;
    }

    else
    {
      objc_opt_class();
      v9 = (objc_opt_isKindOfClass() & 1) == 0 || _UICellAccessoryCustomViewDefaultUsesStandardLayoutWidthForCustomButton(v6);
    }

    [(_UICellAccessoryConfiguration *)v8 setUsesDefaultLayoutWidth:v9];
  }

  return v8;
}

- (_UICellAccessoryConfigurationCustomView)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 requiresSecureCoding] & 1) != 0 || (objc_msgSend(v4, "decodeObjectOfClass:forKey:", objc_opt_class(), @"customView"), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    v8 = 0;
    v6 = 0;
  }

  else
  {
    v6 = v5;
    v10.receiver = self;
    v10.super_class = _UICellAccessoryConfigurationCustomView;
    v7 = [(_UICellAccessoryConfiguration *)&v10 initWithCoder:v4];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_customView, v6);
      v8->_maintainsFixedSize = [v4 decodeBoolForKey:@"maintainsFixedSize"];
    }
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = _UICellAccessoryConfigurationCustomView;
  [(_UICellAccessoryConfiguration *)&v5 encodeWithCoder:v4];
  if (([v4 requiresSecureCoding] & 1) == 0)
  {
    [v4 encodeObject:self->_customView forKey:@"customView"];
  }

  [v4 encodeBool:self->_maintainsFixedSize forKey:@"maintainsFixedSize"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = _UICellAccessoryConfigurationCustomView;
  v4 = [(_UICellAccessoryConfiguration *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 5, self->_customView);
    *(v5 + 32) = self->_maintainsFixedSize;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UICellAccessoryConfigurationCustomView;
  v5 = [(_UICellAccessoryConfiguration *)&v7 isEqual:v4]&& self->_customView == v4[5] && self->_maintainsFixedSize == *(v4 + 32);

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