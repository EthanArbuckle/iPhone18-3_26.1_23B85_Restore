@interface _UIActivityPlaceholderItemProxy
+ (id)unproxiedItemForItem:(id)item;
+ (id)unproxiedItemsForItems:(id)items;
- (_UIActivityPlaceholderItemProxy)initWithPlaceholderItem:(id)item;
@end

@implementation _UIActivityPlaceholderItemProxy

+ (id)unproxiedItemForItem:(id)item
{
  itemCopy = item;
  v4 = itemCopy;
  if ([itemCopy isProxy])
  {
    placeholderItem = [itemCopy placeholderItem];
    v6 = placeholderItem;
    if (placeholderItem)
    {
      v7 = placeholderItem;
    }

    else
    {
      v7 = itemCopy;
    }

    v4 = v7;
  }

  return v4;
}

+ (id)unproxiedItemsForItems:(id)items
{
  v18 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = itemsCopy;
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

        v11 = [self unproxiedItemForItem:{*(*(&v13 + 1) + 8 * i), v13}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (_UIActivityPlaceholderItemProxy)initWithPlaceholderItem:(id)item
{
  objc_storeStrong(&self->_uikit_placeholderItem, item);
  itemCopy = item;
  objc_setAssociatedObject(self, &__UIActivityPlaceholderItemAssocitatedObjectKey, itemCopy, 1);

  return self;
}

@end