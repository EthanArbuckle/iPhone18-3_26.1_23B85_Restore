@interface SKDCSItemRecord
- (SKDCSItemRecord)initWithUniqueID:(id)a3 bundleID:(id)a4 attributes:(id)a5;
- (uint64_t)bundleID;
- (uint64_t)uniqueID;
@end

@implementation SKDCSItemRecord

- (SKDCSItemRecord)initWithUniqueID:(id)a3 bundleID:(id)a4 attributes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = SKDCSItemRecord;
  v11 = [(SKDBaseRecord *)&v14 initWithAttributes:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_uniqueID, a3);
    objc_storeStrong(&v12->_bundleID, a4);
  }

  return v12;
}

- (uint64_t)uniqueID
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)bundleID
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

@end