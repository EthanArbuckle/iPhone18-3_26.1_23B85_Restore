@interface PFMetadataBuilder
- (PFMetadataBuilder)init;
- (id)combinedKeywordsAndPeople;
- (void)setCreationDate:(id)a3 timeZone:(id)a4;
@end

@implementation PFMetadataBuilder

- (id)combinedKeywordsAndPeople
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(PFMetadataBuilder *)self keywords];
  v4 = [(PFMetadataBuilder *)self peopleNames];
  if ([v3 count])
  {
    v5 = [MEMORY[0x1E695DFD8] setWithArray:v3];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count") + objc_msgSend(v3, "count")}];
  if ([v3 count])
  {
    [v6 addObjectsFromArray:v3];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v4;
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

- (void)setCreationDate:(id)a3 timeZone:(id)a4
{
  v6 = a4;
  [(PFMetadataBuilder *)self setCreationDate:a3];
  [(PFMetadataBuilder *)self setCreationTimeZone:v6];
}

- (PFMetadataBuilder)init
{
  v6.receiver = self;
  v6.super_class = PFMetadataBuilder;
  v2 = [(PFMetadataBuilder *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFE8] defaultTimeZone];
    creationTimeZone = v2->_creationTimeZone;
    v2->_creationTimeZone = v3;
  }

  return v2;
}

@end