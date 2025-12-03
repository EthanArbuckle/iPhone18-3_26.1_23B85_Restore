@interface VUIJSManagedArray
- (VUIJSManagedArray)initWithArray:(id)array ownerObject:(id)object;
- (id)jsValuesWithContext:(id)context;
- (void)dealloc;
@end

@implementation VUIJSManagedArray

- (VUIJSManagedArray)initWithArray:(id)array ownerObject:(id)object
{
  v30 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  objectCopy = object;
  v28.receiver = self;
  v28.super_class = VUIJSManagedArray;
  v8 = [(VUIJSManagedArray *)&v28 init];
  v9 = v8;
  if (v8)
  {
    v22 = objectCopy;
    objc_storeStrong(&v8->_ownerObject, object);
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(arrayCopy, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = arrayCopy;
    v11 = arrayCopy;
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
            toObject = [MEMORY[0x1E696EB48] managedValueWithValue:v16];
            context = [v16 context];
            virtualMachine = [context virtualMachine];
            [virtualMachine addManagedReference:toObject withOwner:v9->_ownerObject];
          }

          else
          {
            toObject = [v16 toObject];
          }

          [(NSArray *)v10 addObject:toObject];
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v13);
    }

    managedArray = v9->_managedArray;
    v9->_managedArray = v10;

    objectCopy = v22;
    arrayCopy = v23;
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
  managedArray = [(VUIJSManagedArray *)self managedArray];
  v3 = [managedArray countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(managedArray);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          value = [v7 value];
          context = [value context];
          virtualMachine = [context virtualMachine];
          ownerObject = [(VUIJSManagedArray *)self ownerObject];
          [virtualMachine removeManagedReference:v7 withOwner:ownerObject];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [managedArray countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  [(VUIJSManagedArray *)self setManagedArray:0];
  v13.receiver = self;
  v13.super_class = VUIJSManagedArray;
  [(VUIJSManagedArray *)&v13 dealloc];
}

- (id)jsValuesWithContext:(id)context
{
  v21 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = MEMORY[0x1E695DF70];
  managedArray = [(VUIJSManagedArray *)self managedArray];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(managedArray, "count")}];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  managedArray2 = [(VUIJSManagedArray *)self managedArray];
  v9 = [managedArray2 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(managedArray2);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v13 value];
        }

        else
        {
          [MEMORY[0x1E696EB58] valueWithObject:v13 inContext:contextCopy];
        }
        v14 = ;
        [v7 addObject:v14];
      }

      v10 = [managedArray2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v7;
}

@end