@interface RWIProtocolCSSRule
- (BOOL)isImplicitlyNested;
- (NSArray)groupings;
- (NSString)sourceURL;
- (RWIProtocolCSSRuleId)ruleId;
- (RWIProtocolCSSSelectorList)selectorList;
- (RWIProtocolCSSStyle)style;
- (int)sourceLine;
- (int64_t)origin;
- (void)setGroupings:(id)groupings;
- (void)setOrigin:(int64_t)origin;
- (void)setRuleId:(id)id;
- (void)setSelectorList:(id)list;
- (void)setSourceURL:(id)l;
- (void)setStyle:(id)style;
@end

@implementation RWIProtocolCSSRule

- (void)setRuleId:(id)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSRule;
  [(RWIProtocolJSONObject *)&v3 setObject:id forKey:@"ruleId"];
}

- (RWIProtocolCSSRuleId)ruleId
{
  v14.receiver = self;
  v14.super_class = RWIProtocolCSSRule;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"ruleId"];
  if (v3)
  {
    v4 = [RWIProtocolCSSRuleId alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolCSSRule;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"ruleId"];
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

- (void)setSelectorList:(id)list
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSRule;
  [(RWIProtocolJSONObject *)&v3 setObject:list forKey:@"selectorList"];
}

- (RWIProtocolCSSSelectorList)selectorList
{
  v14.receiver = self;
  v14.super_class = RWIProtocolCSSRule;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"selectorList"];
  if (v3)
  {
    v4 = [RWIProtocolCSSSelectorList alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolCSSRule;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"selectorList"];
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

- (void)setSourceURL:(id)l
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSRule;
  [(RWIProtocolJSONObject *)&v3 setString:l forKey:@"sourceURL"];
}

- (NSString)sourceURL
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSRule;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"sourceURL"];

  return v2;
}

- (int)sourceLine
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSRule;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"sourceLine"];
}

- (void)setOrigin:(int64_t)origin
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
  v5.super_class = RWIProtocolCSSRule;
  [(RWIProtocolJSONObject *)&v5 setString:v7 forKey:@"origin"];
  [RWIProtocolCSSPseudoIdMatches setPseudoId:?];
}

- (int64_t)origin
{
  v8.receiver = self;
  v8.super_class = RWIProtocolCSSRule;
  v2 = [(RWIProtocolJSONObject *)&v8 stringForKey:@"origin"];
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

  v5 = &Inspector::fromProtocolString<RWIProtocolCSSStyleSheetOrigin>(WTF::String const&)::mappings;
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

- (void)setStyle:(id)style
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSRule;
  [(RWIProtocolJSONObject *)&v3 setObject:style forKey:@"style"];
}

- (RWIProtocolCSSStyle)style
{
  v14.receiver = self;
  v14.super_class = RWIProtocolCSSRule;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"style"];
  if (v3)
  {
    v4 = [RWIProtocolCSSStyle alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolCSSRule;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"style"];
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

- (void)setGroupings:(id)groupings
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = groupings;
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
  v15.super_class = RWIProtocolCSSRule;
  [(RWIProtocolJSONObject *)&v15 setJSONArray:&v16 forKey:@"groupings"];
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

- (NSArray)groupings
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSRule;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"groupings"];
  v2 = Inspector::toObjCArray<RWIProtocolCSSGrouping>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (BOOL)isImplicitlyNested
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSRule;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isImplicitlyNested"];
}

@end