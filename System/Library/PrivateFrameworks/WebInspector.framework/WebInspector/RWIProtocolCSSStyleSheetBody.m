@interface RWIProtocolCSSStyleSheetBody
- (NSArray)rules;
- (NSString)styleSheetId;
- (NSString)text;
- (RWIProtocolCSSStyleSheetBody)initWithStyleSheetId:(id)a3 rules:(id)a4;
- (void)setRules:(id)a3;
- (void)setStyleSheetId:(id)a3;
- (void)setText:(id)a3;
@end

@implementation RWIProtocolCSSStyleSheetBody

- (RWIProtocolCSSStyleSheetBody)initWithStyleSheetId:(id)a3 rules:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v21 = a4;
  v26.receiver = self;
  v26.super_class = RWIProtocolCSSStyleSheetBody;
  v6 = [(RWIProtocolJSONObject *)&v26 init];
  if (v6)
  {
    if (!v20)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"styleSheetId"}];
    }

    if (!v21)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"rules"}];
    }

    v19 = v6;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v21;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v8)
    {
      v9 = *v23;
      v10 = *MEMORY[0x277CBE660];
      do
      {
        v11 = 0;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * v11);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v13 = MEMORY[0x277CBEAD8];
            v14 = objc_opt_class();
            v15 = NSStringFromClass(v14);
            [v13 raise:v10 format:{@"array should contain objects of type '%@', found bad value: %@", v15, v12}];
          }

          ++v11;
        }

        while (v8 != v11);
        v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v8);
    }

    v6 = v19;
    [(RWIProtocolCSSStyleSheetBody *)v19 setStyleSheetId:v20];
    [(RWIProtocolCSSStyleSheetBody *)v19 setRules:v7];
    v16 = v19;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)setStyleSheetId:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyleSheetBody;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"styleSheetId"];
}

- (NSString)styleSheetId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSStyleSheetBody;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"styleSheetId"];

  return v2;
}

- (void)setRules:(id)a3
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
  v15.super_class = RWIProtocolCSSStyleSheetBody;
  [(RWIProtocolJSONObject *)&v15 setJSONArray:&v16 forKey:@"rules"];
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

- (NSArray)rules
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSStyleSheetBody;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"rules"];
  v2 = Inspector::toObjCArray<RWIProtocolCSSRule>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setText:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyleSheetBody;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"text"];
}

- (NSString)text
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSStyleSheetBody;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"text"];

  return v2;
}

@end