@interface OKMediaTypeClusterPredicate
- (OKMediaTypeClusterPredicate)init;
- (id)evaluateItems:(id)items progressBlock:(id)block;
- (id)title;
- (void)dealloc;
@end

@implementation OKMediaTypeClusterPredicate

- (OKMediaTypeClusterPredicate)init
{
  v5.receiver = self;
  v5.super_class = OKMediaTypeClusterPredicate;
  v2 = [(OKMediaClusterPredicate *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(OKMediaClusterPredicate *)v2 setUniqueID:@"type"];
    [(OKMediaClusterPredicate *)v3 setCategory:3];
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OKMediaTypeClusterPredicate;
  [(OKMediaClusterPredicate *)&v2 dealloc];
}

- (id)title
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return [v2 localizedStringForKey:@"Type" value:@"Type" table:@"Localizable"];
}

- (id)evaluateItems:(id)items progressBlock:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc_init(OKMediaCluster);
  v8 = objc_alloc_init(OKMediaCluster);
  v9 = objc_alloc_init(OKMediaCluster);
  -[OKMediaCluster setTitle:](v7, "setTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"Images", @"Images", @"Localizable"}]);
  -[OKMediaCluster setTitle:](v8, "setTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"Videos", @"Videos", @"Localizable"}]);
  -[OKMediaCluster setTitle:](v9, "setTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"Unknown", @"Unknown", @"Localizable"}]);
  [(OKMediaCluster *)v9 setIsUnknown:1];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = [items countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(items);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = [objc_msgSend(v14 "metadata")];
        v16 = v7;
        if (v15 != 2)
        {
          if ([objc_msgSend(v14 "metadata")] == 3)
          {
            v16 = v8;
          }

          else
          {
            v16 = v9;
          }
        }

        [(NSMutableArray *)[(OKMediaCluster *)v16 items] addObject:v14];
      }

      v11 = [items countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v11);
  }

  if ([(NSMutableArray *)[(OKMediaCluster *)v7 items] count])
  {
    [v5 addObject:v7];
  }

  if ([(NSMutableArray *)[(OKMediaCluster *)v8 items] count])
  {
    [v5 addObject:v8];
  }

  if ([(NSMutableArray *)[(OKMediaCluster *)v9 items] count])
  {
    [v5 addObject:v9];
  }

  v17 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"creationDate" ascending:0];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v5);
        }

        items = [*(*(&v24 + 1) + 8 * j) items];
        [items sortUsingDescriptors:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", v17)}];
      }

      v19 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v19);
  }

  objc_autoreleasePoolPop(v6);
  return v5;
}

@end