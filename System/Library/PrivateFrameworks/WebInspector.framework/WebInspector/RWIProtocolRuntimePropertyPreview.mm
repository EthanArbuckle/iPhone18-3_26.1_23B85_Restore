@interface RWIProtocolRuntimePropertyPreview
- (BOOL)internal;
- (BOOL)isPrivate;
- (NSString)name;
- (NSString)value;
- (RWIProtocolRuntimeObjectPreview)valuePreview;
- (RWIProtocolRuntimePropertyPreview)initWithName:(id)name type:(int64_t)type;
- (int64_t)subtype;
- (int64_t)type;
- (void)setName:(id)name;
- (void)setSubtype:(int64_t)subtype;
- (void)setType:(int64_t)type;
- (void)setValue:(id)value;
- (void)setValuePreview:(id)preview;
@end

@implementation RWIProtocolRuntimePropertyPreview

- (RWIProtocolRuntimePropertyPreview)initWithName:(id)name type:(int64_t)type
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = RWIProtocolRuntimePropertyPreview;
  v7 = [(RWIProtocolJSONObject *)&v10 init];
  if (v7)
  {
    if (!nameCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"name"}];
    }

    [(RWIProtocolRuntimePropertyPreview *)v7 setName:nameCopy];
    [(RWIProtocolRuntimePropertyPreview *)v7 setType:type];
    v8 = v7;
  }

  return v7;
}

- (void)setName:(id)name
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimePropertyPreview;
  [(RWIProtocolJSONObject *)&v3 setString:name forKey:@"name"];
}

- (NSString)name
{
  v4.receiver = self;
  v4.super_class = RWIProtocolRuntimePropertyPreview;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"name"];

  return v2;
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
  v5.super_class = RWIProtocolRuntimePropertyPreview;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"type"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)type
{
  v8.receiver = self;
  v8.super_class = RWIProtocolRuntimePropertyPreview;
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

  v5 = &Inspector::fromProtocolString<RWIProtocolRuntimePropertyPreviewType>(WTF::String const&)::mappings;
  v6 = 216;
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

- (void)setSubtype:(int64_t)subtype
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
  v5.super_class = RWIProtocolRuntimePropertyPreview;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"subtype"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)subtype
{
  v8.receiver = self;
  v8.super_class = RWIProtocolRuntimePropertyPreview;
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

  v5 = &Inspector::fromProtocolString<RWIProtocolRuntimePropertyPreviewSubtype>(WTF::String const&)::mappings;
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

- (void)setValue:(id)value
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimePropertyPreview;
  [(RWIProtocolJSONObject *)&v3 setString:value forKey:@"value"];
}

- (NSString)value
{
  v4.receiver = self;
  v4.super_class = RWIProtocolRuntimePropertyPreview;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"value"];

  return v2;
}

- (void)setValuePreview:(id)preview
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimePropertyPreview;
  [(RWIProtocolJSONObject *)&v3 setObject:preview forKey:@"valuePreview"];
}

- (RWIProtocolRuntimeObjectPreview)valuePreview
{
  v14.receiver = self;
  v14.super_class = RWIProtocolRuntimePropertyPreview;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"valuePreview"];
  if (v3)
  {
    v4 = [RWIProtocolRuntimeObjectPreview alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolRuntimePropertyPreview;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"valuePreview"];
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
  v3.super_class = RWIProtocolRuntimePropertyPreview;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isPrivate"];
}

- (BOOL)internal
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimePropertyPreview;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"internal"];
}

@end