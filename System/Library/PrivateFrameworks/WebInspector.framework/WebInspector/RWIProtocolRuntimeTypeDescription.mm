@interface RWIProtocolRuntimeTypeDescription
- (BOOL)isTruncated;
- (BOOL)isValid;
- (NSArray)structures;
- (NSString)leastCommonAncestor;
- (RWIProtocolRuntimeTypeSet)typeSet;
- (void)setLeastCommonAncestor:(id)ancestor;
- (void)setStructures:(id)structures;
- (void)setTypeSet:(id)set;
@end

@implementation RWIProtocolRuntimeTypeDescription

- (BOOL)isValid
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeDescription;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isValid"];
}

- (void)setLeastCommonAncestor:(id)ancestor
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeDescription;
  [(RWIProtocolJSONObject *)&v3 setString:ancestor forKey:@"leastCommonAncestor"];
}

- (NSString)leastCommonAncestor
{
  v4.receiver = self;
  v4.super_class = RWIProtocolRuntimeTypeDescription;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"leastCommonAncestor"];

  return v2;
}

- (void)setTypeSet:(id)set
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeDescription;
  [(RWIProtocolJSONObject *)&v3 setObject:set forKey:@"typeSet"];
}

- (RWIProtocolRuntimeTypeSet)typeSet
{
  v14.receiver = self;
  v14.super_class = RWIProtocolRuntimeTypeDescription;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"typeSet"];
  if (v3)
  {
    v4 = [RWIProtocolRuntimeTypeSet alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolRuntimeTypeDescription;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"typeSet"];
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

- (void)setStructures:(id)structures
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = structures;
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
  v15.super_class = RWIProtocolRuntimeTypeDescription;
  [(RWIProtocolJSONObject *)&v15 setJSONArray:&v16 forKey:@"structures"];
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

- (NSArray)structures
{
  v4.receiver = self;
  v4.super_class = RWIProtocolRuntimeTypeDescription;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"structures"];
  v2 = Inspector::toObjCArray<RWIProtocolRuntimeStructureDescription>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (BOOL)isTruncated
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeDescription;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isTruncated"];
}

@end