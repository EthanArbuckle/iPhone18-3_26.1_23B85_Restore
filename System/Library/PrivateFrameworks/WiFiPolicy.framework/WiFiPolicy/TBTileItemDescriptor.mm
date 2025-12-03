@interface TBTileItemDescriptor
+ (id)tileItemDescriptorWithKey:(id)key;
- (TBTileItemDescriptor)initWithKey:(id)key etag:(id)etag;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TBTileItemDescriptor

+ (id)tileItemDescriptorWithKey:(id)key
{
  keyCopy = key;
  v5 = [[self alloc] initWithKey:keyCopy etag:0];

  return v5;
}

- (TBTileItemDescriptor)initWithKey:(id)key etag:(id)etag
{
  keyCopy = key;
  etagCopy = etag;
  v13.receiver = self;
  v13.super_class = TBTileItemDescriptor;
  v8 = [(TBTileItemDescriptor *)&v13 init];
  key = v8->_key;
  v8->_key = keyCopy;
  v10 = keyCopy;

  etag = v8->_etag;
  v8->_etag = etagCopy;

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  etag = [(TBTileItemDescriptor *)self etag];
  v7 = [etag copyWithZone:zone];
  [v5 setEtag:v7];

  v8 = [(TBTileItemDescriptor *)self key];
  v9 = [v8 copyWithZone:zone];
  [v5 setKey:v9];

  return v5;
}

@end