@interface RWIProtocolDebuggerFunctionDetails
- (NSArray)scopeChain;
- (NSString)displayName;
- (NSString)name;
- (RWIProtocolDebuggerFunctionDetails)initWithLocation:(id)a3;
- (RWIProtocolDebuggerLocation)location;
- (void)setDisplayName:(id)a3;
- (void)setLocation:(id)a3;
- (void)setName:(id)a3;
- (void)setScopeChain:(id)a3;
@end

@implementation RWIProtocolDebuggerFunctionDetails

- (RWIProtocolDebuggerFunctionDetails)initWithLocation:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RWIProtocolDebuggerFunctionDetails;
  v5 = [(RWIProtocolJSONObject *)&v8 init];
  if (v5)
  {
    if (!v4)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"location"}];
    }

    [(RWIProtocolDebuggerFunctionDetails *)v5 setLocation:v4];
    v6 = v5;
  }

  return v5;
}

- (void)setLocation:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerFunctionDetails;
  [(RWIProtocolJSONObject *)&v3 setObject:a3 forKey:@"location"];
}

- (RWIProtocolDebuggerLocation)location
{
  v14.receiver = self;
  v14.super_class = RWIProtocolDebuggerFunctionDetails;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"location"];
  if (v3)
  {
    v4 = [RWIProtocolDebuggerLocation alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolDebuggerFunctionDetails;
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

- (void)setName:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerFunctionDetails;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"name"];
}

- (NSString)name
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDebuggerFunctionDetails;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"name"];

  return v2;
}

- (void)setDisplayName:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerFunctionDetails;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"displayName"];
}

- (NSString)displayName
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDebuggerFunctionDetails;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"displayName"];

  return v2;
}

- (void)setScopeChain:(id)a3
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
  v15.super_class = RWIProtocolDebuggerFunctionDetails;
  [(RWIProtocolJSONObject *)&v15 setJSONArray:&v16 forKey:@"scopeChain"];
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

- (NSArray)scopeChain
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDebuggerFunctionDetails;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"scopeChain"];
  v2 = Inspector::toObjCArray<RWIProtocolDebuggerScope>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

@end