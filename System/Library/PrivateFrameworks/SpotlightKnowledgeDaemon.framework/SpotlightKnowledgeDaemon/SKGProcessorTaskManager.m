@interface SKGProcessorTaskManager
+ (id)breadcrumbsTask;
+ (id)keyphraseTask;
+ (id)sharedManager;
- (SKGProcessorTaskManager)init;
@end

@implementation SKGProcessorTaskManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_1 != -1)
  {
    +[SKGProcessorTaskManager sharedManager];
  }

  v3 = sharedManager_sSharedManager_0;

  return v3;
}

void __40__SKGProcessorTaskManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(SKGProcessorTaskManager);
  v1 = sharedManager_sSharedManager_0;
  sharedManager_sSharedManager_0 = v0;
}

+ (id)keyphraseTask
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [[SKGProcessorTask alloc] initWithName:@"Keyphrase"];
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277D657A0] sharedContext];
  v5 = [v3 numberWithInteger:{objc_msgSend(v4, "keyphraseVersion")}];
  [(SKGProcessorTask *)v2 setVersionValue:v5];

  v6 = [MEMORY[0x277D657A0] sharedContext];
  LODWORD(v4) = [v6 enableExtractions];

  if (v4)
  {
    v7 = 516;
  }

  else
  {
    v7 = 4;
  }

  [(SKGProcessorTask *)v2 setProcessorFlags:v7];
  [(SKGProcessorTask *)v2 setSupportedEvent:1];
  v27 = v2;
  [(SKGProcessorTask *)v2 setEnabled:0];
  v8 = MEMORY[0x277CBEB58];
  v9 = [MEMORY[0x277D657A0] sharedContext];
  v10 = [v9 fetchAttributes];
  v11 = [v8 setWithArray:v10];

  v26 = v11;
  [v11 addObjectsFromArray:&unk_2846E84F0];
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = [MEMORY[0x277D657A0] sharedContext];
  v14 = [v13 keyphraseExcludeBundles];

  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        v20 = [MEMORY[0x277D657A0] sharedContext];
        v21 = [v20 excludeBundles];
        v22 = [v21 containsObject:v19];

        if ((v22 & 1) == 0)
        {
          [v12 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v16);
  }

  [(SKGProcessorTask *)v27 setRequiredAttributes:&unk_2846E84D8];
  v23 = [v26 allObjects];
  [(SKGProcessorTask *)v27 setOptionalAttributes:v23];

  [(SKGProcessorTask *)v27 setExcludeBundles:v12];
  v24 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)breadcrumbsTask
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = [[SKGProcessorTask alloc] initWithName:@"Breadcrumbs"];
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277D657A0] sharedContext];
  v5 = [v3 numberWithInteger:{objc_msgSend(v4, "breadcrumbsVersion")}];
  [(SKGProcessorTask *)v2 setVersionValue:v5];

  [(SKGProcessorTask *)v2 setSupportedEvent:4];
  [(SKGProcessorTask *)v2 setSupportedEvent:3];
  [(SKGProcessorTask *)v2 setProcessorFlags:516];
  v6 = [MEMORY[0x277D657A0] sharedContext];
  v40 = v2;
  if ([v6 enableKeyphrases])
  {
    v7 = [MEMORY[0x277D657A0] sharedContext];
    -[SKGProcessorTask setEnabled:](v2, "setEnabled:", [v7 enableExtractions]);
  }

  else
  {
    [(SKGProcessorTask *)v2 setEnabled:0];
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v9 = [MEMORY[0x277D657A0] sharedContext];
  v10 = [v9 fetchAttributes];

  v11 = [v10 countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v47;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v47 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v46 + 1) + 8 * i);
        if (([&unk_2846E8508 containsObject:v15] & 1) == 0 && (objc_msgSend(&unk_2846E8520, "containsObject:", v15) & 1) == 0)
        {
          [v8 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v12);
  }

  [v8 addObjectsFromArray:&unk_2846E8508];
  v41 = v8;
  [v8 addObjectsFromArray:&unk_2846E8520];
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v17 = [MEMORY[0x277D657A0] sharedContext];
  v18 = [v17 keyphraseExcludeBundles];

  v19 = [v18 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v43;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v43 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v42 + 1) + 8 * j);
        v24 = [MEMORY[0x277D657A0] sharedContext];
        v25 = [v24 excludeBundles];
        v26 = [v25 containsObject:v23];

        if ((v26 & 1) == 0)
        {
          [v16 addObject:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v20);
  }

  [(SKGProcessorTask *)v40 setRequiredAttributes:&unk_2846E8508];
  [(SKGProcessorTask *)v40 setOptionalAttributes:v41];
  [(SKGProcessorTask *)v40 setExcludeBundles:v16];
  v39 = objc_alloc_init(SKGQueryStringBuilder);
  v27 = [(SKGQueryStringBuilder *)v39 beginGroup];
  v28 = [v27 withFieldMatch];
  v29 = (v28)[2](v28, @"_kMDItemBundleID", &unk_2846E8538);
  v30 = [v29 and];
  v31 = [v30 withQuery];
  v32 = [SKGQueryStringBuilder queryForAttributesExist:&unk_2846E8550];
  v33 = (v31)[2](v31, v32);
  v34 = [v33 endGroup];

  v35 = [v34 build];
  v50 = v35;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
  [(SKGProcessorTask *)v40 setAdditionalQueries:v36];

  v37 = *MEMORY[0x277D85DE8];

  return v40;
}

- (SKGProcessorTaskManager)init
{
  v12.receiver = self;
  v12.super_class = SKGProcessorTaskManager;
  v2 = [(SKGProcessorTaskManager *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = +[SKGProcessorTaskManager keyphraseTask];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 name];
      [(NSDictionary *)v3 setObject:v5 forKey:v6];
    }

    v7 = +[SKGProcessorTaskManager breadcrumbsTask];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 name];
      [(NSDictionary *)v3 setObject:v8 forKey:v9];
    }

    tasks = v2->_tasks;
    v2->_tasks = v3;
  }

  return v2;
}

@end