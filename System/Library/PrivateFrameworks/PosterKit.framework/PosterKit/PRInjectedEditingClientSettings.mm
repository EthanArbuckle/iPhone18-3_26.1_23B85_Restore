@interface PRInjectedEditingClientSettings
- (BOOL)isEqual:(id)a3;
- (PRInjectedEditingClientSettings)initWithBSXPCCoder:(id)a3;
- (PRInjectedEditingClientSettings)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRInjectedEditingClientSettings

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v4;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    if (v9 && ([(PRInjectedEditingClientSettings *)self looks], v10 = objc_claimAutoreleasedReturnValue(), [(PRInjectedEditingClientSettings *)v9 looks], v11 = objc_claimAutoreleasedReturnValue(), v12 = BSEqualArrays(), v11, v10, v12) && ([(PRInjectedEditingClientSettings *)self editingLooks], v13 = objc_claimAutoreleasedReturnValue(), [(PRInjectedEditingClientSettings *)v9 editingLooks], v14 = objc_claimAutoreleasedReturnValue(), v15 = BSEqualArrays(), v14, v13, v15) && ([(PRInjectedEditingClientSettings *)self initialLook], v16 = objc_claimAutoreleasedReturnValue(), [(PRInjectedEditingClientSettings *)v9 initialLook], v17 = objc_claimAutoreleasedReturnValue(), v18 = BSEqualObjects(), v17, v16, v18) && ([(PRInjectedEditingClientSettings *)self initialEditingLook], v19 = objc_claimAutoreleasedReturnValue(), [(PRInjectedEditingClientSettings *)v9 initialEditingLook], v20 = objc_claimAutoreleasedReturnValue(), v21 = BSEqualObjects(), v20, v19, v21))
    {
      v22 = [(PRInjectedEditingClientSettings *)self initialColors];
      v23 = [(PRInjectedEditingClientSettings *)v9 initialColors];
      v8 = BSEqualArrays();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E698E6B8]);
  v4 = [(PRInjectedEditingClientSettings *)self looks];
  v5 = [v3 appendObject:v4];

  v6 = [(PRInjectedEditingClientSettings *)self editingLooks];
  v7 = [v3 appendObject:v6];

  v8 = [(PRInjectedEditingClientSettings *)self initialLook];
  v9 = [v3 appendString:v8];

  v10 = [(PRInjectedEditingClientSettings *)self initialEditingLook];
  v11 = [v3 appendObject:v10];

  v12 = [(PRInjectedEditingClientSettings *)self initialColors];
  v13 = [v3 appendObject:v12];

  v14 = [v3 hash];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  looks = self->_looks;
  v5 = a3;
  [v5 encodeObject:looks forKey:@"_looks"];
  [v5 encodeObject:self->_editingLooks forKey:@"_editingLooks"];
  [v5 encodeObject:self->_initialLook forKey:@"_initialLook"];
  [v5 encodeObject:self->_initialEditingLook forKey:@"_initialEditingLook"];
  [v5 encodeObject:self->_initialColors forKey:@"_initialColors"];
}

- (PRInjectedEditingClientSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PRInjectedEditingClientSettings;
  v5 = [(PRInjectedEditingClientSettings *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_looks"];
    looks = v5->_looks;
    v5->_looks = v6;

    v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_editingLooks"];
    editingLooks = v5->_editingLooks;
    v5->_editingLooks = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_initialLook"];
    initialLook = v5->_initialLook;
    v5->_initialLook = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_initialEditingLook"];
    initialEditingLook = v5->_initialEditingLook;
    v5->_initialEditingLook = v12;

    v14 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_initialColors"];
    initialColors = v5->_initialColors;
    v5->_initialColors = v14;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  looks = self->_looks;
  v5 = a3;
  [v5 encodeObject:looks forKey:@"_looks"];
  [v5 encodeObject:self->_editingLooks forKey:@"_editingLooks"];
  [v5 encodeObject:self->_initialLook forKey:@"_initialLook"];
  [v5 encodeObject:self->_initialEditingLook forKey:@"_initialEditingLook"];
  [v5 encodeObject:self->_initialColors forKey:@"_initialColors"];
}

- (PRInjectedEditingClientSettings)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = PRInjectedEditingClientSettings;
  v5 = [(PRInjectedEditingClientSettings *)&v22 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = objc_opt_self();
    v8 = [v4 decodeCollectionOfClass:v6 containingClass:v7 forKey:@"_looks"];
    looks = v5->_looks;
    v5->_looks = v8;

    v10 = objc_opt_self();
    v11 = [v4 decodeCollectionOfClass:v10 containingClass:objc_opt_class() forKey:@"_editingLooks"];
    editingLooks = v5->_editingLooks;
    v5->_editingLooks = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_initialLook"];
    initialLook = v5->_initialLook;
    v5->_initialLook = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_initialEditingLook"];
    initialEditingLook = v5->_initialEditingLook;
    v5->_initialEditingLook = v15;

    v17 = objc_opt_self();
    v18 = objc_opt_self();
    v19 = [v4 decodeCollectionOfClass:v17 containingClass:v18 forKey:@"_initialColors"];
    initialColors = v5->_initialColors;
    v5->_initialColors = v19;
  }

  return v5;
}

@end