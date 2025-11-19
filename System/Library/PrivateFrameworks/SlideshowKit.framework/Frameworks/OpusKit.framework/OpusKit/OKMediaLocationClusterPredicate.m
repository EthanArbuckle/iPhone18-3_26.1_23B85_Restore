@interface OKMediaLocationClusterPredicate
- (OKMediaLocationClusterPredicate)initWithType:(unint64_t)a3;
- (id)evaluateItems:(id)a3 progressBlock:(id)a4;
- (id)title;
- (void)dealloc;
@end

@implementation OKMediaLocationClusterPredicate

- (OKMediaLocationClusterPredicate)initWithType:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = OKMediaLocationClusterPredicate;
  v4 = [(OKMediaClusterPredicate *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3;
    -[OKMediaClusterPredicate setUniqueID:](v4, "setUniqueID:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%lu", @"location", a3]);
    [(OKMediaClusterPredicate *)v5 setCategory:1];
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OKMediaLocationClusterPredicate;
  [(OKMediaClusterPredicate *)&v2 dealloc];
}

- (id)title
{
  type = self->_type;
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (type <= 2)
  {
    if (type == 1)
    {
      v4 = @"Country";
      goto LABEL_13;
    }

    if (type == 2)
    {
      v4 = @"State or Province";
      goto LABEL_13;
    }
  }

  else
  {
    switch(type)
    {
      case 3:
        v4 = @"City";
        goto LABEL_13;
      case 4:
        v4 = @"Neighborhood";
        goto LABEL_13;
      case 5:
        v4 = @"Place";
        goto LABEL_13;
    }
  }

  v4 = @"Unknown";
LABEL_13:

  return [v3 localizedStringForKey:v4 value:v4 table:@"Localizable"];
}

- (id)evaluateItems:(id)a3 progressBlock:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  context = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = objc_alloc_init(OKMediaCluster);
  -[OKMediaCluster setTitle:](v7, "setTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"Unspecified", @"Unspecified", @"Localizable"}]);
  [(OKMediaCluster *)v7 setIsUnknown:1];
  v8 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"creationDate" ascending:0];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [a3 sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", v8)}];
  v9 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v38;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        v13 = v7;
        if (*v38 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v37 + 1) + 8 * i);
        v15 = [objc_msgSend(v14 "metadata")];
        if (v15)
        {
          v16 = v15;
          v17 = MEMORY[0x277D62788];
          [MEMORY[0x277D62788] recommendedAccuracy];
          v18 = [v17 operationWithLocation:v16 accuracy:?];
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __63__OKMediaLocationClusterPredicate_evaluateItems_progressBlock___block_invoke;
          v36[3] = &unk_279C8FB08;
          v7 = v13;
          v36[4] = v13;
          v36[5] = v14;
          v36[6] = self;
          v36[7] = v6;
          [v18 setFinishBlock:v36];
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __63__OKMediaLocationClusterPredicate_evaluateItems_progressBlock___block_invoke_2;
          v35[3] = &unk_279C8E868;
          v35[4] = a4;
          [v18 performSynchronously:v35];
        }

        else
        {
          [(NSMutableArray *)[(OKMediaCluster *)v7 items] addObject:v14];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v10);
  }

  v19 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"self" ascending:1];
  v20 = [v6 allKeys];
  v21 = [v20 sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", v19)}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v22 = [v21 countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v32;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [v28 addObject:{objc_msgSend(v6, "objectForKey:", *(*(&v31 + 1) + 8 * j))}];
      }

      v23 = [v21 countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v23);
  }

  if ([(NSMutableArray *)[(OKMediaCluster *)v7 items] count])
  {
    [v28 addObject:v7];
  }

  objc_autoreleasePoolPop(context);
  return v28;
}

void __63__OKMediaLocationClusterPredicate_evaluateItems_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [objc_msgSend(a2 "placemarks")];
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = *(*(a1 + 48) + 24);
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      v5 = [v3 country];
    }

    else
    {
      if (v4 != 2)
      {
        goto LABEL_18;
      }

      v5 = [v3 administrativeArea];
    }
  }

  else
  {
    switch(v4)
    {
      case 3:
        v5 = [v3 locality];
        break;
      case 4:
        v5 = [v3 subLocality];
        break;
      case 5:
        v5 = [objc_msgSend(v3 "areasOfInterest")];
        break;
      default:
LABEL_18:
        v7 = *(a1 + 32);
        goto LABEL_19;
    }
  }

  v6 = v5;
  if (!v5)
  {
    goto LABEL_18;
  }

  v7 = [*(a1 + 56) objectForKey:v5];
  if (!v7)
  {
    v10 = objc_alloc_init(OKMediaCluster);
    [(OKMediaCluster *)v10 setTitle:v6];
    [(NSMutableArray *)[(OKMediaCluster *)v10 items] addObject:*(a1 + 40)];
    [*(a1 + 56) setObject:v10 forKey:v6];

    return;
  }

LABEL_19:
  v8 = [v7 items];
  v9 = *(a1 + 40);

  [v8 addObject:v9];
}

@end