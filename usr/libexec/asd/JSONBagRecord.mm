@interface JSONBagRecord
- (JSONBagRecord)initWithBagID:(id)d bag:(id)bag updatedAt:(id)at;
@end

@implementation JSONBagRecord

- (JSONBagRecord)initWithBagID:(id)d bag:(id)bag updatedAt:(id)at
{
  dCopy = d;
  bagCopy = bag;
  atCopy = at;
  v18.receiver = self;
  v18.super_class = JSONBagRecord;
  v11 = [(JSONBagRecord *)&v18 init];
  bagID = v11->_bagID;
  v11->_bagID = dCopy;
  v13 = dCopy;

  bag = v11->_bag;
  v11->_bag = bagCopy;
  v15 = bagCopy;

  updatedAt = v11->_updatedAt;
  v11->_updatedAt = atCopy;

  return v11;
}

@end