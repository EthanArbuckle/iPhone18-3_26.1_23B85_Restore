@interface REMAccountsDataViewInvocation_fetchByExternalIdentifier
- (BOOL)isEqual:(id)equal;
- (REMAccountsDataViewInvocation_fetchByExternalIdentifier)initWithCoder:(id)coder;
- (REMAccountsDataViewInvocation_fetchByExternalIdentifier)initWithExternalIdentifiers:(id)identifiers;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMAccountsDataViewInvocation_fetchByExternalIdentifier

- (REMAccountsDataViewInvocation_fetchByExternalIdentifier)initWithExternalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v9.receiver = self;
  v9.super_class = REMAccountsDataViewInvocation_fetchByExternalIdentifier;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_externalIdentifiers, identifiers);
  }

  return v7;
}

- (REMAccountsDataViewInvocation_fetchByExternalIdentifier)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"externalIdentifiers"];

  if (v8)
  {
    self = [(REMAccountsDataViewInvocation_fetchByExternalIdentifier *)self initWithExternalIdentifiers:v8];
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
  coderCopy = coder;
  externalIdentifiers = [(REMAccountsDataViewInvocation_fetchByExternalIdentifier *)self externalIdentifiers];
  [coderCopy encodeObject:externalIdentifiers forKey:@"externalIdentifiers"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    externalIdentifiers = [(REMAccountsDataViewInvocation_fetchByExternalIdentifier *)self externalIdentifiers];
    externalIdentifiers2 = [equalCopy externalIdentifiers];
    if (externalIdentifiers == externalIdentifiers2)
    {
      v9 = 1;
    }

    else
    {
      externalIdentifiers3 = [(REMAccountsDataViewInvocation_fetchByExternalIdentifier *)self externalIdentifiers];
      externalIdentifiers4 = [equalCopy externalIdentifiers];
      v9 = [externalIdentifiers3 isEqual:externalIdentifiers4];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (unint64_t)hash
{
  externalIdentifiers = [(REMAccountsDataViewInvocation_fetchByExternalIdentifier *)self externalIdentifiers];
  v3 = [externalIdentifiers hash];

  return v3;
}

@end