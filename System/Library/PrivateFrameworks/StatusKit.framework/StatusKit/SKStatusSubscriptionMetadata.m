@interface SKStatusSubscriptionMetadata
- (SKStatusSubscriptionMetadata)initWithCoder:(id)a3;
- (SKStatusSubscriptionMetadata)initWithSubscriptionIdentifier:(id)a3 statusTypeIdentifier:(id)a4 isPersonalStatusSubscription:(BOOL)a5 currentStatus:(id)a6 ownerHandles:(id)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKStatusSubscriptionMetadata

- (SKStatusSubscriptionMetadata)initWithSubscriptionIdentifier:(id)a3 statusTypeIdentifier:(id)a4 isPersonalStatusSubscription:(BOOL)a5 currentStatus:(id)a6 ownerHandles:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v24.receiver = self;
  v24.super_class = SKStatusSubscriptionMetadata;
  v16 = [(SKStatusSubscriptionMetadata *)&v24 init];
  if (v16)
  {
    v17 = [v12 copy];
    subscriptionIdentifier = v16->_subscriptionIdentifier;
    v16->_subscriptionIdentifier = v17;

    v19 = [v13 copy];
    statusTypeIdentifier = v16->_statusTypeIdentifier;
    v16->_statusTypeIdentifier = v19;

    v16->_personalStatusSubscription = a5;
    objc_storeStrong(&v16->_currentStatus, a6);
    v21 = [v15 copy];
    ownerHandles = v16->_ownerHandles;
    v16->_ownerHandles = v21;
  }

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  subscriptionIdentifier = self->_subscriptionIdentifier;
  v5 = a3;
  [v5 encodeObject:subscriptionIdentifier forKey:@"subscriptionIdentifier"];
  [v5 encodeObject:self->_statusTypeIdentifier forKey:@"statusTypeIdentifier"];
  [v5 encodeBool:self->_personalStatusSubscription forKey:@"isPersonalStatusSubscription"];
  [v5 encodeObject:self->_currentStatus forKey:@"currentStatus"];
  [v5 encodeObject:self->_ownerHandles forKey:@"ownerHandles"];
}

- (SKStatusSubscriptionMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subscriptionIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statusTypeIdentifier"];
  v7 = [v4 decodeBoolForKey:@"isPersonalStatusSubscription"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentStatus"];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"ownerHandles"];

  v13 = [(SKStatusSubscriptionMetadata *)self initWithSubscriptionIdentifier:v5 statusTypeIdentifier:v6 isPersonalStatusSubscription:v7 currentStatus:v8 ownerHandles:v12];
  return v13;
}

- (id)description
{
  personalStatusSubscription = self->_personalStatusSubscription;
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = [(SKStatusSubscriptionMetadata *)self subscriptionIdentifier];
  if (personalStatusSubscription)
  {
    v7 = [(SKStatusSubscriptionMetadata *)self currentStatus];
    v8 = [v4 stringWithFormat:@"<%@: %p subscriptionID = %@; personal = YES; status = %@>", v5, self, v6, v7];;
  }

  else
  {
    v7 = [(SKStatusSubscriptionMetadata *)self ownerHandles];
    v9 = [(SKStatusSubscriptionMetadata *)self currentStatus];
    v8 = [v4 stringWithFormat:@"<%@: %p subscriptionID = %@; owners = %@; status = %@>", v5, self, v6, v7, v9];;
  }

  return v8;
}

@end