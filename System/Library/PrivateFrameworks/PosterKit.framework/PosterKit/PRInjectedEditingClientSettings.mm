@interface PRInjectedEditingClientSettings
- (BOOL)isEqual:(id)equal;
- (PRInjectedEditingClientSettings)initWithBSXPCCoder:(id)coder;
- (PRInjectedEditingClientSettings)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRInjectedEditingClientSettings

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = equalCopy;
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
      initialColors = [(PRInjectedEditingClientSettings *)self initialColors];
      initialColors2 = [(PRInjectedEditingClientSettings *)v9 initialColors];
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
  looks = [(PRInjectedEditingClientSettings *)self looks];
  v5 = [v3 appendObject:looks];

  editingLooks = [(PRInjectedEditingClientSettings *)self editingLooks];
  v7 = [v3 appendObject:editingLooks];

  initialLook = [(PRInjectedEditingClientSettings *)self initialLook];
  v9 = [v3 appendString:initialLook];

  initialEditingLook = [(PRInjectedEditingClientSettings *)self initialEditingLook];
  v11 = [v3 appendObject:initialEditingLook];

  initialColors = [(PRInjectedEditingClientSettings *)self initialColors];
  v13 = [v3 appendObject:initialColors];

  v14 = [v3 hash];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  looks = self->_looks;
  coderCopy = coder;
  [coderCopy encodeObject:looks forKey:@"_looks"];
  [coderCopy encodeObject:self->_editingLooks forKey:@"_editingLooks"];
  [coderCopy encodeObject:self->_initialLook forKey:@"_initialLook"];
  [coderCopy encodeObject:self->_initialEditingLook forKey:@"_initialEditingLook"];
  [coderCopy encodeObject:self->_initialColors forKey:@"_initialColors"];
}

- (PRInjectedEditingClientSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PRInjectedEditingClientSettings;
  v5 = [(PRInjectedEditingClientSettings *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_looks"];
    looks = v5->_looks;
    v5->_looks = v6;

    v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_editingLooks"];
    editingLooks = v5->_editingLooks;
    v5->_editingLooks = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_initialLook"];
    initialLook = v5->_initialLook;
    v5->_initialLook = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_initialEditingLook"];
    initialEditingLook = v5->_initialEditingLook;
    v5->_initialEditingLook = v12;

    v14 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_initialColors"];
    initialColors = v5->_initialColors;
    v5->_initialColors = v14;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  looks = self->_looks;
  coderCopy = coder;
  [coderCopy encodeObject:looks forKey:@"_looks"];
  [coderCopy encodeObject:self->_editingLooks forKey:@"_editingLooks"];
  [coderCopy encodeObject:self->_initialLook forKey:@"_initialLook"];
  [coderCopy encodeObject:self->_initialEditingLook forKey:@"_initialEditingLook"];
  [coderCopy encodeObject:self->_initialColors forKey:@"_initialColors"];
}

- (PRInjectedEditingClientSettings)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = PRInjectedEditingClientSettings;
  v5 = [(PRInjectedEditingClientSettings *)&v22 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = objc_opt_self();
    v8 = [coderCopy decodeCollectionOfClass:v6 containingClass:v7 forKey:@"_looks"];
    looks = v5->_looks;
    v5->_looks = v8;

    v10 = objc_opt_self();
    v11 = [coderCopy decodeCollectionOfClass:v10 containingClass:objc_opt_class() forKey:@"_editingLooks"];
    editingLooks = v5->_editingLooks;
    v5->_editingLooks = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_initialLook"];
    initialLook = v5->_initialLook;
    v5->_initialLook = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_initialEditingLook"];
    initialEditingLook = v5->_initialEditingLook;
    v5->_initialEditingLook = v15;

    v17 = objc_opt_self();
    v18 = objc_opt_self();
    v19 = [coderCopy decodeCollectionOfClass:v17 containingClass:v18 forKey:@"_initialColors"];
    initialColors = v5->_initialColors;
    v5->_initialColors = v19;
  }

  return v5;
}

@end