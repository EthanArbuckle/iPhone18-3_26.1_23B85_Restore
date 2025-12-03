@interface SKDCSItemRecord
- (SKDCSItemRecord)initWithUniqueID:(id)d bundleID:(id)iD attributes:(id)attributes;
- (uint64_t)bundleID;
- (uint64_t)uniqueID;
@end

@implementation SKDCSItemRecord

- (SKDCSItemRecord)initWithUniqueID:(id)d bundleID:(id)iD attributes:(id)attributes
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = SKDCSItemRecord;
  v11 = [(SKDBaseRecord *)&v14 initWithAttributes:attributes];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_uniqueID, d);
    objc_storeStrong(&v12->_bundleID, iD);
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