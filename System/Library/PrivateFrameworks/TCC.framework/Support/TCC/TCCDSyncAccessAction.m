@interface TCCDSyncAccessAction
- (NSString)description;
- (TCCDSyncAccessAction)initWithCoder:(id)a3;
- (TCCDSyncAccessAction)initWithServiceIdentifier:(id)a3;
- (id)_description;
- (id)syncId;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TCCDSyncAccessAction

- (TCCDSyncAccessAction)initWithServiceIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TCCDSyncAccessAction;
  v5 = [(TCCDSyncAccessAction *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    serviceIdentifier = v5->_serviceIdentifier;
    v5->_serviceIdentifier = v6;

    v5->_versionNumber = 2;
  }

  return v5;
}

- (TCCDSyncAccessAction)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TCCDSyncAccessAction;
  v5 = [(TCCDSyncAccessAction *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TCCDSyncAccessActionServiceIdentifierKey"];
    serviceIdentifier = v5->_serviceIdentifier;
    v5->_serviceIdentifier = v6;

    v5->_versionNumber = [v4 decodeInt64ForKey:@"TCCDSyncAccessActionVersionNumberKey"];
    if ([v4 containsValueForKey:@"TCCDSyncAccessActionChangeTypeKey"])
    {
      v5->_syncChangeType = [v4 decodeInt64ForKey:@"TCCDSyncAccessActionChangeTypeKey"];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(TCCDSyncAccessAction *)self serviceIdentifier];
  [v5 encodeObject:v4 forKey:@"TCCDSyncAccessActionServiceIdentifierKey"];

  [v5 encodeInt64:-[TCCDSyncAccessAction versionNumber](self forKey:{"versionNumber"), @"TCCDSyncAccessActionVersionNumberKey"}];
  [v5 encodeInt64:-[TCCDSyncAccessAction syncChangeType](self forKey:{"syncChangeType"), @"TCCDSyncAccessActionChangeTypeKey"}];
}

- (unint64_t)hash
{
  v2 = [(TCCDSyncAccessAction *)self syncId];
  v3 = [v2 hash];

  return v3;
}

- (id)_description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(TCCDSyncAccessAction *)self serviceIdentifier];
  v6 = [NSString stringWithFormat:@"%@(%p): service: %@", v4, self, v5];

  return v6;
}

- (NSString)description
{
  v2 = [(TCCDSyncAccessAction *)self _description];
  v3 = [NSString stringWithFormat:@"{%@}", v2];

  return v3;
}

- (id)syncId
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(TCCDSyncAccessAction *)self serviceIdentifier];
  v6 = [NSString stringWithFormat:@"%@-%@", v4, v5];

  return v6;
}

@end