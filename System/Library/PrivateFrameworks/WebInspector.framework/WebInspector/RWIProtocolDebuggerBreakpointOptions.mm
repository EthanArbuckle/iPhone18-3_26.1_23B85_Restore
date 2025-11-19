@interface RWIProtocolDebuggerBreakpointOptions
- (BOOL)autoContinue;
- (NSArray)actions;
- (NSString)condition;
- (int)ignoreCount;
- (void)setActions:(id)a3;
- (void)setCondition:(id)a3;
@end

@implementation RWIProtocolDebuggerBreakpointOptions

- (void)setCondition:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerBreakpointOptions;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"condition"];
}

- (NSString)condition
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDebuggerBreakpointOptions;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"condition"];

  return v2;
}

- (void)setActions:(id)a3
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
  v15.super_class = RWIProtocolDebuggerBreakpointOptions;
  [(RWIProtocolJSONObject *)&v15 setJSONArray:&v16 forKey:@"actions"];
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

- (NSArray)actions
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDebuggerBreakpointOptions;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"actions"];
  v2 = Inspector::toObjCArray<RWIProtocolDebuggerBreakpointAction>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (BOOL)autoContinue
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerBreakpointOptions;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"autoContinue"];
}

- (int)ignoreCount
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerBreakpointOptions;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"ignoreCount"];
}

@end