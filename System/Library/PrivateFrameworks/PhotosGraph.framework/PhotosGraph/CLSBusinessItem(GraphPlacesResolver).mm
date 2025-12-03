@interface CLSBusinessItem(GraphPlacesResolver)
- (id)categoryNames;
@end

@implementation CLSBusinessItem(GraphPlacesResolver)

- (id)categoryNames
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  categories = [self categories];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [categories countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(categories);
        }

        v8 = +[PGGraphPlacesResolver poiStringFromSpatialLookupCategory:](PGGraphPlacesResolver, "poiStringFromSpatialLookupCategory:", [*(*(&v11 + 1) + 8 * i) integerValue]);
        if (v8)
        {
          [array addObject:v8];
        }
      }

      v5 = [categories countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return array;
}

@end