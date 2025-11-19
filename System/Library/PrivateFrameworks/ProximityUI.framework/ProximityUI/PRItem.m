@interface PRItem
- (PRItem)initWithUUID:(id)a3 productUUID:(id)a4 isOwned:(BOOL)a5;
- (PRItem)initWithUUID:(id)a3 productUUID:(id)a4 isOwned:(BOOL)a5 requiresLowerRangingFrequency:(BOOL)a6;
@end

@implementation PRItem

- (PRItem)initWithUUID:(id)a3 productUUID:(id)a4 isOwned:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PRItem;
  v11 = [(PRItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_uuid, a3);
    objc_storeStrong(&v12->_productUUID, a4);
    v12->_isOwned = a5;
    v12->_requiresLowerRangingFrequency = 0;
  }

  return v12;
}

- (PRItem)initWithUUID:(id)a3 productUUID:(id)a4 isOwned:(BOOL)a5 requiresLowerRangingFrequency:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = PRItem;
  v13 = [(PRItem *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_uuid, a3);
    objc_storeStrong(&v14->_productUUID, a4);
    v14->_isOwned = a5;
    v14->_requiresLowerRangingFrequency = a6;
  }

  return v14;
}

@end