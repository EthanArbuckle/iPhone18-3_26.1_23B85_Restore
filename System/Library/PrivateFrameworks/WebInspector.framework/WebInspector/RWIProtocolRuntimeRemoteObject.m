@interface RWIProtocolRuntimeRemoteObject
- (NSString)className;
- (NSString)objectId;
- (NSString)stringRepresentation;
- (RWIProtocolJSONObject)value;
- (RWIProtocolRuntimeObjectPreview)preview;
- (RWIProtocolRuntimeRemoteObject)classPrototype;
- (RWIProtocolRuntimeRemoteObject)initWithType:(int64_t)a3;
- (int)size;
- (int64_t)subtype;
- (int64_t)type;
- (void)setClassName:(id)a3;
- (void)setClassPrototype:(id)a3;
- (void)setObjectId:(id)a3;
- (void)setPreview:(id)a3;
- (void)setStringRepresentation:(id)a3;
- (void)setSubtype:(int64_t)a3;
- (void)setType:(int64_t)a3;
- (void)setValue:(id)a3;
@end

@implementation RWIProtocolRuntimeRemoteObject

- (RWIProtocolRuntimeRemoteObject)initWithType:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = RWIProtocolRuntimeRemoteObject;
  v4 = [(RWIProtocolJSONObject *)&v8 init];
  v5 = v4;
  if (v4)
  {
    [(RWIProtocolRuntimeRemoteObject *)v4 setType:a3];
    v6 = v5;
  }

  return v5;
}

- (void)setType:(int64_t)a3
{
  Inspector::toProtocolString();
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    MEMORY[0x2743DB4B0](&v7, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }
  }

  else
  {
    v7 = &stru_2882B1C88;
  }

  v5.receiver = self;
  v5.super_class = RWIProtocolRuntimeRemoteObject;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"type"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)type
{
  v8.receiver = self;
  v8.super_class = RWIProtocolRuntimeRemoteObject;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"type"];
  MEMORY[0x2743DB520](&v9, v2);
  if (v9)
  {
    v3 = *(v9 + 8);
    v4 = *(v9 + 4) | (((*(v9 + 16) >> 2) & 1) << 32);
  }

  else
  {
    v3 = 0;
    v4 = 0x100000000;
  }

  v5 = &Inspector::fromProtocolString<RWIProtocolRuntimeRemoteObjectType>(WTF::String const&)::mappings;
  v6 = 192;
  do
  {
    if (WTF::operator==(v3, v4, *v5, v5[1]))
    {
      goto LABEL_8;
    }

    v5 += 3;
    v6 -= 24;
  }

  while (v6);
  do
  {
    std::__throw_bad_optional_access[abi:sn200100]();
LABEL_8:
    ;
  }

  while (!v6);
  [(RWIProtocolCSSStyleSheetHeader *)v5 origin];
  return v10;
}

- (void)setSubtype:(int64_t)a3
{
  Inspector::toProtocolString();
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    MEMORY[0x2743DB4B0](&v7, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }
  }

  else
  {
    v7 = &stru_2882B1C88;
  }

  v5.receiver = self;
  v5.super_class = RWIProtocolRuntimeRemoteObject;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"subtype"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)subtype
{
  v8.receiver = self;
  v8.super_class = RWIProtocolRuntimeRemoteObject;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"subtype"];
  MEMORY[0x2743DB520](&v9, v2);
  if (v9)
  {
    v3 = *(v9 + 8);
    v4 = *(v9 + 4) | (((*(v9 + 16) >> 2) & 1) << 32);
  }

  else
  {
    v3 = 0;
    v4 = 0x100000000;
  }

  v5 = &Inspector::fromProtocolString<RWIProtocolRuntimeRemoteObjectSubtype>(WTF::String const&)::mappings;
  v6 = 336;
  do
  {
    if (WTF::operator==(v3, v4, *v5, v5[1]))
    {
      goto LABEL_8;
    }

    v5 += 3;
    v6 -= 24;
  }

  while (v6);
  do
  {
    std::__throw_bad_optional_access[abi:sn200100]();
LABEL_8:
    ;
  }

  while (!v6);
  [(RWIProtocolCSSStyleSheetHeader *)v5 origin];
  return v10;
}

- (void)setClassName:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeRemoteObject;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"className"];
}

- (NSString)className
{
  v4.receiver = self;
  v4.super_class = RWIProtocolRuntimeRemoteObject;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"className"];

  return v2;
}

- (void)setValue:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeRemoteObject;
  [(RWIProtocolJSONObject *)&v3 setObject:a3 forKey:@"value"];
}

- (RWIProtocolJSONObject)value
{
  v14.receiver = self;
  v14.super_class = RWIProtocolRuntimeRemoteObject;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"value"];
  if (v3)
  {
    v4 = [RWIProtocolJSONObject alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolRuntimeRemoteObject;
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

- (void)setStringRepresentation:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeRemoteObject;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"description"];
}

- (NSString)stringRepresentation
{
  v4.receiver = self;
  v4.super_class = RWIProtocolRuntimeRemoteObject;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"description"];

  return v2;
}

- (void)setObjectId:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeRemoteObject;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"objectId"];
}

- (NSString)objectId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolRuntimeRemoteObject;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"objectId"];

  return v2;
}

- (int)size
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeRemoteObject;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"size"];
}

- (void)setClassPrototype:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeRemoteObject;
  [(RWIProtocolJSONObject *)&v3 setObject:a3 forKey:@"classPrototype"];
}

- (RWIProtocolRuntimeRemoteObject)classPrototype
{
  v14.receiver = self;
  v14.super_class = RWIProtocolRuntimeRemoteObject;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"classPrototype"];
  if (v3)
  {
    v4 = [RWIProtocolRuntimeRemoteObject alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolRuntimeRemoteObject;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"classPrototype"];
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

- (void)setPreview:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeRemoteObject;
  [(RWIProtocolJSONObject *)&v3 setObject:a3 forKey:@"preview"];
}

- (RWIProtocolRuntimeObjectPreview)preview
{
  v14.receiver = self;
  v14.super_class = RWIProtocolRuntimeRemoteObject;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"preview"];
  if (v3)
  {
    v4 = [RWIProtocolRuntimeObjectPreview alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolRuntimeRemoteObject;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"preview"];
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