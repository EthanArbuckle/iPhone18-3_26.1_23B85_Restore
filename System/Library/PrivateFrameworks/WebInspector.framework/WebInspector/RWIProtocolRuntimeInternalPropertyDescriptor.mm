@interface RWIProtocolRuntimeInternalPropertyDescriptor
- (NSString)name;
- (RWIProtocolRuntimeInternalPropertyDescriptor)initWithName:(id)name;
- (RWIProtocolRuntimeRemoteObject)value;
- (void)setName:(id)name;
- (void)setValue:(id)value;
@end

@implementation RWIProtocolRuntimeInternalPropertyDescriptor

- (RWIProtocolRuntimeInternalPropertyDescriptor)initWithName:(id)name
{
  nameCopy = name;
  v8.receiver = self;
  v8.super_class = RWIProtocolRuntimeInternalPropertyDescriptor;
  v5 = [(RWIProtocolJSONObject *)&v8 init];
  if (v5)
  {
    if (!nameCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"name"}];
    }

    [(RWIProtocolRuntimeInternalPropertyDescriptor *)v5 setName:nameCopy];
    v6 = v5;
  }

  return v5;
}

- (void)setName:(id)name
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeInternalPropertyDescriptor;
  [(RWIProtocolJSONObject *)&v3 setString:name forKey:@"name"];
}

- (NSString)name
{
  v4.receiver = self;
  v4.super_class = RWIProtocolRuntimeInternalPropertyDescriptor;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"name"];

  return v2;
}

- (void)setValue:(id)value
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeInternalPropertyDescriptor;
  [(RWIProtocolJSONObject *)&v3 setObject:value forKey:@"value"];
}

- (RWIProtocolRuntimeRemoteObject)value
{
  v14.receiver = self;
  v14.super_class = RWIProtocolRuntimeInternalPropertyDescriptor;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"value"];
  if (v3)
  {
    v4 = [RWIProtocolRuntimeRemoteObject alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolRuntimeInternalPropertyDescriptor;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"value"];
    [v5 toJSONObject];
    v6 = v12;
    ++*v12;
    v13 = v6;
    v7 = [(RWIProtocolJSONObject *)v4 initWithJSONObject:&v13];
    v8 = v13;
    v13 = 0;
    if (v8)
    {
      if (*v8 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v8;
      }
    }

    v9 = v12;
    v12 = 0;
    if (v9)
    {
      if (*v9 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v9;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end