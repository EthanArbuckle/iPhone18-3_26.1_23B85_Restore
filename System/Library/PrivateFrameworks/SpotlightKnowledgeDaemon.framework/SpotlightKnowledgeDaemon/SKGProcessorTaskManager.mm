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
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  v5 = [v3 numberWithInteger:{objc_msgSend(mEMORY[0x277D657A0], "keyphraseVersion")}];
  [(SKGProcessorTask *)v2 setVersionValue:v5];

  mEMORY[0x277D657A0]2 = [MEMORY[0x277D657A0] sharedContext];
  LODWORD(mEMORY[0x277D657A0]) = [mEMORY[0x277D657A0]2 enableExtractions];

  if (mEMORY[0x277D657A0])
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
  mEMORY[0x277D657A0]3 = [MEMORY[0x277D657A0] sharedContext];
  fetchAttributes = [mEMORY[0x277D657A0]3 fetchAttributes];
  v11 = [v8 setWithArray:fetchAttributes];

  v26 = v11;
  [v11 addObjectsFromArray:&unk_2846E84F0];
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  mEMORY[0x277D657A0]4 = [MEMORY[0x277D657A0] sharedContext];
  keyphraseExcludeBundles = [mEMORY[0x277D657A0]4 keyphraseExcludeBundles];

  v15 = [keyphraseExcludeBundles countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(keyphraseExcludeBundles);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        mEMORY[0x277D657A0]5 = [MEMORY[0x277D657A0] sharedContext];
        excludeBundles = [mEMORY[0x277D657A0]5 excludeBundles];
        v22 = [excludeBundles containsObject:v19];

        if ((v22 & 1) == 0)
        {
          [v12 addObject:v19];
        }
      }

      v16 = [keyphraseExcludeBundles countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v16);
  }

  [(SKGProcessorTask *)v27 setRequiredAttributes:&unk_2846E84D8];
  allObjects = [v26 allObjects];
  [(SKGProcessorTask *)v27 setOptionalAttributes:allObjects];

  [(SKGProcessorTask *)v27 setExcludeBundles:v12];
  v24 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)breadcrumbsTask
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = [[SKGProcessorTask alloc] initWithName:@"Breadcrumbs"];
  v3 = MEMORY[0x277CCABB0];
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  v5 = [v3 numberWithInteger:{objc_msgSend(mEMORY[0x277D657A0], "breadcrumbsVersion")}];
  [(SKGProcessorTask *)v2 setVersionValue:v5];

  [(SKGProcessorTask *)v2 setSupportedEvent:4];
  [(SKGProcessorTask *)v2 setSupportedEvent:3];
  [(SKGProcessorTask *)v2 setProcessorFlags:516];
  mEMORY[0x277D657A0]2 = [MEMORY[0x277D657A0] sharedContext];
  v40 = v2;
  if ([mEMORY[0x277D657A0]2 enableKeyphrases])
  {
    mEMORY[0x277D657A0]3 = [MEMORY[0x277D657A0] sharedContext];
    -[SKGProcessorTask setEnabled:](v2, "setEnabled:", [mEMORY[0x277D657A0]3 enableExtractions]);
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
  mEMORY[0x277D657A0]4 = [MEMORY[0x277D657A0] sharedContext];
  fetchAttributes = [mEMORY[0x277D657A0]4 fetchAttributes];

  v11 = [fetchAttributes countByEnumeratingWithState:&v46 objects:v52 count:16];
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
          objc_enumerationMutation(fetchAttributes);
        }

        v15 = *(*(&v46 + 1) + 8 * i);
        if (([&unk_2846E8508 containsObject:v15] & 1) == 0 && (objc_msgSend(&unk_2846E8520, "containsObject:", v15) & 1) == 0)
        {
          [v8 addObject:v15];
        }
      }

      v12 = [fetchAttributes countByEnumeratingWithState:&v46 objects:v52 count:16];
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
  mEMORY[0x277D657A0]5 = [MEMORY[0x277D657A0] sharedContext];
  keyphraseExcludeBundles = [mEMORY[0x277D657A0]5 keyphraseExcludeBundles];

  v19 = [keyphraseExcludeBundles countByEnumeratingWithState:&v42 objects:v51 count:16];
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
          objc_enumerationMutation(keyphraseExcludeBundles);
        }

        v23 = *(*(&v42 + 1) + 8 * j);
        mEMORY[0x277D657A0]6 = [MEMORY[0x277D657A0] sharedContext];
        excludeBundles = [mEMORY[0x277D657A0]6 excludeBundles];
        v26 = [excludeBundles containsObject:v23];

        if ((v26 & 1) == 0)
        {
          [v16 addObject:v23];
        }
      }

      v20 = [keyphraseExcludeBundles countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v20);
  }

  [(SKGProcessorTask *)v40 setRequiredAttributes:&unk_2846E8508];
  [(SKGProcessorTask *)v40 setOptionalAttributes:v41];
  [(SKGProcessorTask *)v40 setExcludeBundles:v16];
  v39 = objc_alloc_init(SKGQueryStringBuilder);
  beginGroup = [(SKGQueryStringBuilder *)v39 beginGroup];
  withFieldMatch = [beginGroup withFieldMatch];
  v29 = (withFieldMatch)[2](withFieldMatch, @"_kMDItemBundleID", &unk_2846E8538);
  v30 = [v29 and];
  withQuery = [v30 withQuery];
  v32 = [SKGQueryStringBuilder queryForAttributesExist:&unk_2846E8550];
  v33 = (withQuery)[2](withQuery, v32);
  endGroup = [v33 endGroup];

  build = [endGroup build];
  v50 = build;
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
      name = [v4 name];
      [(NSDictionary *)v3 setObject:v5 forKey:name];
    }

    v7 = +[SKGProcessorTaskManager breadcrumbsTask];
    v8 = v7;
    if (v7)
    {
      name2 = [v7 name];
      [(NSDictionary *)v3 setObject:v8 forKey:name2];
    }

    tasks = v2->_tasks;
    v2->_tasks = v3;
  }

  return v2;
}

@end