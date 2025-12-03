@interface SSPurchaseHistoryItem
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SSPurchaseHistoryItem)initWithXPCEncoding:(id)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (id)valueForProperty:(id)property;
- (void)dealloc;
- (void)setValue:(id)value forProperty:(id)property;
@end

@implementation SSPurchaseHistoryItem

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSPurchaseHistoryItem;
  [(SSPurchaseHistoryItem *)&v3 dealloc];
}

- (void)setValue:(id)value forProperty:(id)property
{
  valueCopy = value;
  if ([value conformsToProtocol:&unk_1F507D4B0])
  {

    v7 = [value copy];
  }

  else
  {
    v7 = valueCopy;
  }

  properties = self->_properties;
  v10 = v7;
  if (properties)
  {
    if (v7)
    {
LABEL_6:
      [(NSMutableDictionary *)properties setObject:v7 forKey:property];
      goto LABEL_9;
    }
  }

  else
  {
    properties = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = v10;
    self->_properties = properties;
    if (v10)
    {
      goto LABEL_6;
    }
  }

  [(NSMutableDictionary *)properties removeObjectForKey:property];
LABEL_9:
}

- (id)valueForProperty:(id)property
{
  v3 = [(NSMutableDictionary *)self->_properties objectForKey:property];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = [(NSMutableDictionary *)self->_properties mutableCopyWithZone:zone];
  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_properties);
  return v3;
}

- (SSPurchaseHistoryItem)initWithXPCEncoding:(id)encoding
{
  if (encoding && MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
  {
    v8.receiver = self;
    v8.super_class = SSPurchaseHistoryItem;
    v5 = [(SSPurchaseHistoryItem *)&v8 init];
    if (v5)
    {
      objc_opt_class();
      v7 = SSXPCDictionaryCopyCFObjectWithClass(encoding, "0");

      v5->_properties = [(__CFArray *)v7 mutableCopy];
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (NSString)description
{
  v3.receiver = self;
  v3.super_class = SSPurchaseHistoryItem;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", -[SSPurchaseHistoryItem description](&v3, sel_description), self->_properties];
}

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  properties = self->_properties;
  if (properties == *(equal + 1))
  {
    return 1;
  }

  return [(NSMutableDictionary *)properties isEqualToDictionary:?];
}

@end