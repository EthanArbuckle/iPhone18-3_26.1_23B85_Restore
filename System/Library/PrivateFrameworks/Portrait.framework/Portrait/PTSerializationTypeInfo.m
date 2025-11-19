@interface PTSerializationTypeInfo
- (PTSerializationTypeInfo)initWithType:(unsigned int)a3 providerClass:(Class)a4;
@end

@implementation PTSerializationTypeInfo

- (PTSerializationTypeInfo)initWithType:(unsigned int)a3 providerClass:(Class)a4
{
  v9.receiver = self;
  v9.super_class = PTSerializationTypeInfo;
  v6 = [(PTSerializationTypeInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = a3;
    objc_storeStrong(&v6->_providerClass, a4);
  }

  return v7;
}

@end