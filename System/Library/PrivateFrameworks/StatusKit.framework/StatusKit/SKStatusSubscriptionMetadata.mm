@interface SKStatusSubscriptionMetadata
- (SKStatusSubscriptionMetadata)initWithCoder:(id)coder;
- (SKStatusSubscriptionMetadata)initWithSubscriptionIdentifier:(id)identifier statusTypeIdentifier:(id)typeIdentifier isPersonalStatusSubscription:(BOOL)subscription currentStatus:(id)status ownerHandles:(id)handles;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKStatusSubscriptionMetadata

- (SKStatusSubscriptionMetadata)initWithSubscriptionIdentifier:(id)identifier statusTypeIdentifier:(id)typeIdentifier isPersonalStatusSubscription:(BOOL)subscription currentStatus:(id)status ownerHandles:(id)handles
{
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  statusCopy = status;
  handlesCopy = handles;
  v24.receiver = self;
  v24.super_class = SKStatusSubscriptionMetadata;
  v16 = [(SKStatusSubscriptionMetadata *)&v24 init];
  if (v16)
  {
    v17 = [identifierCopy copy];
    subscriptionIdentifier = v16->_subscriptionIdentifier;
    v16->_subscriptionIdentifier = v17;

    v19 = [typeIdentifierCopy copy];
    statusTypeIdentifier = v16->_statusTypeIdentifier;
    v16->_statusTypeIdentifier = v19;

    v16->_personalStatusSubscription = subscription;
    objc_storeStrong(&v16->_currentStatus, status);
    v21 = [handlesCopy copy];
    ownerHandles = v16->_ownerHandles;
    v16->_ownerHandles = v21;
  }

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  subscriptionIdentifier = self->_subscriptionIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:subscriptionIdentifier forKey:@"subscriptionIdentifier"];
  [coderCopy encodeObject:self->_statusTypeIdentifier forKey:@"statusTypeIdentifier"];
  [coderCopy encodeBool:self->_personalStatusSubscription forKey:@"isPersonalStatusSubscription"];
  [coderCopy encodeObject:self->_currentStatus forKey:@"currentStatus"];
  [coderCopy encodeObject:self->_ownerHandles forKey:@"ownerHandles"];
}

- (SKStatusSubscriptionMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subscriptionIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statusTypeIdentifier"];
  v7 = [coderCopy decodeBoolForKey:@"isPersonalStatusSubscription"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentStatus"];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"ownerHandles"];

  v13 = [(SKStatusSubscriptionMetadata *)self initWithSubscriptionIdentifier:v5 statusTypeIdentifier:v6 isPersonalStatusSubscription:v7 currentStatus:v8 ownerHandles:v12];
  return v13;
}

- (id)description
{
  personalStatusSubscription = self->_personalStatusSubscription;
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  subscriptionIdentifier = [(SKStatusSubscriptionMetadata *)self subscriptionIdentifier];
  if (personalStatusSubscription)
  {
    currentStatus = [(SKStatusSubscriptionMetadata *)self currentStatus];
    v8 = [v4 stringWithFormat:@"<%@: %p subscriptionID = %@; personal = YES; status = %@>", v5, self, subscriptionIdentifier, currentStatus];;
  }

  else
  {
    currentStatus = [(SKStatusSubscriptionMetadata *)self ownerHandles];
    currentStatus2 = [(SKStatusSubscriptionMetadata *)self currentStatus];
    v8 = [v4 stringWithFormat:@"<%@: %p subscriptionID = %@; owners = %@; status = %@>", v5, self, subscriptionIdentifier, currentStatus, currentStatus2];;
  }

  return v8;
}

@end