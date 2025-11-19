@interface PSGOperationalPredictedItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToItem:(id)a3;
- (PSGOperationalPredictedItem)initWithCoder:(id)a3;
- (PSGOperationalPredictedItem)initWithItemIdentifier:(id)a3 value:(id)a4 bundleIdentifier:(id)a5 operationData:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PSGOperationalPredictedItem *)self isEqualToItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToItem:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = self->_itemIdentifier;
  v6 = v5;
  if (v5 == v4[1])
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
  if (v8 == v4[2])
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
  if (v11 == v4[3])
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
  if (v15 == v4[4])
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

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v5 = objc_opt_new();
  if (v5)
  {
    v6 = [(NSString *)self->_itemIdentifier copyWithZone:a3];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(NSString *)self->_value copyWithZone:a3];
    v9 = v5[2];
    v5[2] = v8;

    v10 = [(NSString *)self->_bundleIdentifier copyWithZone:a3];
    v11 = v5[3];
    v5[3] = v10;

    v12 = [(NSDictionary *)self->_operationData copyWithZone:a3];
    v13 = v5[4];
    v5[4] = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  itemIdentifier = self->_itemIdentifier;
  v5 = a3;
  [v5 encodeObject:itemIdentifier forKey:@"iid"];
  [v5 encodeObject:self->_value forKey:@"val"];
  [v5 encodeObject:self->_bundleIdentifier forKey:@"bid"];
  [v5 encodeObject:self->_operationData forKey:@"opd"];
}

- (PSGOperationalPredictedItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"iid"];
  v7 = [v4 decodeObjectOfClass:v5 forKey:@"val"];
  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc(MEMORY[0x277CBEB98]);
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 initWithObjects:{v5, v10, v11, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v8);
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"opd"];

  v14 = 0;
  if (v6 && v7 && v13)
  {
    v15 = [v4 decodeObjectOfClass:v5 forKey:@"bid"];
    self = [(PSGOperationalPredictedItem *)self initWithItemIdentifier:v6 value:v7 bundleIdentifier:v15 operationData:v13];

    v14 = self;
  }

  return v14;
}

- (PSGOperationalPredictedItem)initWithItemIdentifier:(id)a3 value:(id)a4 bundleIdentifier:(id)a5 operationData:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = PSGOperationalPredictedItem;
  v15 = [(PSGOperationalPredictedItem *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_itemIdentifier, a3);
    objc_storeStrong(&v16->_value, a4);
    objc_storeStrong(&v16->_bundleIdentifier, a5);
    objc_storeStrong(&v16->_operationData, a6);
  }

  return v16;
}

@end