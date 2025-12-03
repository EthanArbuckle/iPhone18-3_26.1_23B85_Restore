@interface RWIProtocolCSSInheritedStyleEntry
- (NSArray)matchedCSSRules;
- (RWIProtocolCSSInheritedStyleEntry)initWithMatchedCSSRules:(id)rules;
- (RWIProtocolCSSStyle)inlineStyle;
- (void)setInlineStyle:(id)style;
- (void)setMatchedCSSRules:(id)rules;
@end

@implementation RWIProtocolCSSInheritedStyleEntry

- (RWIProtocolCSSInheritedStyleEntry)initWithMatchedCSSRules:(id)rules
{
  v25 = *MEMORY[0x277D85DE8];
  rulesCopy = rules;
  v23.receiver = self;
  v23.super_class = RWIProtocolCSSInheritedStyleEntry;
  v4 = [(RWIProtocolJSONObject *)&v23 init];
  if (v4)
  {
    if (!rulesCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"matchedCSSRules"}];
    }

    v17 = v4;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = rulesCopy;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v6)
    {
      v7 = *v20;
      v8 = *MEMORY[0x277CBE660];
      do
      {
        v9 = 0;
        do
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * v9);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v11 = MEMORY[0x277CBEAD8];
            v12 = objc_opt_class();
            v13 = NSStringFromClass(v12);
            [v11 raise:v8 format:{@"array should contain objects of type '%@', found bad value: %@", v13, v10}];
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v6);
    }

    v4 = v17;
    [(RWIProtocolCSSInheritedStyleEntry *)v17 setMatchedCSSRules:v5];
    v14 = v17;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)setInlineStyle:(id)style
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSInheritedStyleEntry;
  [(RWIProtocolJSONObject *)&v3 setObject:style forKey:@"inlineStyle"];
}

- (RWIProtocolCSSStyle)inlineStyle
{
  v14.receiver = self;
  v14.super_class = RWIProtocolCSSInheritedStyleEntry;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"inlineStyle"];
  if (v3)
  {
    v4 = [RWIProtocolCSSStyle alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolCSSInheritedStyleEntry;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"inlineStyle"];
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

- (void)setMatchedCSSRules:(id)rules
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = rules;
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
  v15.super_class = RWIProtocolCSSInheritedStyleEntry;
  [(RWIProtocolJSONObject *)&v15 setJSONArray:&v16 forKey:@"matchedCSSRules"];
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

- (NSArray)matchedCSSRules
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSInheritedStyleEntry;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"matchedCSSRules"];
  v2 = Inspector::toObjCArray<RWIProtocolCSSRuleMatch>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

@end