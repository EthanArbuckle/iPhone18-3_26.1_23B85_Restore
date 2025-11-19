@interface VUIJSManagedArray
- (VUIJSManagedArray)initWithArray:(id)a3 ownerObject:(id)a4;
- (id)jsValuesWithContext:(id)a3;
- (void)dealloc;
@end

@implementation VUIJSManagedArray

- (VUIJSManagedArray)initWithArray:(id)a3 ownerObject:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = VUIJSManagedArray;
  v8 = [(VUIJSManagedArray *)&v28 init];
  v9 = v8;
  if (v8)
  {
    v22 = v7;
    objc_storeStrong(&v8->_ownerObject, a4);
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = v6;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          if ([v16 isObject])
          {
            v17 = [MEMORY[0x1E696EB48] managedValueWithValue:v16];
            v18 = [v16 context];
            v19 = [v18 virtualMachine];
            [v19 addManagedReference:v17 withOwner:v9->_ownerObject];
          }

          else
          {
            v17 = [v16 toObject];
          }

          [(NSArray *)v10 addObject:v17];
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v13);
    }

    managedArray = v9->_managedArray;
    v9->_managedArray = v10;

    v7 = v22;
    v6 = v23;
  }

  return v9;
}

- (void)dealloc
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [(VUIJSManagedArray *)self managedArray];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v7 value];
          v9 = [v8 context];
          v10 = [v9 virtualMachine];
          v11 = [(VUIJSManagedArray *)self ownerObject];
          [v10 removeManagedReference:v7 withOwner:v11];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  [(VUIJSManagedArray *)self setManagedArray:0];
  v13.receiver = self;
  v13.super_class = VUIJSManagedArray;
  [(VUIJSManagedArray *)&v13 dealloc];
}

- (id)jsValuesWithContext:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v6 = [(VUIJSManagedArray *)self managedArray];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(VUIJSManagedArray *)self managedArray];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v13 value];
        }

        else
        {
          [MEMORY[0x1E696EB58] valueWithObject:v13 inContext:v4];
        }
        v14 = ;
        [v7 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v7;
}

@end