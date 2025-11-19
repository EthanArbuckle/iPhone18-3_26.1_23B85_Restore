@interface RWIProtocolRuntimeObjectPreview
- (BOOL)lossless;
- (BOOL)overflow;
- (NSArray)entries;
- (NSArray)properties;
- (NSString)stringRepresentation;
- (int)size;
- (int64_t)subtype;
- (int64_t)type;
- (void)setEntries:(id)a3;
- (void)setProperties:(id)a3;
- (void)setStringRepresentation:(id)a3;
- (void)setSubtype:(int64_t)a3;
- (void)setType:(int64_t)a3;
@end

@implementation RWIProtocolRuntimeObjectPreview

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
  v5.super_class = RWIProtocolRuntimeObjectPreview;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"type"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)type
{
  v8.receiver = self;
  v8.super_class = RWIProtocolRuntimeObjectPreview;
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

  v5 = &Inspector::fromProtocolString<RWIProtocolRuntimeObjectPreviewType>(WTF::String const&)::mappings;
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
  v5.super_class = RWIProtocolRuntimeObjectPreview;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"subtype"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)subtype
{
  v8.receiver = self;
  v8.super_class = RWIProtocolRuntimeObjectPreview;
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

  v5 = &Inspector::fromProtocolString<RWIProtocolRuntimeObjectPreviewSubtype>(WTF::String const&)::mappings;
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

- (void)setStringRepresentation:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeObjectPreview;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"description"];
}

- (NSString)stringRepresentation
{
  v4.receiver = self;
  v4.super_class = RWIProtocolRuntimeObjectPreview;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"description"];

  return v2;
}

- (BOOL)lossless
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeObjectPreview;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"lossless"];
}

- (BOOL)overflow
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeObjectPreview;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"overflow"];
}

- (void)setProperties:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = a3;
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = *v18;
    v5 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = MEMORY[0x277CBEAD8];
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          [v8 raise:v5 format:{@"array should contain objects of type '%@', found bad value: %@", v10, v7}];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v3);
  }

  Inspector::toJSONObjectArray(obj, &v16);
  v15.receiver = self;
  v15.super_class = RWIProtocolRuntimeObjectPreview;
  [(RWIProtocolJSONObject *)&v15 setJSONArray:&v16 forKey:@"properties"];
  v11 = v16;
  v16 = 0;
  if (v11)
  {
    if (*v11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v11;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NSArray)properties
{
  v4.receiver = self;
  v4.super_class = RWIProtocolRuntimeObjectPreview;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"properties"];
  v2 = Inspector::toObjCArray<RWIProtocolRuntimePropertyPreview>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setEntries:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = a3;
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = *v18;
    v5 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = MEMORY[0x277CBEAD8];
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          [v8 raise:v5 format:{@"array should contain objects of type '%@', found bad value: %@", v10, v7}];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v3);
  }

  Inspector::toJSONObjectArray(obj, &v16);
  v15.receiver = self;
  v15.super_class = RWIProtocolRuntimeObjectPreview;
  [(RWIProtocolJSONObject *)&v15 setJSONArray:&v16 forKey:@"entries"];
  v11 = v16;
  v16 = 0;
  if (v11)
  {
    if (*v11 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v11;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NSArray)entries
{
  v4.receiver = self;
  v4.super_class = RWIProtocolRuntimeObjectPreview;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"entries"];
  v2 = Inspector::toObjCArray<RWIProtocolRuntimeEntryPreview>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (int)size
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeObjectPreview;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"size"];
}

@end