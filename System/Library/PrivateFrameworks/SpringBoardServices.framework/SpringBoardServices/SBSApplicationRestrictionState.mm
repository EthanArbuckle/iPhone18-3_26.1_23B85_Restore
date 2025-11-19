@interface SBSApplicationRestrictionState
- (SBSApplicationRestrictionState)initWithAllowedIdentifiers:(id)a3 restrictedIdentifiers:(id)a4;
- (SBSApplicationRestrictionState)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBSApplicationRestrictionState

- (SBSApplicationRestrictionState)initWithAllowedIdentifiers:(id)a3 restrictedIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SBSApplicationRestrictionState;
  v8 = [(SBSApplicationRestrictionState *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    allowedBundleIdentifiers = v8->_allowedBundleIdentifiers;
    v8->_allowedBundleIdentifiers = v9;

    v11 = [v7 copy];
    restrictedBundleIdentifiers = v8->_restrictedBundleIdentifiers;
    v8->_restrictedBundleIdentifiers = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  allowedBundleIdentifiers = self->_allowedBundleIdentifiers;
  v5 = a3;
  [v5 encodeObject:allowedBundleIdentifiers forKey:@"allowedBundleIdentifiers"];
  [v5 encodeObject:self->_restrictedBundleIdentifiers forKey:@"restrictedBundleIdentifiers"];
}

- (SBSApplicationRestrictionState)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_self();
  v7 = objc_opt_self();
  v8 = [v4 setWithObjects:{v6, v7, 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"allowedBundleIdentifiers"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_self();
  v12 = objc_opt_self();
  v13 = [v10 setWithObjects:{v11, v12, 0}];
  v14 = [v5 decodeObjectOfClasses:v13 forKey:@"restrictedBundleIdentifiers"];

  v15 = [(SBSApplicationRestrictionState *)self initWithAllowedIdentifiers:v9 restrictedIdentifiers:v14];
  return v15;
}

@end