@interface TCCDSyncAccessAction
- (NSString)description;
- (TCCDSyncAccessAction)initWithCoder:(id)coder;
- (TCCDSyncAccessAction)initWithServiceIdentifier:(id)identifier;
- (id)_description;
- (id)syncId;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TCCDSyncAccessAction

- (TCCDSyncAccessAction)initWithServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = TCCDSyncAccessAction;
  v5 = [(TCCDSyncAccessAction *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    serviceIdentifier = v5->_serviceIdentifier;
    v5->_serviceIdentifier = v6;

    v5->_versionNumber = 2;
  }

  return v5;
}

- (TCCDSyncAccessAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TCCDSyncAccessAction;
  v5 = [(TCCDSyncAccessAction *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TCCDSyncAccessActionServiceIdentifierKey"];
    serviceIdentifier = v5->_serviceIdentifier;
    v5->_serviceIdentifier = v6;

    v5->_versionNumber = [coderCopy decodeInt64ForKey:@"TCCDSyncAccessActionVersionNumberKey"];
    if ([coderCopy containsValueForKey:@"TCCDSyncAccessActionChangeTypeKey"])
    {
      v5->_syncChangeType = [coderCopy decodeInt64ForKey:@"TCCDSyncAccessActionChangeTypeKey"];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serviceIdentifier = [(TCCDSyncAccessAction *)self serviceIdentifier];
  [coderCopy encodeObject:serviceIdentifier forKey:@"TCCDSyncAccessActionServiceIdentifierKey"];

  [coderCopy encodeInt64:-[TCCDSyncAccessAction versionNumber](self forKey:{"versionNumber"), @"TCCDSyncAccessActionVersionNumberKey"}];
  [coderCopy encodeInt64:-[TCCDSyncAccessAction syncChangeType](self forKey:{"syncChangeType"), @"TCCDSyncAccessActionChangeTypeKey"}];
}

- (unint64_t)hash
{
  syncId = [(TCCDSyncAccessAction *)self syncId];
  v3 = [syncId hash];

  return v3;
}

- (id)_description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  serviceIdentifier = [(TCCDSyncAccessAction *)self serviceIdentifier];
  v6 = [NSString stringWithFormat:@"%@(%p): service: %@", v4, self, serviceIdentifier];

  return v6;
}

- (NSString)description
{
  _description = [(TCCDSyncAccessAction *)self _description];
  v3 = [NSString stringWithFormat:@"{%@}", _description];

  return v3;
}

- (id)syncId
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  serviceIdentifier = [(TCCDSyncAccessAction *)self serviceIdentifier];
  v6 = [NSString stringWithFormat:@"%@-%@", v4, serviceIdentifier];

  return v6;
}

@end