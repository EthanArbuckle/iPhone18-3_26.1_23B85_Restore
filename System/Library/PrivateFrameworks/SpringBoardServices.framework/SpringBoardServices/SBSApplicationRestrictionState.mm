@interface SBSApplicationRestrictionState
- (SBSApplicationRestrictionState)initWithAllowedIdentifiers:(id)identifiers restrictedIdentifiers:(id)restrictedIdentifiers;
- (SBSApplicationRestrictionState)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBSApplicationRestrictionState

- (SBSApplicationRestrictionState)initWithAllowedIdentifiers:(id)identifiers restrictedIdentifiers:(id)restrictedIdentifiers
{
  identifiersCopy = identifiers;
  restrictedIdentifiersCopy = restrictedIdentifiers;
  v14.receiver = self;
  v14.super_class = SBSApplicationRestrictionState;
  v8 = [(SBSApplicationRestrictionState *)&v14 init];
  if (v8)
  {
    v9 = [identifiersCopy copy];
    allowedBundleIdentifiers = v8->_allowedBundleIdentifiers;
    v8->_allowedBundleIdentifiers = v9;

    v11 = [restrictedIdentifiersCopy copy];
    restrictedBundleIdentifiers = v8->_restrictedBundleIdentifiers;
    v8->_restrictedBundleIdentifiers = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  allowedBundleIdentifiers = self->_allowedBundleIdentifiers;
  coderCopy = coder;
  [coderCopy encodeObject:allowedBundleIdentifiers forKey:@"allowedBundleIdentifiers"];
  [coderCopy encodeObject:self->_restrictedBundleIdentifiers forKey:@"restrictedBundleIdentifiers"];
}

- (SBSApplicationRestrictionState)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_self();
  v7 = objc_opt_self();
  v8 = [v4 setWithObjects:{v6, v7, 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"allowedBundleIdentifiers"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_self();
  v12 = objc_opt_self();
  v13 = [v10 setWithObjects:{v11, v12, 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"restrictedBundleIdentifiers"];

  v15 = [(SBSApplicationRestrictionState *)self initWithAllowedIdentifiers:v9 restrictedIdentifiers:v14];
  return v15;
}

@end