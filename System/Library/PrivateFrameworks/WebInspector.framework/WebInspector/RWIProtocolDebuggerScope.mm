@interface RWIProtocolDebuggerScope
- (BOOL)empty;
- (NSString)name;
- (RWIProtocolDebuggerLocation)location;
- (RWIProtocolDebuggerScope)initWithObject:(id)object type:(int64_t)type;
- (RWIProtocolRuntimeRemoteObject)object;
- (int64_t)type;
- (void)setLocation:(id)location;
- (void)setName:(id)name;
- (void)setObject:(id)object;
- (void)setType:(int64_t)type;
@end

@implementation RWIProtocolDebuggerScope

- (RWIProtocolDebuggerScope)initWithObject:(id)object type:(int64_t)type
{
  objectCopy = object;
  v10.receiver = self;
  v10.super_class = RWIProtocolDebuggerScope;
  v7 = [(RWIProtocolJSONObject *)&v10 init];
  if (v7)
  {
    if (!objectCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"object"}];
    }

    [(RWIProtocolDebuggerScope *)v7 setObject:objectCopy];
    [(RWIProtocolDebuggerScope *)v7 setType:type];
    v8 = v7;
  }

  return v7;
}

- (void)setObject:(id)object
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerScope;
  [(RWIProtocolJSONObject *)&v3 setObject:object forKey:@"object"];
}

- (RWIProtocolRuntimeRemoteObject)object
{
  v14.receiver = self;
  v14.super_class = RWIProtocolDebuggerScope;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"object"];
  if (v3)
  {
    v4 = [RWIProtocolRuntimeRemoteObject alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolDebuggerScope;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"object"];
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

- (void)setType:(int64_t)type
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
  v5.super_class = RWIProtocolDebuggerScope;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"type"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)type
{
  v8.receiver = self;
  v8.super_class = RWIProtocolDebuggerScope;
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

  v5 = &Inspector::fromProtocolString<RWIProtocolDebuggerScopeType>(WTF::String const&)::mappings;
  v6 = 168;
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

- (void)setName:(id)name
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerScope;
  [(RWIProtocolJSONObject *)&v3 setString:name forKey:@"name"];
}

- (NSString)name
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDebuggerScope;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"name"];

  return v2;
}

- (void)setLocation:(id)location
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerScope;
  [(RWIProtocolJSONObject *)&v3 setObject:location forKey:@"location"];
}

- (RWIProtocolDebuggerLocation)location
{
  v14.receiver = self;
  v14.super_class = RWIProtocolDebuggerScope;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"location"];
  if (v3)
  {
    v4 = [RWIProtocolDebuggerLocation alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolDebuggerScope;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"location"];
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

- (BOOL)empty
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerScope;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"empty"];
}

@end