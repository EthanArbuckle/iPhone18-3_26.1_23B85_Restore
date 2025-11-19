@interface TCCDSyncClientAccessAction
- (TCCDSyncClientAccessAction)initWithCoder:(id)a3;
- (TCCDSyncClientAccessAction)initWithServiceIdentifier:(id)a3 mainClientIdentifier:(id)a4 replicaClientIdentifier:(id)a5 clientType:(int)a6;
- (id)_description;
- (id)syncId;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TCCDSyncClientAccessAction

- (TCCDSyncClientAccessAction)initWithServiceIdentifier:(id)a3 mainClientIdentifier:(id)a4 replicaClientIdentifier:(id)a5 clientType:(int)a6
{
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TCCDSyncClientAccessAction;
  v12 = [(TCCDSyncAccessAction *)&v15 initWithServiceIdentifier:a3];
  v13 = v12;
  if (v12)
  {
    [(TCCDSyncClientAccessAction *)v12 setMainClientIdentifier:v10];
    [(TCCDSyncClientAccessAction *)v13 setReplicaClientIdentifier:v11];
    v13->_clientType = a6;
  }

  return v13;
}

- (TCCDSyncClientAccessAction)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TCCDSyncClientAccessAction;
  v5 = [(TCCDSyncAccessAction *)&v13 initWithCoder:v4];
  if (v5)
  {
    if ([v4 containsValueForKey:@"TCCDSyncAccessActionMainClientIdentifierKey"])
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TCCDSyncAccessActionMainClientIdentifierKey"];
      [(TCCDSyncClientAccessAction *)v5 setMainClientIdentifier:v6];
    }

    if ([v4 containsValueForKey:@"TCCDSyncAccessActionReplicaClientIdentifierKey"])
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TCCDSyncAccessActionReplicaClientIdentifierKey"];
      [(TCCDSyncClientAccessAction *)v5 setReplicaClientIdentifier:v7];
    }

    v5->_clientType = [v4 decodeInt32ForKey:@"TCCDSyncAccessActionClientTypeKey"];
    v8 = [(TCCDSyncClientAccessAction *)v5 mainClientIdentifier];

    v9 = +[TCCDMainSyncController sharedSyncController];
    if (v8)
    {
      v10 = [(TCCDSyncClientAccessAction *)v5 mainClientIdentifier];
      v11 = [(TCCDSyncClientAccessAction *)v5 replicaClientIdentifier];
      [v9 registerMainClientIdentifier:v10 forReplicaClientIdentifier:v11];
    }

    else
    {
      v10 = [(TCCDSyncClientAccessAction *)v5 replicaClientIdentifier];
      v11 = [v9 mainClientIdentifierForReplicaClientIdentifier:v10];
      [(TCCDSyncClientAccessAction *)v5 setMainClientIdentifier:v11];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TCCDSyncClientAccessAction;
  [(TCCDSyncAccessAction *)&v9 encodeWithCoder:v4];
  v5 = [(TCCDSyncClientAccessAction *)self mainClientIdentifier];

  if (v5)
  {
    v6 = [(TCCDSyncClientAccessAction *)self mainClientIdentifier];
    [v4 encodeObject:v6 forKey:@"TCCDSyncAccessActionMainClientIdentifierKey"];
  }

  v7 = [(TCCDSyncClientAccessAction *)self replicaClientIdentifier];

  if (v7)
  {
    v8 = [(TCCDSyncClientAccessAction *)self replicaClientIdentifier];
    [v4 encodeObject:v8 forKey:@"TCCDSyncAccessActionReplicaClientIdentifierKey"];
  }

  [v4 encodeInt32:-[TCCDSyncClientAccessAction clientType](self forKey:{"clientType"), @"TCCDSyncAccessActionClientTypeKey"}];
}

- (id)_description
{
  v8.receiver = self;
  v8.super_class = TCCDSyncClientAccessAction;
  v3 = [(TCCDSyncAccessAction *)&v8 _description];
  v4 = [(TCCDSyncClientAccessAction *)self mainClientIdentifier];
  v5 = [(TCCDSyncClientAccessAction *)self replicaClientIdentifier];
  v6 = [NSString stringWithFormat:@"%@, main: %@, replica: %@, clientType:%d", v3, v4, v5, [(TCCDSyncClientAccessAction *)self clientType]];

  return v6;
}

- (id)syncId
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(TCCDSyncAccessAction *)self serviceIdentifier];
  v6 = [(TCCDSyncClientAccessAction *)self mainClientIdentifier];
  if (v6)
  {
    v7 = [(TCCDSyncClientAccessAction *)self mainClientIdentifier];
  }

  else
  {
    v7 = &stru_1000A7240;
  }

  v8 = [(TCCDSyncClientAccessAction *)self replicaClientIdentifier];
  if (v8)
  {
    v9 = [(TCCDSyncClientAccessAction *)self replicaClientIdentifier];
    v10 = [NSString stringWithFormat:@"%@-%@-%@-%@", v4, v5, v7, v9];
  }

  else
  {
    v10 = [NSString stringWithFormat:@"%@-%@-%@-%@", v4, v5, v7, &stru_1000A7240];
  }

  if (v6)
  {
  }

  return v10;
}

@end