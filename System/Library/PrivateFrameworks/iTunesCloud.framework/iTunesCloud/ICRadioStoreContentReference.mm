@interface ICRadioStoreContentReference
- (ICRadioStoreContentReference)initWithCoder:(id)a3;
- (ICRadioStoreContentReference)initWithStoreIdentifier:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)matchDictionaryWithSubscriptionStatus:(id)a3;
- (id)rawContentDictionaryWithSubscriptionStatus:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICRadioStoreContentReference

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ICRadioStoreContentReference;
  v4 = a3;
  [(ICRadioContentReference *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_storeIdentifier forKey:{@"id", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_containerID forKey:@"containerID"];
}

- (ICRadioStoreContentReference)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ICRadioStoreContentReference;
  v5 = [(ICRadioContentReference *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"containerID"];
    containerID = v5->_containerID;
    v5->_containerID = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = ICRadioStoreContentReference;
  v5 = [(ICRadioContentReference *)&v11 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSNumber *)self->_storeIdentifier copyWithZone:a3];
    v7 = v5[2];
    v5[2] = v6;

    v8 = [(NSString *)self->_containerID copyWithZone:a3];
    v9 = v5[1];
    v5[1] = v8;
  }

  return v5;
}

- (id)rawContentDictionaryWithSubscriptionStatus:(id)a3
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

- (id)matchDictionaryWithSubscriptionStatus:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = [v4 dictionaryWithCapacity:1];
  v7 = [(ICRadioStoreContentReference *)self rawContentDictionaryWithSubscriptionStatus:v5];

  [v6 setObject:v7 forKey:@"store"];

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ICRadioStoreContentReference *)self storeIdentifier];
  v5 = [v3 stringWithFormat:@"<ICRadioStoreContentReference: %p adamID=%@>", self, v4];

  return v5;
}

- (ICRadioStoreContentReference)initWithStoreIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICRadioStoreContentReference;
  v5 = [(ICRadioStoreContentReference *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v6;
  }

  return v5;
}

@end