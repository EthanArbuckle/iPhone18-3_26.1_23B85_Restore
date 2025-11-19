@interface SSPurchaseHistoryItem
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SSPurchaseHistoryItem)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (id)valueForProperty:(id)a3;
- (void)dealloc;
- (void)setValue:(id)a3 forProperty:(id)a4;
@end

@implementation SSPurchaseHistoryItem

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSPurchaseHistoryItem;
  [(SSPurchaseHistoryItem *)&v3 dealloc];
}

- (void)setValue:(id)a3 forProperty:(id)a4
{
  v9 = a3;
  if ([a3 conformsToProtocol:&unk_1F507D4B0])
  {

    v7 = [a3 copy];
  }

  else
  {
    v7 = v9;
  }

  properties = self->_properties;
  v10 = v7;
  if (properties)
  {
    if (v7)
    {
LABEL_6:
      [(NSMutableDictionary *)properties setObject:v7 forKey:a4];
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

  [(NSMutableDictionary *)properties removeObjectForKey:a4];
LABEL_9:
}

- (id)valueForProperty:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_properties objectForKey:a3];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = [(NSMutableDictionary *)self->_properties mutableCopyWithZone:a3];
  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_properties);
  return v3;
}

- (SSPurchaseHistoryItem)initWithXPCEncoding:(id)a3
{
  if (a3 && MEMORY[0x1DA6E0380](a3, a2) == MEMORY[0x1E69E9E80])
  {
    v8.receiver = self;
    v8.super_class = SSPurchaseHistoryItem;
    v5 = [(SSPurchaseHistoryItem *)&v8 init];
    if (v5)
    {
      objc_opt_class();
      v7 = SSXPCDictionaryCopyCFObjectWithClass(a3, "0");

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

- (BOOL)isEqual:(id)a3
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  properties = self->_properties;
  if (properties == *(a3 + 1))
  {
    return 1;
  }

  return [(NSMutableDictionary *)properties isEqualToDictionary:?];
}

@end