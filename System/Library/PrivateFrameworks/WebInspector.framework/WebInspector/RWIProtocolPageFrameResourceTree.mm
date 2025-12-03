@interface RWIProtocolPageFrameResourceTree
- (NSArray)childFrames;
- (NSArray)resources;
- (RWIProtocolPageFrame)frame;
- (RWIProtocolPageFrameResourceTree)initWithFrame:(id)frame resources:(id)resources;
- (void)setChildFrames:(id)frames;
- (void)setFrame:(id)frame;
- (void)setResources:(id)resources;
@end

@implementation RWIProtocolPageFrameResourceTree

- (RWIProtocolPageFrameResourceTree)initWithFrame:(id)frame resources:(id)resources
{
  v28 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  resourcesCopy = resources;
  v26.receiver = self;
  v26.super_class = RWIProtocolPageFrameResourceTree;
  v6 = [(RWIProtocolJSONObject *)&v26 init];
  if (v6)
  {
    if (!frameCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"frame"}];
    }

    if (!resourcesCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"resources"}];
    }

    v19 = v6;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = resourcesCopy;
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
    [(RWIProtocolPageFrameResourceTree *)v19 setFrame:frameCopy];
    [(RWIProtocolPageFrameResourceTree *)v19 setResources:v7];
    v16 = v19;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)setFrame:(id)frame
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageFrameResourceTree;
  [(RWIProtocolJSONObject *)&v3 setObject:frame forKey:@"frame"];
}

- (RWIProtocolPageFrame)frame
{
  v14.receiver = self;
  v14.super_class = RWIProtocolPageFrameResourceTree;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"frame"];
  if (v3)
  {
    v4 = [RWIProtocolPageFrame alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolPageFrameResourceTree;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"frame"];
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

- (void)setChildFrames:(id)frames
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = frames;
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
  v15.super_class = RWIProtocolPageFrameResourceTree;
  [(RWIProtocolJSONObject *)&v15 setJSONArray:&v16 forKey:@"childFrames"];
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

- (NSArray)childFrames
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageFrameResourceTree;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"childFrames"];
  v2 = Inspector::toObjCArray<RWIProtocolPageFrameResourceTree>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setResources:(id)resources
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = resources;
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
  v15.super_class = RWIProtocolPageFrameResourceTree;
  [(RWIProtocolJSONObject *)&v15 setJSONArray:&v16 forKey:@"resources"];
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

- (NSArray)resources
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageFrameResourceTree;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"resources"];
  v2 = Inspector::toObjCArray<RWIProtocolPageFrameResource>(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

@end