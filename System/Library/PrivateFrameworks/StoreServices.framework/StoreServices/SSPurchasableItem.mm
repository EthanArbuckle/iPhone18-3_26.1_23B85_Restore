@interface SSPurchasableItem
+ (id)allPropertyKeys;
- (BOOL)isHidden;
- (SSPurchasableItem)initWithPropertyValues:(id)values;
- (id)datePurchased;
- (id)description;
- (id)propertyValues;
- (int64_t)accountUniqueIdentifier;
- (int64_t)pid;
- (int64_t)storeID;
- (void)dealloc;
@end

@implementation SSPurchasableItem

- (SSPurchasableItem)initWithPropertyValues:(id)values
{
  v4 = [(SSPurchasableItem *)self init];
  if (v4)
  {
    v4->_propertyValues = [values copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSPurchasableItem;
  [(SSPurchasableItem *)&v3 dealloc];
}

- (id)propertyValues
{
  v2 = self->_propertyValues;

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@:%p> [PID: %lld] [Account: %lld] [StoreID: %lld]", NSStringFromClass(v4), self, -[SSPurchasableItem pid](self, "pid"), -[SSPurchasableItem accountUniqueIdentifier](self, "accountUniqueIdentifier"), -[SSPurchasableItem storeID](self, "storeID")];
}

- (int64_t)pid
{
  v2 = [(NSDictionary *)self->_propertyValues objectForKey:SSPurchasableItemPID];

  return [v2 longLongValue];
}

- (int64_t)accountUniqueIdentifier
{
  v2 = [(NSDictionary *)self->_propertyValues objectForKey:SSPurchasableItemAccountUniqueIdentifier];

  return [v2 longLongValue];
}

- (id)datePurchased
{
  v2 = MEMORY[0x1E695DF00];
  v3 = [-[NSDictionary objectForKey:](self->_propertyValues objectForKey:{SSPurchasableItemDatePurchased), "longLongValue"}];

  return [v2 dateWithTimeIntervalSinceReferenceDate:v3];
}

- (BOOL)isHidden
{
  v2 = [(NSDictionary *)self->_propertyValues objectForKey:SSPurchasableItemIsHidden];

  return [v2 BOOLValue];
}

- (int64_t)storeID
{
  v2 = [(NSDictionary *)self->_propertyValues objectForKey:SSPurchasableItemStoreID];

  return [v2 longLongValue];
}

+ (id)allPropertyKeys
{
  if (allPropertyKeys_onceToken != -1)
  {
    +[SSPurchasableItem allPropertyKeys];
  }

  return allPropertyKeys___allPropertyKeys;
}

uint64_t __36__SSPurchasableItem_allPropertyKeys__block_invoke()
{
  v1[5] = *MEMORY[0x1E69E9840];
  v1[0] = SSPurchasableItemPID;
  v1[1] = SSPurchasableItemAccountUniqueIdentifier;
  v1[2] = SSPurchasableItemDatePurchased;
  v1[3] = SSPurchasableItemIsHidden;
  v1[4] = SSPurchasableItemStoreID;
  result = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v1 count:5];
  allPropertyKeys___allPropertyKeys = result;
  return result;
}

@end