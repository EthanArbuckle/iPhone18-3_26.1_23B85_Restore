@interface TCCDSyncClientAccessAction
- (TCCDSyncClientAccessAction)initWithCoder:(id)coder;
- (TCCDSyncClientAccessAction)initWithServiceIdentifier:(id)identifier mainClientIdentifier:(id)clientIdentifier replicaClientIdentifier:(id)replicaClientIdentifier clientType:(int)type;
- (id)_description;
- (id)syncId;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TCCDSyncClientAccessAction

- (TCCDSyncClientAccessAction)initWithServiceIdentifier:(id)identifier mainClientIdentifier:(id)clientIdentifier replicaClientIdentifier:(id)replicaClientIdentifier clientType:(int)type
{
  clientIdentifierCopy = clientIdentifier;
  replicaClientIdentifierCopy = replicaClientIdentifier;
  v15.receiver = self;
  v15.super_class = TCCDSyncClientAccessAction;
  v12 = [(TCCDSyncAccessAction *)&v15 initWithServiceIdentifier:identifier];
  v13 = v12;
  if (v12)
  {
    [(TCCDSyncClientAccessAction *)v12 setMainClientIdentifier:clientIdentifierCopy];
    [(TCCDSyncClientAccessAction *)v13 setReplicaClientIdentifier:replicaClientIdentifierCopy];
    v13->_clientType = type;
  }

  return v13;
}

- (TCCDSyncClientAccessAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TCCDSyncClientAccessAction;
  v5 = [(TCCDSyncAccessAction *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"TCCDSyncAccessActionMainClientIdentifierKey"])
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TCCDSyncAccessActionMainClientIdentifierKey"];
      [(TCCDSyncClientAccessAction *)v5 setMainClientIdentifier:v6];
    }

    if ([coderCopy containsValueForKey:@"TCCDSyncAccessActionReplicaClientIdentifierKey"])
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TCCDSyncAccessActionReplicaClientIdentifierKey"];
      [(TCCDSyncClientAccessAction *)v5 setReplicaClientIdentifier:v7];
    }

    v5->_clientType = [coderCopy decodeInt32ForKey:@"TCCDSyncAccessActionClientTypeKey"];
    mainClientIdentifier = [(TCCDSyncClientAccessAction *)v5 mainClientIdentifier];

    v9 = +[TCCDMainSyncController sharedSyncController];
    if (mainClientIdentifier)
    {
      mainClientIdentifier2 = [(TCCDSyncClientAccessAction *)v5 mainClientIdentifier];
      replicaClientIdentifier = [(TCCDSyncClientAccessAction *)v5 replicaClientIdentifier];
      [v9 registerMainClientIdentifier:mainClientIdentifier2 forReplicaClientIdentifier:replicaClientIdentifier];
    }

    else
    {
      mainClientIdentifier2 = [(TCCDSyncClientAccessAction *)v5 replicaClientIdentifier];
      replicaClientIdentifier = [v9 mainClientIdentifierForReplicaClientIdentifier:mainClientIdentifier2];
      [(TCCDSyncClientAccessAction *)v5 setMainClientIdentifier:replicaClientIdentifier];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TCCDSyncClientAccessAction;
  [(TCCDSyncAccessAction *)&v9 encodeWithCoder:coderCopy];
  mainClientIdentifier = [(TCCDSyncClientAccessAction *)self mainClientIdentifier];

  if (mainClientIdentifier)
  {
    mainClientIdentifier2 = [(TCCDSyncClientAccessAction *)self mainClientIdentifier];
    [coderCopy encodeObject:mainClientIdentifier2 forKey:@"TCCDSyncAccessActionMainClientIdentifierKey"];
  }

  replicaClientIdentifier = [(TCCDSyncClientAccessAction *)self replicaClientIdentifier];

  if (replicaClientIdentifier)
  {
    replicaClientIdentifier2 = [(TCCDSyncClientAccessAction *)self replicaClientIdentifier];
    [coderCopy encodeObject:replicaClientIdentifier2 forKey:@"TCCDSyncAccessActionReplicaClientIdentifierKey"];
  }

  [coderCopy encodeInt32:-[TCCDSyncClientAccessAction clientType](self forKey:{"clientType"), @"TCCDSyncAccessActionClientTypeKey"}];
}

- (id)_description
{
  v8.receiver = self;
  v8.super_class = TCCDSyncClientAccessAction;
  _description = [(TCCDSyncAccessAction *)&v8 _description];
  mainClientIdentifier = [(TCCDSyncClientAccessAction *)self mainClientIdentifier];
  replicaClientIdentifier = [(TCCDSyncClientAccessAction *)self replicaClientIdentifier];
  v6 = [NSString stringWithFormat:@"%@, main: %@, replica: %@, clientType:%d", _description, mainClientIdentifier, replicaClientIdentifier, [(TCCDSyncClientAccessAction *)self clientType]];

  return v6;
}

- (id)syncId
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  serviceIdentifier = [(TCCDSyncAccessAction *)self serviceIdentifier];
  mainClientIdentifier = [(TCCDSyncClientAccessAction *)self mainClientIdentifier];
  if (mainClientIdentifier)
  {
    mainClientIdentifier2 = [(TCCDSyncClientAccessAction *)self mainClientIdentifier];
  }

  else
  {
    mainClientIdentifier2 = &stru_1000A7240;
  }

  replicaClientIdentifier = [(TCCDSyncClientAccessAction *)self replicaClientIdentifier];
  if (replicaClientIdentifier)
  {
    replicaClientIdentifier2 = [(TCCDSyncClientAccessAction *)self replicaClientIdentifier];
    v10 = [NSString stringWithFormat:@"%@-%@-%@-%@", v4, serviceIdentifier, mainClientIdentifier2, replicaClientIdentifier2];
  }

  else
  {
    v10 = [NSString stringWithFormat:@"%@-%@-%@-%@", v4, serviceIdentifier, mainClientIdentifier2, &stru_1000A7240];
  }

  if (mainClientIdentifier)
  {
  }

  return v10;
}

@end