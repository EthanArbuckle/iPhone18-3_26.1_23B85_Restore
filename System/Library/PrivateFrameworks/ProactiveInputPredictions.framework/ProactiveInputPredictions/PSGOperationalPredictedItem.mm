@interface PSGOperationalPredictedItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToItem:(id)item;
- (PSGOperationalPredictedItem)initWithCoder:(id)coder;
- (PSGOperationalPredictedItem)initWithItemIdentifier:(id)identifier value:(id)value bundleIdentifier:(id)bundleIdentifier operationData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSGOperationalPredictedItem

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<PSGOperationalPredictedItem iid:%@ val:%@ bid:%@ opd:%@>", self->_itemIdentifier, self->_value, self->_bundleIdentifier, self->_operationData];

  return v2;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_itemIdentifier hash];
  v4 = [(NSString *)self->_value hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_bundleIdentifier hash]- v4 + 32 * v4;
  return [(NSDictionary *)self->_operationData hash]- v5 + 32 * v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PSGOperationalPredictedItem *)self isEqualToItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    goto LABEL_12;
  }

  v5 = self->_itemIdentifier;
  v6 = v5;
  if (v5 == itemCopy[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v8 = self->_value;
  v9 = v8;
  if (v8 == itemCopy[2])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v11 = self->_bundleIdentifier;
  v12 = v11;
  if (v11 == itemCopy[3])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
LABEL_12:
      v14 = 0;
      goto LABEL_18;
    }
  }

  v15 = self->_operationData;
  v16 = v15;
  if (v15 == itemCopy[4])
  {
    v14 = 1;
  }

  else
  {
    v14 = [(NSDictionary *)v15 isEqual:?];
  }

LABEL_18:
  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v5 = objc_opt_new();
  if (v5)
  {
    v6 = [(NSString *)self->_itemIdentifier copyWithZone:zone];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(NSString *)self->_value copyWithZone:zone];
    v9 = v5[2];
    v5[2] = v8;

    v10 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
    v11 = v5[3];
    v5[3] = v10;

    v12 = [(NSDictionary *)self->_operationData copyWithZone:zone];
    v13 = v5[4];
    v5[4] = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  itemIdentifier = self->_itemIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:itemIdentifier forKey:@"iid"];
  [coderCopy encodeObject:self->_value forKey:@"val"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bid"];
  [coderCopy encodeObject:self->_operationData forKey:@"opd"];
}

- (PSGOperationalPredictedItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"iid"];
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:@"val"];
  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc(MEMORY[0x277CBEB98]);
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 initWithObjects:{v5, v10, v11, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v8);
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"opd"];

  selfCopy = 0;
  if (v6 && v7 && v13)
  {
    v15 = [coderCopy decodeObjectOfClass:v5 forKey:@"bid"];
    self = [(PSGOperationalPredictedItem *)self initWithItemIdentifier:v6 value:v7 bundleIdentifier:v15 operationData:v13];

    selfCopy = self;
  }

  return selfCopy;
}

- (PSGOperationalPredictedItem)initWithItemIdentifier:(id)identifier value:(id)value bundleIdentifier:(id)bundleIdentifier operationData:(id)data
{
  identifierCopy = identifier;
  valueCopy = value;
  bundleIdentifierCopy = bundleIdentifier;
  dataCopy = data;
  v18.receiver = self;
  v18.super_class = PSGOperationalPredictedItem;
  v15 = [(PSGOperationalPredictedItem *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_itemIdentifier, identifier);
    objc_storeStrong(&v16->_value, value);
    objc_storeStrong(&v16->_bundleIdentifier, bundleIdentifier);
    objc_storeStrong(&v16->_operationData, data);
  }

  return v16;
}

@end