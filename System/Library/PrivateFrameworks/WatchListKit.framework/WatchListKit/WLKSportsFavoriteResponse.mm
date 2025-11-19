@interface WLKSportsFavoriteResponse
- (WLKSportsFavoriteResponse)initWithDictionary:(id)a3;
@end

@implementation WLKSportsFavoriteResponse

- (WLKSportsFavoriteResponse)initWithDictionary:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = WLKSportsFavoriteResponse;
  v5 = [(WLKSportsFavoriteResponse *)&v22 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [v4 wlk_arrayForKey:{@"data", 0}];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * v11);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [WLKSportsFavoriteFactory favoriteFromDictionary:v12];
            if (v13)
            {
              [v6 addObject:v13];
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v9);
    }

    v14 = [v6 copy];
    favorites = v5->_favorites;
    v5->_favorites = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

@end