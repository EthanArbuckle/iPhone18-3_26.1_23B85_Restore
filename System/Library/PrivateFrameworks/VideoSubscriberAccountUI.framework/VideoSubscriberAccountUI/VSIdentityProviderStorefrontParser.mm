@interface VSIdentityProviderStorefrontParser
- (NSArray)tvProviderSupportedStorefronts;
- (NSDictionary)identityProvidersByStorefront;
- (VSIdentityProviderStorefrontParser)init;
- (id)providersForStorefront:(id)a3 featuredOnly:(BOOL)a4;
- (id)updateFeaturedStorefronts:(id)a3 withCurrentStorefrontCodeOrNil:(id)a4;
- (void)setAllStorefronts:(id)a3 withCurrentStorefrontCode:(id)a4;
@end

@implementation VSIdentityProviderStorefrontParser

- (VSIdentityProviderStorefrontParser)init
{
  v10.receiver = self;
  v10.super_class = VSIdentityProviderStorefrontParser;
  v2 = [(VSIdentityProviderStorefrontParser *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA60]);
    allIdentityProviders = v2->_allIdentityProviders;
    v2->_allIdentityProviders = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEA60]);
    allStorefronts = v2->_allStorefronts;
    v2->_allStorefronts = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    storefrontsByCountryCode = v2->_storefrontsByCountryCode;
    v2->_storefrontsByCountryCode = v7;
  }

  return v2;
}

- (void)setAllStorefronts:(id)a3 withCurrentStorefrontCode:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [(VSIdentityProviderStorefrontParser *)self updateFeaturedStorefronts:a3 withCurrentStorefrontCodeOrNil:a4];
  objc_storeStrong(&self->_allStorefronts, v5);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 identitifer];
        [v6 setObject:v12 forKey:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v14 = objc_alloc_init(VSStorefront);
  v15 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v16 = [v15 localizedStringForKey:@"REGIONS_PICKER_SETTINGS_DEVELOPER_PROVIDERS_DISPLAY_NAME" value:0 table:0];
  [(VSStorefront *)v14 setDisplayName:v16];

  [(VSStorefront *)v14 setIdentitifer:@"__"];
  [(VSStorefront *)v14 setIsFeatured:1];
  [v6 setObject:v14 forKey:@"__"];
  v17 = [v6 copy];
  [(VSIdentityProviderStorefrontParser *)self setStorefrontsByCountryCode:v17];

  v18 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)identityProvidersByStorefront
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = [(VSIdentityProviderStorefrontParser *)self allIdentityProviders];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v2;
  v5 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  v35 = v3;
  if (v5)
  {
    v6 = v5;
    v7 = *v43;
    v34 = *MEMORY[0x277CBE660];
    v29 = *v43;
    v30 = v4;
    do
    {
      v8 = 0;
      v31 = v6;
      do
      {
        if (*v43 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v42 + 1) + 8 * v8);
        if ([v9 isDeveloper])
        {
          [v4 addObject:v9];
        }

        else
        {
          v33 = v8;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v37 = [v9 storefronts];
          v10 = [v37 countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v39;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v39 != v12)
                {
                  objc_enumerationMutation(v37);
                }

                v14 = *(*(&v38 + 1) + 8 * i);
                v15 = [v14 storefrontTwoCharCode];
                v16 = [v3 objectForKey:v15];
                if (!v16)
                {
                  v16 = objc_alloc_init(VSIdentityProviderStorefrontCollection);
                  [(VSIdentityProviderStorefrontCollection *)v16 setStorefrontTwoCharCode:v15];
                  v17 = [(VSIdentityProviderStorefrontParser *)self storefrontsByCountryCode];
                  v18 = [v17 valueForKey:v15];
                  v19 = [v18 displayName];

                  if (v19)
                  {
                    v20 = v19;
                  }

                  else
                  {
                    v20 = v15;
                  }

                  [(VSIdentityProviderStorefrontCollection *)v16 setLocalizedDisplayName:v20];
                  if (!v16)
                  {
                    [MEMORY[0x277CBEAD8] raise:v34 format:@"The sfCollection parameter must not be nil."];
                  }

                  v3 = v35;
                  [v35 setObject:v16 forKey:v15];
                }

                v21 = [(VSIdentityProviderStorefrontCollection *)v16 mutableAllIdentityProviders];
                [v21 addObject:v9];

                if ([v14 isFeatured])
                {
                  v22 = [(VSIdentityProviderStorefrontCollection *)v16 mutableFeaturedIdentityProviders];
                  [v22 addObject:v9];
                }
              }

              v11 = [v37 countByEnumeratingWithState:&v38 objects:v46 count:16];
            }

            while (v11);
          }

          v7 = v29;
          v4 = v30;
          v6 = v31;
          v8 = v33;
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    v23 = objc_alloc_init(VSIdentityProviderStorefrontCollection);
    [(VSIdentityProviderStorefrontCollection *)v23 setStorefrontTwoCharCode:@"__"];
    v24 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v25 = [v24 localizedStringForKey:@"REGIONS_PICKER_SETTINGS_DEVELOPER_PROVIDERS_DISPLAY_NAME" value:0 table:0];
    [(VSIdentityProviderStorefrontCollection *)v23 setLocalizedDisplayName:v25];

    v3 = v35;
    [(VSIdentityProviderStorefrontCollection *)v23 setMutableAllIdentityProviders:v4];
    [v35 setObject:v23 forKey:@"__"];
  }

  v26 = [v3 copy];
  [(VSIdentityProviderStorefrontParser *)self setProvidersByStorefront:v26];

  v27 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSArray)tvProviderSupportedStorefronts
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(VSIdentityProviderStorefrontParser *)self providersByStorefront];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(VSIdentityProviderStorefrontParser *)self identityProvidersByStorefront];
  }

  v6 = v5;

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [(VSIdentityProviderStorefrontParser *)self storefrontsByCountryCode];
        v15 = [v14 objectForKey:v13];

        if (v15)
        {
          [v7 addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)providersForStorefront:(id)a3 featuredOnly:(BOOL)a4
{
  v21 = a4;
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(VSIdentityProviderStorefrontParser *)self allIdentityProviders];
  v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v23)
  {
    v22 = *v29;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v8 = [v7 storefronts];
        v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v25;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v25 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v24 + 1) + 8 * j);
              v14 = [v13 storefrontTwoCharCode];
              v15 = [v14 isEqualToString:v5];

              if (v15)
              {
                if (!v21 || [v13 isFeatured])
                {
                  [v19 addObject:v7];
                }

                goto LABEL_18;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

LABEL_18:
      }

      v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v23);
  }

  v16 = [v19 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)updateFeaturedStorefronts:(id)a3 withCurrentStorefrontCodeOrNil:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [v13 identitifer];
          v15 = [v14 isEqualToString:v6];

          [v13 setIsFeatured:v15];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v16 = [v7 copy];
  }

  else
  {
    v16 = v5;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

@end