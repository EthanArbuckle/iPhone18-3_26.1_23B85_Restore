@interface PGDeduper
- (BOOL)itemIsRequired:(id)required;
- (id)requiredItemsInItems:(id)items;
@end

@implementation PGDeduper

- (id)requiredItemsInItems:(id)items
{
  v23 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  identifiersOfRequiredItems = self->_identifiersOfRequiredItems;
  if (identifiersOfRequiredItems && [(NSSet *)identifiersOfRequiredItems count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = itemsCopy;
    v6 = itemsCopy;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = self->_identifiersOfRequiredItems;
          clsIdentifier = [v12 clsIdentifier];
          LODWORD(v13) = [(NSSet *)v13 containsObject:clsIdentifier];

          if (v13)
          {
            if (!v9)
            {
              v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v9 addObject:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    itemsCopy = v17;
  }

  else
  {
    v9 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)itemIsRequired:(id)required
{
  identifiersOfRequiredItems = self->_identifiersOfRequiredItems;
  if (!identifiersOfRequiredItems)
  {
    return 0;
  }

  clsIdentifier = [required clsIdentifier];
  v5 = [(NSSet *)identifiersOfRequiredItems containsObject:clsIdentifier];

  return v5;
}

@end