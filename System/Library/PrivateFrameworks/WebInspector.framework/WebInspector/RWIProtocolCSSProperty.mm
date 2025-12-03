@interface RWIProtocolCSSProperty
- (BOOL)implicit;
- (BOOL)parsedOk;
- (NSString)name;
- (NSString)priority;
- (NSString)text;
- (NSString)value;
- (RWIProtocolCSSProperty)initWithName:(id)name value:(id)value;
- (RWIProtocolCSSSourceRange)range;
- (int64_t)status;
- (void)setName:(id)name;
- (void)setPriority:(id)priority;
- (void)setRange:(id)range;
- (void)setStatus:(int64_t)status;
- (void)setText:(id)text;
- (void)setValue:(id)value;
@end

@implementation RWIProtocolCSSProperty

- (RWIProtocolCSSProperty)initWithName:(id)name value:(id)value
{
  nameCopy = name;
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = RWIProtocolCSSProperty;
  v8 = [(RWIProtocolJSONObject *)&v11 init];
  if (v8)
  {
    if (!nameCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"name"}];
    }

    if (!valueCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"value"}];
    }

    [(RWIProtocolCSSProperty *)v8 setName:nameCopy];
    [(RWIProtocolCSSProperty *)v8 setValue:valueCopy];
    v9 = v8;
  }

  return v8;
}

- (void)setName:(id)name
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSProperty;
  [(RWIProtocolJSONObject *)&v3 setString:name forKey:@"name"];
}

- (NSString)name
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSProperty;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"name"];

  return v2;
}

- (void)setValue:(id)value
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSProperty;
  [(RWIProtocolJSONObject *)&v3 setString:value forKey:@"value"];
}

- (NSString)value
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSProperty;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"value"];

  return v2;
}

- (void)setPriority:(id)priority
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSProperty;
  [(RWIProtocolJSONObject *)&v3 setString:priority forKey:@"priority"];
}

- (NSString)priority
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSProperty;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"priority"];

  return v2;
}

- (BOOL)implicit
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSProperty;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"implicit"];
}

- (void)setText:(id)text
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSProperty;
  [(RWIProtocolJSONObject *)&v3 setString:text forKey:@"text"];
}

- (NSString)text
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSProperty;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"text"];

  return v2;
}

- (BOOL)parsedOk
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSProperty;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"parsedOk"];
}

- (void)setStatus:(int64_t)status
{
  WTF::StringImpl::createWithoutCopyingNonEmpty();
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
  v5.super_class = RWIProtocolCSSProperty;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"status"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)status
{
  v8.receiver = self;
  v8.super_class = RWIProtocolCSSProperty;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"status"];
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

  v5 = &Inspector::fromProtocolString<RWIProtocolCSSPropertyStatus>(WTF::String const&)::mappings;
  v6 = 96;
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

- (void)setRange:(id)range
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSProperty;
  [(RWIProtocolJSONObject *)&v3 setObject:range forKey:@"range"];
}

- (RWIProtocolCSSSourceRange)range
{
  v14.receiver = self;
  v14.super_class = RWIProtocolCSSProperty;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"range"];
  if (v3)
  {
    v4 = [RWIProtocolCSSSourceRange alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolCSSProperty;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"range"];
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