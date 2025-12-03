@interface RWIProtocolRuntimePropertyDescriptor
- (BOOL)configurable;
- (BOOL)enumerable;
- (BOOL)isOwn;
- (BOOL)isPrivate;
- (BOOL)nativeGetter;
- (BOOL)wasThrown;
- (BOOL)writable;
- (NSString)name;
- (RWIProtocolRuntimePropertyDescriptor)initWithName:(id)name;
- (RWIProtocolRuntimeRemoteObject)get;
- (RWIProtocolRuntimeRemoteObject)set;
- (RWIProtocolRuntimeRemoteObject)symbol;
- (RWIProtocolRuntimeRemoteObject)value;
- (void)setGet:(id)get;
- (void)setName:(id)name;
- (void)setSet:(id)set;
- (void)setSymbol:(id)symbol;
- (void)setValue:(id)value;
@end

@implementation RWIProtocolRuntimePropertyDescriptor

- (RWIProtocolRuntimePropertyDescriptor)initWithName:(id)name
{
  nameCopy = name;
  v8.receiver = self;
  v8.super_class = RWIProtocolRuntimePropertyDescriptor;
  v5 = [(RWIProtocolJSONObject *)&v8 init];
  if (v5)
  {
    if (!nameCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"name"}];
    }

    [(RWIProtocolRuntimePropertyDescriptor *)v5 setName:nameCopy];
    v6 = v5;
  }

  return v5;
}

- (void)setName:(id)name
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimePropertyDescriptor;
  [(RWIProtocolJSONObject *)&v3 setString:name forKey:@"name"];
}

- (NSString)name
{
  v4.receiver = self;
  v4.super_class = RWIProtocolRuntimePropertyDescriptor;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"name"];

  return v2;
}

- (void)setValue:(id)value
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimePropertyDescriptor;
  [(RWIProtocolJSONObject *)&v3 setObject:value forKey:@"value"];
}

- (RWIProtocolRuntimeRemoteObject)value
{
  v14.receiver = self;
  v14.super_class = RWIProtocolRuntimePropertyDescriptor;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"value"];
  if (v3)
  {
    v4 = [RWIProtocolRuntimeRemoteObject alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolRuntimePropertyDescriptor;
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

- (BOOL)writable
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimePropertyDescriptor;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"writable"];
}

- (void)setGet:(id)get
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimePropertyDescriptor;
  [(RWIProtocolJSONObject *)&v3 setObject:get forKey:@"get"];
}

- (RWIProtocolRuntimeRemoteObject)get
{
  v14.receiver = self;
  v14.super_class = RWIProtocolRuntimePropertyDescriptor;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"get"];
  if (v3)
  {
    v4 = [RWIProtocolRuntimeRemoteObject alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolRuntimePropertyDescriptor;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"get"];
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

- (void)setSet:(id)set
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimePropertyDescriptor;
  [(RWIProtocolJSONObject *)&v3 setObject:set forKey:@"set"];
}

- (RWIProtocolRuntimeRemoteObject)set
{
  v14.receiver = self;
  v14.super_class = RWIProtocolRuntimePropertyDescriptor;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"set"];
  if (v3)
  {
    v4 = [RWIProtocolRuntimeRemoteObject alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolRuntimePropertyDescriptor;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"set"];
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

- (BOOL)wasThrown
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimePropertyDescriptor;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"wasThrown"];
}

- (BOOL)configurable
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimePropertyDescriptor;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"configurable"];
}

- (BOOL)enumerable
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimePropertyDescriptor;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"enumerable"];
}

- (BOOL)isOwn
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimePropertyDescriptor;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isOwn"];
}

- (void)setSymbol:(id)symbol
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimePropertyDescriptor;
  [(RWIProtocolJSONObject *)&v3 setObject:symbol forKey:@"symbol"];
}

- (RWIProtocolRuntimeRemoteObject)symbol
{
  v14.receiver = self;
  v14.super_class = RWIProtocolRuntimePropertyDescriptor;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"symbol"];
  if (v3)
  {
    v4 = [RWIProtocolRuntimeRemoteObject alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolRuntimePropertyDescriptor;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"symbol"];
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

- (BOOL)isPrivate
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimePropertyDescriptor;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isPrivate"];
}

- (BOOL)nativeGetter
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimePropertyDescriptor;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"nativeGetter"];
}

@end