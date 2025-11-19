@interface RWIProtocolDebuggerCallFrame
- (BOOL)isTailDeleted;
- (NSArray)scopeChain;
- (NSString)callFrameId;
- (NSString)functionName;
- (RWIProtocolDebuggerCallFrame)initWithCallFrameId:(id)a3 functionName:(id)a4 location:(id)a5 scopeChain:(id)a6 thisObject:(id)a7 isTailDeleted:(BOOL)a8;
- (RWIProtocolDebuggerLocation)location;
- (RWIProtocolRuntimeRemoteObject)thisObject;
- (void)setCallFrameId:(id)a3;
- (void)setFunctionName:(id)a3;
- (void)setLocation:(id)a3;
- (void)setScopeChain:(id)a3;
- (void)setThisObject:(id)a3;
@end

@implementation RWIProtocolDebuggerCallFrame

- (RWIProtocolDebuggerCallFrame)initWithCallFrameId:(id)a3 functionName:(id)a4 location:(id)a5 scopeChain:(id)a6 thisObject:(id)a7 isTailDeleted:(BOOL)a8
{
  v25 = a8;
  v38 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v26 = a7;
  v36.receiver = self;
  v36.super_class = RWIProtocolDebuggerCallFrame;
  v31 = [(RWIProtocolJSONObject *)&v36 init];
  if (v31)
  {
    if (!v27)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"callFrameId"}];
    }

    if (!v28)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"functionName"}];
    }

    if (!v29)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"location"}];
    }

    if (!v30)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"scopeChain"}];
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = v30;
    v14 = [v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v14)
    {
      v15 = *v33;
      v16 = *MEMORY[0x277CBE660];
      do
      {
        v17 = 0;
        do
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v32 + 1) + 8 * v17);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v19 = MEMORY[0x277CBEAD8];
            v20 = objc_opt_class();
            v21 = NSStringFromClass(v20);
            [v19 raise:v16 format:{@"array should contain objects of type '%@', found bad value: %@", v21, v18}];
          }

          ++v17;
        }

        while (v14 != v17);
        v14 = [v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v14);
    }

    if (!v26)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"thisObject"}];
    }

    [(RWIProtocolDebuggerCallFrame *)v31 setCallFrameId:v27];
    [(RWIProtocolDebuggerCallFrame *)v31 setFunctionName:v28];
    [(RWIProtocolDebuggerCallFrame *)v31 setLocation:v29];
    [(RWIProtocolDebuggerCallFrame *)v31 setScopeChain:v13];
    [(RWIProtocolDebuggerCallFrame *)v31 setThisObject:v26];
    [(RWIProtocolDebuggerCallFrame *)v31 setIsTailDeleted:v25];
    v22 = v31;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v31;
}

- (void)setCallFrameId:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerCallFrame;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"callFrameId"];
}

- (NSString)callFrameId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDebuggerCallFrame;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"callFrameId"];

  return v2;
}

- (void)setFunctionName:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerCallFrame;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"functionName"];
}

- (NSString)functionName
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDebuggerCallFrame;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"functionName"];

  return v2;
}

- (void)setLocation:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerCallFrame;
  [(RWIProtocolJSONObject *)&v3 setObject:a3 forKey:@"location"];
}

- (RWIProtocolDebuggerLocation)location
{
  v14.receiver = self;
  v14.super_class = RWIProtocolDebuggerCallFrame;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"location"];
  if (v3)
  {
    v4 = [RWIProtocolDebuggerLocation alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolDebuggerCallFrame;
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
  v15.super_class = RWIProtocolDebuggerCallFrame;
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
  v4.super_class = RWIProtocolDebuggerCallFrame;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"scopeChain"];
  v2 = Inspector::toObjCArray<RWIProtocolDebuggerScope>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setThisObject:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerCallFrame;
  [(RWIProtocolJSONObject *)&v3 setObject:a3 forKey:@"this"];
}

- (RWIProtocolRuntimeRemoteObject)thisObject
{
  v14.receiver = self;
  v14.super_class = RWIProtocolDebuggerCallFrame;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"this"];
  if (v3)
  {
    v4 = [RWIProtocolRuntimeRemoteObject alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolDebuggerCallFrame;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"this"];
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

- (BOOL)isTailDeleted
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerCallFrame;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isTailDeleted"];
}

@end