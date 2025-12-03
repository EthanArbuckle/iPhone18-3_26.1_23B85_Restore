@interface PRItem
- (PRItem)initWithUUID:(id)d productUUID:(id)iD isOwned:(BOOL)owned;
- (PRItem)initWithUUID:(id)d productUUID:(id)iD isOwned:(BOOL)owned requiresLowerRangingFrequency:(BOOL)frequency;
@end

@implementation PRItem

- (PRItem)initWithUUID:(id)d productUUID:(id)iD isOwned:(BOOL)owned
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = PRItem;
  v11 = [(PRItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_uuid, d);
    objc_storeStrong(&v12->_productUUID, iD);
    v12->_isOwned = owned;
    v12->_requiresLowerRangingFrequency = 0;
  }

  return v12;
}

- (PRItem)initWithUUID:(id)d productUUID:(id)iD isOwned:(BOOL)owned requiresLowerRangingFrequency:(BOOL)frequency
{
  dCopy = d;
  iDCopy = iD;
  v16.receiver = self;
  v16.super_class = PRItem;
  v13 = [(PRItem *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_uuid, d);
    objc_storeStrong(&v14->_productUUID, iD);
    v14->_isOwned = owned;
    v14->_requiresLowerRangingFrequency = frequency;
  }

  return v14;
}

@end