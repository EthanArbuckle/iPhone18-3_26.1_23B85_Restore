@interface PSIAsset
- (PSIAsset)initWithUUID:(id)a3 creationDate:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PSIAsset

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PSIAsset;
  v4 = [(PSIObject *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 5, self->_creationDate);
  return v4;
}

- (PSIAsset)initWithUUID:(id)a3 creationDate:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PSIAsset;
  v8 = [(PSIObject *)&v11 initWithUUID:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_creationDate, a4);
  }

  return v9;
}

@end