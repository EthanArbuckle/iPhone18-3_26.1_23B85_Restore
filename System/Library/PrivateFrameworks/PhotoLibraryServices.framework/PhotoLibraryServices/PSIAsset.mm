@interface PSIAsset
- (PSIAsset)initWithUUID:(id)d creationDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PSIAsset

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PSIAsset;
  v4 = [(PSIObject *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 5, self->_creationDate);
  return v4;
}

- (PSIAsset)initWithUUID:(id)d creationDate:(id)date
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = PSIAsset;
  v8 = [(PSIObject *)&v11 initWithUUID:d];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_creationDate, date);
  }

  return v9;
}

@end