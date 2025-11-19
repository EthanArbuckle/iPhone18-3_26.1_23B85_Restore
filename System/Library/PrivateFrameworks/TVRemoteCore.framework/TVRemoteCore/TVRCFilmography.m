@interface TVRCFilmography
+ (id)filmographyWithDictionaries:(id)a3;
- (TVRCFilmography)initWithDictionaries:(id)a3;
@end

@implementation TVRCFilmography

- (TVRCFilmography)initWithDictionaries:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = TVRCFilmography;
  v5 = [(TVRCFilmography *)&v20 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [TVRCFilmographyCategory filmographyCategoryWithDictionary:*(*(&v16 + 1) + 8 * v11), v16];
          [(NSArray *)v6 addObject:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v9);
    }

    categories = v5->_categories;
    v5->_categories = v6;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)filmographyWithDictionaries:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDictionaries:v4];

  return v5;
}

@end