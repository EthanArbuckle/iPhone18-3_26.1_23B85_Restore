@interface OKMediaAspectRatioClusterPredicate
- (OKMediaAspectRatioClusterPredicate)init;
- (id)evaluateItems:(id)items progressBlock:(id)block;
- (id)title;
- (void)dealloc;
@end

@implementation OKMediaAspectRatioClusterPredicate

- (OKMediaAspectRatioClusterPredicate)init
{
  v5.receiver = self;
  v5.super_class = OKMediaAspectRatioClusterPredicate;
  v2 = [(OKMediaClusterPredicate *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(OKMediaClusterPredicate *)v2 setUniqueID:@"aspectRatio"];
    [(OKMediaClusterPredicate *)v3 setCategory:3];
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OKMediaAspectRatioClusterPredicate;
  [(OKMediaClusterPredicate *)&v2 dealloc];
}

- (id)title
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return [v2 localizedStringForKey:@"Aspect Ratio" value:@"Aspect Ratio" table:@"Localizable"];
}

- (id)evaluateItems:(id)items progressBlock:(id)block
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  context = objc_autoreleasePoolPush();
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33 = objc_alloc_init(OKMediaCluster);
  v6 = objc_alloc_init(OKMediaCluster);
  v7 = objc_alloc_init(OKMediaCluster);
  v8 = objc_alloc_init(OKMediaCluster);
  v9 = objc_alloc_init(OKMediaCluster);
  -[OKMediaCluster setTitle:](v33, "setTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"Panorama", @"Panorama", @"Localizable"}]);
  -[OKMediaCluster setTitle:](v6, "setTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"Landscape", @"Landscape", @"Localizable"}]);
  -[OKMediaCluster setTitle:](v7, "setTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"Square", @"Square", @"Localizable"}]);
  -[OKMediaCluster setTitle:](v8, "setTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"Portrait", @"Portrait", @"Localizable"}]);
  -[OKMediaCluster setTitle:](v9, "setTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"Vertical Panorama", @"Vertical Panorama", @"Localizable"}]);
  [v5 addObject:v33];
  [v5 addObject:v6];
  [v5 addObject:v7];
  [v5 addObject:v8];
  [v5 addObject:v9];

  v10 = v6;
  v11 = v7;

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = [items countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v43;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v43 != v14)
        {
          objc_enumerationMutation(items);
        }

        v16 = *(*(&v42 + 1) + 8 * i);
        [objc_msgSend(v16 "metadata")];
        v18 = v9;
        if (v17 >= 0.5)
        {
          v18 = v8;
          if (v17 >= 0.899999976)
          {
            v18 = v11;
            if (v17 >= 1.10000002)
            {
              if (v17 >= 2.0)
              {
                v18 = v33;
              }

              else
              {
                v18 = v10;
              }
            }
          }
        }

        [(NSMutableArray *)[(OKMediaCluster *)v18 items] addObject:v16];
      }

      v13 = [items countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v13);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v19 = [v5 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v39;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v39 != v21)
        {
          objc_enumerationMutation(v5);
        }

        v23 = *(*(&v38 + 1) + 8 * j);
        if (![objc_msgSend(v23 "items")])
        {
          [v5 removeObject:v23];
        }
      }

      v20 = [v5 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v20);
  }

  v24 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"creationDate" ascending:0];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v25 = [v5 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v35;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(v5);
        }

        items = [*(*(&v34 + 1) + 8 * k) items];
        [items sortUsingDescriptors:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", v24)}];
      }

      v26 = [v5 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v26);
  }

  objc_autoreleasePoolPop(context);
  return v5;
}

@end