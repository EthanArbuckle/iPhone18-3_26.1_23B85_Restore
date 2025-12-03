@interface PFMetadataBuilder
- (PFMetadataBuilder)init;
- (id)combinedKeywordsAndPeople;
- (void)setCreationDate:(id)date timeZone:(id)zone;
@end

@implementation PFMetadataBuilder

- (id)combinedKeywordsAndPeople
{
  v19 = *MEMORY[0x1E69E9840];
  keywords = [(PFMetadataBuilder *)self keywords];
  peopleNames = [(PFMetadataBuilder *)self peopleNames];
  if ([keywords count])
  {
    v5 = [MEMORY[0x1E695DFD8] setWithArray:keywords];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(peopleNames, "count") + objc_msgSend(keywords, "count")}];
  if ([keywords count])
  {
    [v6 addObjectsFromArray:keywords];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = peopleNames;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (([v5 containsObject:{v12, v14}] & 1) == 0)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

- (void)setCreationDate:(id)date timeZone:(id)zone
{
  zoneCopy = zone;
  [(PFMetadataBuilder *)self setCreationDate:date];
  [(PFMetadataBuilder *)self setCreationTimeZone:zoneCopy];
}

- (PFMetadataBuilder)init
{
  v6.receiver = self;
  v6.super_class = PFMetadataBuilder;
  v2 = [(PFMetadataBuilder *)&v6 init];
  if (v2)
  {
    defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
    creationTimeZone = v2->_creationTimeZone;
    v2->_creationTimeZone = defaultTimeZone;
  }

  return v2;
}

@end