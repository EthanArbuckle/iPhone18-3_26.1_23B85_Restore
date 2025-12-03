@interface PTSerializationTypeInfo
- (PTSerializationTypeInfo)initWithType:(unsigned int)type providerClass:(Class)class;
@end

@implementation PTSerializationTypeInfo

- (PTSerializationTypeInfo)initWithType:(unsigned int)type providerClass:(Class)class
{
  v9.receiver = self;
  v9.super_class = PTSerializationTypeInfo;
  v6 = [(PTSerializationTypeInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = type;
    objc_storeStrong(&v6->_providerClass, class);
  }

  return v7;
}

@end