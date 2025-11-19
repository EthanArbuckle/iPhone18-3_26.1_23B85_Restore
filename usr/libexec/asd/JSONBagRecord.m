@interface JSONBagRecord
- (JSONBagRecord)initWithBagID:(id)a3 bag:(id)a4 updatedAt:(id)a5;
@end

@implementation JSONBagRecord

- (JSONBagRecord)initWithBagID:(id)a3 bag:(id)a4 updatedAt:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = JSONBagRecord;
  v11 = [(JSONBagRecord *)&v18 init];
  bagID = v11->_bagID;
  v11->_bagID = v8;
  v13 = v8;

  bag = v11->_bag;
  v11->_bag = v9;
  v15 = v9;

  updatedAt = v11->_updatedAt;
  v11->_updatedAt = v10;

  return v11;
}

@end