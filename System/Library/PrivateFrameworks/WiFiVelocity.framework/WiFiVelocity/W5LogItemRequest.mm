@interface W5LogItemRequest
+ (W5LogItemRequest)requestWithItemID:(int64_t)d configuration:(id)configuration;
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLogItemRequest:(id)request;
- (W5LogItemRequest)init;
- (W5LogItemRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setConfiguration:(id)configuration;
@end

@implementation W5LogItemRequest

- (W5LogItemRequest)init
{
  v4.receiver = self;
  v4.super_class = W5LogItemRequest;
  v2 = [(W5LogItemRequest *)&v4 init];
  if (v2)
  {
    v2->_uuid = [objc_msgSend(MEMORY[0x277CCAD78] "UUID")];
  }

  return v2;
}

+ (W5LogItemRequest)requestWithItemID:(int64_t)d configuration:(id)configuration
{
  v6 = objc_alloc_init(W5LogItemRequest);
  [(W5LogItemRequest *)v6 setItemID:d];
  [(W5LogItemRequest *)v6 setConfiguration:configuration];
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = W5LogItemRequest;
  [(W5LogItemRequest *)&v3 dealloc];
}

- (void)setConfiguration:(id)configuration
{
  configuration = self->_configuration;
  if (configuration != configuration)
  {

    self->_configuration = 0;
    if (configuration)
    {
      v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:configuration requiringSecureCoding:1 error:0];
      if (v6)
      {
        v7 = v6;
        v16 = MEMORY[0x277CCAAC8];
        v8 = MEMORY[0x277CBEB98];
        v9 = objc_opt_class();
        v10 = objc_opt_class();
        v11 = objc_opt_class();
        v12 = objc_opt_class();
        v13 = objc_opt_class();
        v14 = objc_opt_class();
        v15 = objc_opt_class();
        self->_configuration = [v16 unarchivedObjectOfClasses:objc_msgSend(v8 fromData:"setWithObjects:" error:{v9, v10, v11, v12, v13, v14, v15, objc_opt_class(), 0), v7, 0}];
      }
    }
  }
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  [v3 appendFormat:@"Name: %@ (%ld)\n", W5DescriptionForLogItemID(self->_itemID), self->_itemID];
  [v3 appendFormat:@"Configuration: %@\n", self->_configuration];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  v5.receiver = self;
  v5.super_class = W5LogItemRequest;
  if (-[W5LogItemRequest conformsToProtocol:](&v5, sel_conformsToProtocol_) || ([protocol isEqual:&unk_288343878] & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [protocol isEqual:&unk_2883436F0];
  }
}

- (BOOL)isEqualToLogItemRequest:(id)request
{
  uuid = self->_uuid;
  uuid = [request uuid];

  return [(NSUUID *)uuid isEqual:uuid];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(W5LogItemRequest *)self isEqualToLogItemRequest:equal];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[W5LogItemRequest allocWithZone:?]];
  [(W5LogItemRequest *)v4 setItemID:self->_itemID];
  [(W5LogItemRequest *)v4 setConfiguration:self->_configuration];
  [(W5LogItemRequest *)v4 setUuid:self->_uuid];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInteger:self->_itemID forKey:@"_itemID"];
  [coder encodeObject:self->_configuration forKey:@"_configuration"];
  uuid = self->_uuid;

  [coder encodeObject:uuid forKey:@"_uuid"];
}

- (W5LogItemRequest)initWithCoder:(id)coder
{
  v14.receiver = self;
  v14.super_class = W5LogItemRequest;
  v4 = [(W5LogItemRequest *)&v14 init];
  if (v4)
  {
    v4->_itemID = [coder decodeIntegerForKey:@"_itemID"];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v4->_configuration = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0), @"_configuration", "copy"}];
    v4->_uuid = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"_uuid", "copy"}];
  }

  return v4;
}

@end