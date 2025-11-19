@interface _UIActivityPlaceholderItemProxy
+ (id)unproxiedItemForItem:(id)a3;
+ (id)unproxiedItemsForItems:(id)a3;
- (_UIActivityPlaceholderItemProxy)initWithPlaceholderItem:(id)a3;
@end

@implementation _UIActivityPlaceholderItemProxy

+ (id)unproxiedItemForItem:(id)a3
{
  v3 = a3;
  v4 = v3;
  if ([v3 isProxy])
  {
    v5 = [v3 placeholderItem];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }

    v4 = v7;
  }

  return v4;
}

+ (id)unproxiedItemsForItems:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 unproxiedItemForItem:{*(*(&v13 + 1) + 8 * i), v13}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (_UIActivityPlaceholderItemProxy)initWithPlaceholderItem:(id)a3
{
  objc_storeStrong(&self->_uikit_placeholderItem, a3);
  v5 = a3;
  objc_setAssociatedObject(self, &__UIActivityPlaceholderItemAssocitatedObjectKey, v5, 1);

  return self;
}

@end