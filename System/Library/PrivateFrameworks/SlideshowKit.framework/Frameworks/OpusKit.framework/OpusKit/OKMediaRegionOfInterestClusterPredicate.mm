@interface OKMediaRegionOfInterestClusterPredicate
- (OKMediaRegionOfInterestClusterPredicate)init;
- (id)evaluateItems:(id)items progressBlock:(id)block;
- (id)title;
- (void)dealloc;
@end

@implementation OKMediaRegionOfInterestClusterPredicate

- (OKMediaRegionOfInterestClusterPredicate)init
{
  v5.receiver = self;
  v5.super_class = OKMediaRegionOfInterestClusterPredicate;
  v2 = [(OKMediaClusterPredicate *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(OKMediaClusterPredicate *)v2 setUniqueID:@"roi"];
    [(OKMediaClusterPredicate *)v3 setCategory:2];
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OKMediaRegionOfInterestClusterPredicate;
  [(OKMediaClusterPredicate *)&v2 dealloc];
}

- (id)title
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return [v2 localizedStringForKey:@"Faces" value:@"Faces" table:@"Localizable"];
}

- (id)evaluateItems:(id)items progressBlock:(id)block
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  context = objc_autoreleasePoolPush();
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v7 = [items countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v50;
    v40 = v5;
    v35 = *v50;
    itemsCopy = items;
    do
    {
      v11 = 0;
      v37 = v8;
      do
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(items);
        }

        v12 = *(*(&v49 + 1) + 8 * v11);
        v13 = [objc_msgSend(v12 "metadata")];
        if (v13 && (v14 = v13, [v13 count]))
        {
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v15 = [v14 countByEnumeratingWithState:&v45 objects:v54 count:16];
          if (v15)
          {
            v16 = v15;
            v38 = v9;
            v17 = *v46;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v46 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v45 + 1) + 8 * i);
                v20 = [dictionary objectForKey:v19];
                if (v20)
                {
                  [objc_msgSend(v20 "items")];
                }

                else
                {
                  v21 = objc_alloc_init(OKMediaCluster);
                  [(OKMediaCluster *)v21 setTitle:v19];
                  [(NSMutableArray *)[(OKMediaCluster *)v21 items] addObject:v12];
                  [dictionary setObject:v21 forKey:v19];
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v45 objects:v54 count:16];
            }

            while (v16);
            v9 = v38;
            v10 = v35;
            items = itemsCopy;
          }

          v8 = v37;
        }

        else
        {
          if (!v9)
          {
            v9 = objc_alloc_init(OKMediaCluster);
            -[OKMediaCluster setTitle:](v9, "setTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"Unspecified", @"Unspecified", @"Localizable"}]);
            [(OKMediaCluster *)v9 setIsUnknown:1];
          }

          [(NSMutableArray *)[(OKMediaCluster *)v9 items] addObject:v12];
        }

        ++v11;
        v5 = v40;
      }

      while (v11 != v8);
      v8 = [items countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v39 = v9;
  v22 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"self" ascending:1];
  allKeys = [dictionary allKeys];
  v24 = [allKeys sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", v22)}];
  v25 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"creationDate" ascending:0];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v26 = [v24 countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v42;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v42 != v28)
        {
          objc_enumerationMutation(v24);
        }

        v30 = [dictionary objectForKey:*(*(&v41 + 1) + 8 * j)];
        items = [v30 items];
        [items sortUsingDescriptors:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", v25)}];
        [v5 addObject:v30];
      }

      v27 = [v24 countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v27);
  }

  if (v39)
  {
    items2 = [(OKMediaCluster *)v39 items];
    -[NSMutableArray sortUsingDescriptors:](items2, "sortUsingDescriptors:", [MEMORY[0x277CBEA60] arrayWithObject:v25]);
    [v5 addObject:v39];
  }

  objc_autoreleasePoolPop(context);
  return v5;
}

@end