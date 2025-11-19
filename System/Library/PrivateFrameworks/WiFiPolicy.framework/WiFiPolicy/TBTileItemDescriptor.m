@interface TBTileItemDescriptor
+ (id)tileItemDescriptorWithKey:(id)a3;
- (TBTileItemDescriptor)initWithKey:(id)a3 etag:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TBTileItemDescriptor

+ (id)tileItemDescriptorWithKey:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithKey:v4 etag:0];

  return v5;
}

- (TBTileItemDescriptor)initWithKey:(id)a3 etag:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = TBTileItemDescriptor;
  v8 = [(TBTileItemDescriptor *)&v13 init];
  key = v8->_key;
  v8->_key = v6;
  v10 = v6;

  etag = v8->_etag;
  v8->_etag = v7;

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(TBTileItemDescriptor *)self etag];
  v7 = [v6 copyWithZone:a3];
  [v5 setEtag:v7];

  v8 = [(TBTileItemDescriptor *)self key];
  v9 = [v8 copyWithZone:a3];
  [v5 setKey:v9];

  return v5;
}

@end