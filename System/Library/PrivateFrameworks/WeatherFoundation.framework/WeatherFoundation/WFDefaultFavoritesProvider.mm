@interface WFDefaultFavoritesProvider
- (WFDefaultFavoritesProvider)initWithDelegate:(id)delegate persistence:(id)persistence;
- (WFFavoriteLocationProviderDelegate)delegate;
- (id)locationFromCity:(id)city;
- (id)locations;
@end

@implementation WFDefaultFavoritesProvider

- (WFDefaultFavoritesProvider)initWithDelegate:(id)delegate persistence:(id)persistence
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = WFDefaultFavoritesProvider;
  v6 = [(WFDefaultFavoritesProvider *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_delegate, delegateCopy);
    v8 = v7;
  }

  return v7;
}

- (id)locations
{
  v22 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  mEMORY[0x277CEC588] = [MEMORY[0x277CEC588] sharedManager];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  v7 = [mEMORY[0x277CEC588] defaultCitiesForLocaleCode:localeIdentifier];

  if (v7 || ([MEMORY[0x277CEC588] sharedManager], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CBEAF8], "currentLocale"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKey:", *MEMORY[0x277CBE690]), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "defaultCitiesForLocaleCode:", v10), v7 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v7))
  {
    if ([v7 count])
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = v7;
      v11 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v18;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(v7);
            }

            v15 = [(WFDefaultFavoritesProvider *)self locationFromCity:*(*(&v17 + 1) + 8 * i), v17];
            [array addObject:v15];
          }

          v12 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v12);
      }
    }
  }

  return array;
}

- (id)locationFromCity:(id)city
{
  cityCopy = city;
  v4 = objc_alloc_init(WFLocation);
  name = [cityCopy name];
  [(WFLocation *)v4 setCity:name];

  v6 = objc_alloc(MEMORY[0x277CE41F8]);
  [cityCopy latitude];
  v8 = v7;
  [cityCopy longitude];
  v10 = v9;

  v11 = [v6 initWithLatitude:v8 longitude:v10];
  [(WFLocation *)v4 setGeoLocation:v11];

  return v4;
}

- (WFFavoriteLocationProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end