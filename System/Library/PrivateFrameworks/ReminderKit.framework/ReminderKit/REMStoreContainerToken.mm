@interface REMStoreContainerToken
- (REMStoreContainerToken)initWithCoder:(id)coder;
- (REMStoreContainerToken)initWithIdentifier:(id)identifier;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMStoreContainerToken

- (REMStoreContainerToken)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = REMStoreContainerToken;
  v6 = [(REMStoreContainerToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(REMStoreContainerToken *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@: %p identifier: %@>", v4, self, identifier];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(REMStoreContainerToken *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

- (REMStoreContainerToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  v6 = [(REMStoreContainerToken *)self initWithIdentifier:v5];
  return v6;
}

@end