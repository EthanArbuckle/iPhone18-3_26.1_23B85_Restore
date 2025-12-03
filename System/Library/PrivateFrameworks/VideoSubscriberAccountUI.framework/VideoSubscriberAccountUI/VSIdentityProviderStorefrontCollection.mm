@interface VSIdentityProviderStorefrontCollection
- (VSIdentityProviderStorefrontCollection)init;
- (id)allIdentityProviders;
- (id)featuredIdentityProviders;
- (void)featureProvidersInCurrentStorefront;
@end

@implementation VSIdentityProviderStorefrontCollection

- (VSIdentityProviderStorefrontCollection)init
{
  v8.receiver = self;
  v8.super_class = VSIdentityProviderStorefrontCollection;
  v2 = [(VSIdentityProviderStorefrontCollection *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableFeaturedIdentityProviders = v2->_mutableFeaturedIdentityProviders;
    v2->_mutableFeaturedIdentityProviders = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableAllIdentityProviders = v2->_mutableAllIdentityProviders;
    v2->_mutableAllIdentityProviders = v5;
  }

  return v2;
}

- (id)featuredIdentityProviders
{
  mutableFeaturedIdentityProviders = [(VSIdentityProviderStorefrontCollection *)self mutableFeaturedIdentityProviders];
  v3 = [mutableFeaturedIdentityProviders copy];

  return v3;
}

- (id)allIdentityProviders
{
  mutableAllIdentityProviders = [(VSIdentityProviderStorefrontCollection *)self mutableAllIdentityProviders];
  v3 = [mutableAllIdentityProviders copy];

  return v3;
}

- (void)featureProvidersInCurrentStorefront
{
  v28 = *MEMORY[0x277D85DE8];
  storefrontTwoCharCode = [(VSIdentityProviderStorefrontCollection *)self storefrontTwoCharCode];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(VSIdentityProviderStorefrontCollection *)self featuredIdentityProviders];
  v17 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v17)
  {
    v16 = *v23;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        storefronts = [v5 storefronts];
        v7 = [storefronts countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v19;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v19 != v9)
              {
                objc_enumerationMutation(storefronts);
              }

              v11 = *(*(&v18 + 1) + 8 * j);
              storefrontTwoCharCode2 = [v11 storefrontTwoCharCode];
              if ([storefrontTwoCharCode2 isEqualToString:storefrontTwoCharCode])
              {
                rankForSorting = [v5 rankForSorting];

                if (rankForSorting)
                {
                  continue;
                }

                storefrontTwoCharCode2 = [v11 sortOrdinal];
                [v5 setRankForSorting:storefrontTwoCharCode2];
              }
            }

            v8 = [storefronts countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v8);
        }
      }

      v17 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v17);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end