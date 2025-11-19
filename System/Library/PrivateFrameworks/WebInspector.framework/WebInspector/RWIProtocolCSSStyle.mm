@interface RWIProtocolCSSStyle
- (NSArray)cssProperties;
- (NSArray)shorthandEntries;
- (NSString)cssText;
- (NSString)height;
- (NSString)width;
- (RWIProtocolCSSSourceRange)range;
- (RWIProtocolCSSStyle)initWithCssProperties:(id)a3 shorthandEntries:(id)a4;
- (RWIProtocolCSSStyleId)styleId;
- (void)setCssProperties:(id)a3;
- (void)setCssText:(id)a3;
- (void)setHeight:(id)a3;
- (void)setRange:(id)a3;
- (void)setShorthandEntries:(id)a3;
- (void)setStyleId:(id)a3;
- (void)setWidth:(id)a3;
@end

@implementation RWIProtocolCSSStyle

- (RWIProtocolCSSStyle)initWithCssProperties:(id)a3 shorthandEntries:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v27 = a4;
  v39.receiver = self;
  v39.super_class = RWIProtocolCSSStyle;
  v29 = [(RWIProtocolJSONObject *)&v39 init];
  if (v29)
  {
    v6 = MEMORY[0x277CBE660];
    if (!v28)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"cssProperties"}];
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v28;
    v7 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v7)
    {
      v8 = *v36;
      v9 = *v6;
      do
      {
        v10 = 0;
        do
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v35 + 1) + 8 * v10);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v12 = MEMORY[0x277CBEAD8];
            v13 = objc_opt_class();
            v14 = NSStringFromClass(v13);
            [v12 raise:v9 format:{@"array should contain objects of type '%@', found bad value: %@", v14, v11}];
          }

          ++v10;
        }

        while (v7 != v10);
        v7 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v7);
    }

    if (!v27)
    {
      [MEMORY[0x277CBEAD8] raise:*v6 format:{@"required property '%@' cannot be nil", @"shorthandEntries"}];
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = v27;
    v16 = [v15 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v16)
    {
      v17 = *v32;
      v18 = *v6;
      do
      {
        v19 = 0;
        do
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v31 + 1) + 8 * v19);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v21 = MEMORY[0x277CBEAD8];
            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            [v21 raise:v18 format:{@"array should contain objects of type '%@', found bad value: %@", v23, v20}];
          }

          ++v19;
        }

        while (v16 != v19);
        v16 = [v15 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v16);
    }

    [(RWIProtocolCSSStyle *)v29 setCssProperties:obj];
    [(RWIProtocolCSSStyle *)v29 setShorthandEntries:v15];
    v24 = v29;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v29;
}

- (void)setStyleId:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyle;
  [(RWIProtocolJSONObject *)&v3 setObject:a3 forKey:@"styleId"];
}

- (RWIProtocolCSSStyleId)styleId
{
  v14.receiver = self;
  v14.super_class = RWIProtocolCSSStyle;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"styleId"];
  if (v3)
  {
    v4 = [RWIProtocolCSSStyleId alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolCSSStyle;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"styleId"];
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

- (void)setCssProperties:(id)a3
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
  v15.super_class = RWIProtocolCSSStyle;
  [(RWIProtocolJSONObject *)&v15 setJSONArray:&v16 forKey:@"cssProperties"];
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

- (NSArray)cssProperties
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSStyle;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"cssProperties"];
  v2 = Inspector::toObjCArray<RWIProtocolCSSProperty>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setShorthandEntries:(id)a3
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
  v15.super_class = RWIProtocolCSSStyle;
  [(RWIProtocolJSONObject *)&v15 setJSONArray:&v16 forKey:@"shorthandEntries"];
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

- (NSArray)shorthandEntries
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSStyle;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"shorthandEntries"];
  v2 = Inspector::toObjCArray<RWIProtocolCSSShorthandEntry>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setCssText:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyle;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"cssText"];
}

- (NSString)cssText
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSStyle;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"cssText"];

  return v2;
}

- (void)setRange:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyle;
  [(RWIProtocolJSONObject *)&v3 setObject:a3 forKey:@"range"];
}

- (RWIProtocolCSSSourceRange)range
{
  v14.receiver = self;
  v14.super_class = RWIProtocolCSSStyle;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"range"];
  if (v3)
  {
    v4 = [RWIProtocolCSSSourceRange alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolCSSStyle;
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

- (void)setWidth:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyle;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"width"];
}

- (NSString)width
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSStyle;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"width"];

  return v2;
}

- (void)setHeight:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolCSSStyle;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"height"];
}

- (NSString)height
{
  v4.receiver = self;
  v4.super_class = RWIProtocolCSSStyle;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"height"];

  return v2;
}

@end