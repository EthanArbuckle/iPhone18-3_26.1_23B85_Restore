@interface RWIProtocolRuntimeEntryPreview
- (RWIProtocolRuntimeEntryPreview)initWithValue:(id)value;
- (RWIProtocolRuntimeObjectPreview)key;
- (RWIProtocolRuntimeObjectPreview)value;
- (void)setKey:(id)key;
- (void)setValue:(id)value;
@end

@implementation RWIProtocolRuntimeEntryPreview

- (RWIProtocolRuntimeEntryPreview)initWithValue:(id)value
{
  valueCopy = value;
  v8.receiver = self;
  v8.super_class = RWIProtocolRuntimeEntryPreview;
  v5 = [(RWIProtocolJSONObject *)&v8 init];
  if (v5)
  {
    if (!valueCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"value"}];
    }

    [(RWIProtocolRuntimeEntryPreview *)v5 setValue:valueCopy];
    v6 = v5;
  }

  return v5;
}

- (void)setKey:(id)key
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeEntryPreview;
  [(RWIProtocolJSONObject *)&v3 setObject:key forKey:@"key"];
}

- (RWIProtocolRuntimeObjectPreview)key
{
  v14.receiver = self;
  v14.super_class = RWIProtocolRuntimeEntryPreview;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"key"];
  if (v3)
  {
    v4 = [RWIProtocolRuntimeObjectPreview alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolRuntimeEntryPreview;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"key"];
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

- (void)setValue:(id)value
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeEntryPreview;
  [(RWIProtocolJSONObject *)&v3 setObject:value forKey:@"value"];
}

- (RWIProtocolRuntimeObjectPreview)value
{
  v14.receiver = self;
  v14.super_class = RWIProtocolRuntimeEntryPreview;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"value"];
  if (v3)
  {
    v4 = [RWIProtocolRuntimeObjectPreview alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolRuntimeEntryPreview;
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