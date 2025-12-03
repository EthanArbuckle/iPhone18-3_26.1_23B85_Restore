@interface ICRadioStoreContentReference
- (ICRadioStoreContentReference)initWithCoder:(id)coder;
- (ICRadioStoreContentReference)initWithStoreIdentifier:(id)identifier;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)matchDictionaryWithSubscriptionStatus:(id)status;
- (id)rawContentDictionaryWithSubscriptionStatus:(id)status;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICRadioStoreContentReference

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ICRadioStoreContentReference;
  coderCopy = coder;
  [(ICRadioContentReference *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_storeIdentifier forKey:{@"id", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_containerID forKey:@"containerID"];
}

- (ICRadioStoreContentReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ICRadioStoreContentReference;
  v5 = [(ICRadioContentReference *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerID"];
    containerID = v5->_containerID;
    v5->_containerID = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = ICRadioStoreContentReference;
  v5 = [(ICRadioContentReference *)&v11 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSNumber *)self->_storeIdentifier copyWithZone:zone];
    v7 = v5[2];
    v5[2] = v6;

    v8 = [(NSString *)self->_containerID copyWithZone:zone];
    v9 = v5[1];
    v5[1] = v8;
  }

  return v5;
}

- (id)rawContentDictionaryWithSubscriptionStatus:(id)status
{
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  [v4 setObject:self->_storeIdentifier forKeyedSubscript:@"id"];
  if ([(NSString *)self->_containerID length])
  {
    [v4 setObject:self->_containerID forKeyedSubscript:@"container-id"];
  }

  v5 = [v4 copy];

  return v5;
}

- (id)matchDictionaryWithSubscriptionStatus:(id)status
{
  v4 = MEMORY[0x1E695DF90];
  statusCopy = status;
  v6 = [v4 dictionaryWithCapacity:1];
  v7 = [(ICRadioStoreContentReference *)self rawContentDictionaryWithSubscriptionStatus:statusCopy];

  [v6 setObject:v7 forKey:@"store"];

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  storeIdentifier = [(ICRadioStoreContentReference *)self storeIdentifier];
  v5 = [v3 stringWithFormat:@"<ICRadioStoreContentReference: %p adamID=%@>", self, storeIdentifier];

  return v5;
}

- (ICRadioStoreContentReference)initWithStoreIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = ICRadioStoreContentReference;
  v5 = [(ICRadioStoreContentReference *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v6;
  }

  return v5;
}

@end