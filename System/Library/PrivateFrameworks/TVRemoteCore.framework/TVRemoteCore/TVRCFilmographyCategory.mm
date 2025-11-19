@interface TVRCFilmographyCategory
+ (id)filmographyCategoryWithDictionary:(id)a3;
- (NSArray)orderedItems;
- (TVRCFilmographyCategory)initWithDictionary:(id)a3;
@end

@implementation TVRCFilmographyCategory

- (TVRCFilmographyCategory)initWithDictionary:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = TVRCFilmographyCategory;
  v5 = [(TVRCFilmographyCategory *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = [v4 objectForKeyedSubscript:@"items"];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [TVRCMediaInfo mediaInfoWithDictionary:*(*(&v18 + 1) + 8 * v13)];
          [(NSArray *)v8 addObject:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }

    items = v5->_items;
    v5->_items = v8;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)filmographyCategoryWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDictionary:v4];

  return v5;
}

- (NSArray)orderedItems
{
  if (!self->_orderedItems)
  {
    v3 = [(TVRCFilmographyCategory *)self items];
    v4 = [v3 count];

    if (v4)
    {
      v5 = [(TVRCFilmographyCategory *)self items];
      v6 = [v5 mutableCopy];

      [(NSArray *)v6 sortUsingComparator:&__block_literal_global];
      orderedItems = self->_orderedItems;
      self->_orderedItems = v6;
    }
  }

  if (self->_orderedItems)
  {
    v8 = self->_orderedItems;
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

uint64_t __39__TVRCFilmographyCategory_orderedItems__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 releaseDate];
  v6 = [v4 releaseDate];

  v7 = 0;
  if (v5 && v6)
  {
    v7 = [v6 compare:v5];
  }

  return v7;
}

@end