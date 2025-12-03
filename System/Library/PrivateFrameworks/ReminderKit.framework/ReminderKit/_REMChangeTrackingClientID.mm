@interface _REMChangeTrackingClientID
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_REMChangeTrackingClientID)initWithClientName:(id)name accountIdentifier:(id)identifier;
- (_REMChangeTrackingClientID)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _REMChangeTrackingClientID

- (_REMChangeTrackingClientID)initWithClientName:(id)name accountIdentifier:(id)identifier
{
  nameCopy = name;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = _REMChangeTrackingClientID;
  v9 = [(_REMChangeTrackingClientID *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientName, name);
    objc_storeStrong(&v10->_accountIdentifier, identifier);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientName = [(_REMChangeTrackingClientID *)self clientName];
  [coderCopy encodeObject:clientName forKey:@"clientName"];

  accountIdentifier = [(_REMChangeTrackingClientID *)self accountIdentifier];
  [coderCopy encodeObject:accountIdentifier forKey:@"accountIdentifier"];
}

- (_REMChangeTrackingClientID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_REMChangeTrackingClientID *)self initWithClientName:v5 accountIdentifier:v6];
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      clientName = [(_REMChangeTrackingClientID *)self clientName];
      clientName2 = [(_REMChangeTrackingClientID *)v6 clientName];
      v9 = clientName2;
      if (clientName == clientName2)
      {
      }

      else
      {
        clientName3 = [(_REMChangeTrackingClientID *)self clientName];
        clientName4 = [(_REMChangeTrackingClientID *)v6 clientName];
        v12 = [clientName3 isEqual:clientName4];

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      accountIdentifier = [(_REMChangeTrackingClientID *)self accountIdentifier];
      accountIdentifier2 = [(_REMChangeTrackingClientID *)v6 accountIdentifier];
      if (accountIdentifier == accountIdentifier2)
      {
        v13 = 1;
      }

      else
      {
        accountIdentifier3 = [(_REMChangeTrackingClientID *)self accountIdentifier];
        accountIdentifier4 = [(_REMChangeTrackingClientID *)v6 accountIdentifier];
        v13 = [accountIdentifier3 isEqual:accountIdentifier4];
      }

      goto LABEL_12;
    }

LABEL_5:
    v13 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v13 = 1;
LABEL_13:

  return v13 & 1;
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = _REMChangeTrackingClientID;
  v3 = [(_REMChangeTrackingClientID *)&v10 description];
  v4 = MEMORY[0x1E696AEC0];
  clientName = [(_REMChangeTrackingClientID *)self clientName];
  accountIdentifier = [(_REMChangeTrackingClientID *)self accountIdentifier];
  v7 = [v4 stringWithFormat:@" - {clientName: %@, accountIdentifier: %@}", clientName, accountIdentifier];;
  v8 = [v3 stringByAppendingString:v7];

  return v8;
}

@end