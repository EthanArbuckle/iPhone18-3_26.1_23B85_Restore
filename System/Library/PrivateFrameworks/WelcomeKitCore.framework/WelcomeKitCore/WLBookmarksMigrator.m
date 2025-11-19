@interface WLBookmarksMigrator
+ (id)_bookmarkFolderAtTitlePath:(id)a3 withinBookmarkFolder:(id)a4;
+ (id)_bookmarkFolderAtTitlePath:(id)a3 withinRootFolder:(id)a4;
+ (id)_createBookmarkFolderWithTitle:(id)a3 UUID:(id)a4;
+ (id)_createRootBookmarkFolder;
- (WLFeaturePayload)featurePayload;
- (id)importDidEnd;
- (id)importWillBegin;
- (void)addWorkingTime:(unint64_t)a3;
- (void)enable;
- (void)estimateItemSizeForSummary:(id)a3 account:(id)a4;
- (void)importDataFromProvider:(id)a3 forSummaries:(id)a4 summaryStart:(id)a5 summaryCompletion:(id)a6;
- (void)setEstimatedDataSize:(unint64_t)a3;
- (void)setState:(id)a3;
@end

@implementation WLBookmarksMigrator

- (void)enable
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setEnabled:1];

  v4 = objc_loadWeakRetained(&self->_featurePayload);
  [v4 setState:@"enabled"];
}

- (void)setState:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setState:v4];
}

- (void)setEstimatedDataSize:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setSize:a3];
}

- (void)addWorkingTime:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setElapsedTime:{objc_msgSend(WeakRetained, "elapsedTime") + a3}];
}

- (void)estimateItemSizeForSummary:(id)a3 account:(id)a4
{
  v4 = a3;
  if (![v4 itemSize])
  {
    [v4 setItemSize:3072];
  }
}

- (id)importWillBegin
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setSize:0];

  _WLLog();
  if ([MEMORY[0x277D7B5A8] lockSync])
  {
    v4 = [MEMORY[0x277D7B5A8] safariBookmarkCollection];
    collection = self->_collection;
    self->_collection = v4;

    if (self->_collection)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D7B8F8];
    v19 = *MEMORY[0x277CCA450];
    v20 = @"Bookmarks migrator couldn't create collection.";
    v10 = MEMORY[0x277CBEAC0];
    v11 = &v20;
    v12 = &v19;
  }

  else
  {
    v16 = self;
    _WLLog();
    v7 = self->_collection;
    self->_collection = 0;

    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D7B8F8];
    v17 = *MEMORY[0x277CCA450];
    v18 = @"Bookmarks migrator couldn't obtain lock.";
    v10 = MEMORY[0x277CBEAC0];
    v11 = &v18;
    v12 = &v17;
  }

  v13 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:{1, v16, v17, v18, v19, v20, v21}];
  v6 = [v8 errorWithDomain:v9 code:1 userInfo:v13];

LABEL_7:
  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_createBookmarkFolderWithTitle:(id)a3 UUID:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = [[v6 alloc] initWithCapacity:4];
  [v8 setObject:@"WebBookmarkTypeList" forKey:@"WebBookmarkType"];
  [v8 setObject:v7 forKey:@"WebBookmarkUUID"];

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v8 setObject:v9 forKey:@"Children"];

  if (v5)
  {
    [v8 setObject:v5 forKey:@"Title"];
  }

  return v8;
}

+ (id)_createRootBookmarkFolder
{
  v2 = [WLBookmarksMigrator _createBookmarkFolderWithTitle:0 UUID:@"Root"];
  v3 = [v2 objectForKeyedSubscript:@"Children"];
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [v4 UUIDString];
  v6 = [WLBookmarksMigrator _createBookmarkFolderWithTitle:@"BookmarksBar" UUID:v5];

  [v3 addObject:v6];

  return v2;
}

+ (id)_bookmarkFolderAtTitlePath:(id)a3 withinBookmarkFolder:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v25 = a1;
    v8 = [v6 objectAtIndexedSubscript:0];
    v26 = v7;
    [v7 objectForKeyedSubscript:@"Children"];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = v30 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * v13);
        v15 = [v14 objectForKeyedSubscript:@"Title"];
        v16 = [v8 isEqualToString:v15];

        if (v16)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v18 = v14;

      v17 = v25;
      if (v18)
      {
        goto LABEL_13;
      }
    }

    else
    {
LABEL_10:

      v17 = v25;
    }

    v19 = [MEMORY[0x277CCAD78] UUID];
    v20 = [v19 UUIDString];
    v18 = [v17 _createBookmarkFolderWithTitle:v8 UUID:v20];

    [v9 addObject:v18];
LABEL_13:
    if ([v6 count] >= 2)
    {
      v21 = [v6 subarrayWithRange:{1, objc_msgSend(v6, "count") - 1}];
      v22 = [v17 _bookmarkFolderAtTitlePath:v21 withinBookmarkFolder:v18];

      v18 = v22;
    }

    v7 = v26;
  }

  else
  {
    v18 = v7;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)_bookmarkFolderAtTitlePath:(id)a3 withinRootFolder:(id)a4
{
  v6 = a3;
  v7 = [a4 objectForKeyedSubscript:@"Children"];
  v8 = [v7 objectAtIndexedSubscript:0];

  if ([v6 length])
  {
    v9 = [v6 pathComponents];
    v10 = [a1 _bookmarkFolderAtTitlePath:v9 withinBookmarkFolder:v8];

    v8 = v10;
  }

  return v8;
}

- (void)importDataFromProvider:(id)a3 forSummaries:(id)a4 summaryStart:(id)a5 summaryCompletion:(id)a6
{
  v83 = *MEMORY[0x277D85DE8];
  v62 = a3;
  v10 = a4;
  v11 = a5;
  v64 = a6;
  v52 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v51 = +[WLBookmarksMigrator _createRootBookmarkFolder];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v12 = v10;
  v13 = v11;
  obj = v12;
  v55 = v11;
  v63 = [v12 countByEnumeratingWithState:&v71 objects:v82 count:16];
  if (v63)
  {
    v61 = *v72;
    v14 = *MEMORY[0x277CCA450];
    v49 = *MEMORY[0x277CCA450];
    v50 = *MEMORY[0x277D7B8F8];
    v54 = self;
    do
    {
      for (i = 0; i != v63; ++i)
      {
        if (*v72 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v71 + 1) + 8 * i);
        if (v13)
        {
          v13[2](v13, *(*(&v71 + 1) + 8 * i));
        }

        v17 = v62[2](v62, v16);
        WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
        [WeakRetained setCount:{objc_msgSend(WeakRetained, "count") + 1}];

        v19 = objc_loadWeakRetained(&self->_featurePayload);
        [v19 setSize:{objc_msgSend(v19, "size") + objc_msgSend(v17, "length")}];

        if (v17)
        {
          v70 = 0;
          v20 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v17 options:0 error:&v70];
          v21 = v70;
          if (!v21)
          {
            if (v20)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v22 = v20;
                v23 = [v22 objectForKeyedSubscript:@"itemID"];
                v24 = [v22 objectForKeyedSubscript:@"itemTitle"];
                v25 = [v22 objectForKeyedSubscript:@"itemFolder"];
                v56 = v22;
                v48 = [v22 objectForKeyedSubscript:@"itemUrl"];
                v60 = v24;
                v45 = v23;
                v47 = v24;
                v57 = v23;
                self = v54;
                _WLLog();
                v58 = v48;
                if (v48 && v24 && v25)
                {
                  v81[0] = @"WebBookmarkTypeLeaf";
                  v80[0] = @"WebBookmarkType";
                  v80[1] = @"WebBookmarkUUID";
                  v26 = [MEMORY[0x277CCAD78] UUID];
                  [v26 UUIDString];
                  v27 = v53 = v25;
                  v81[1] = v27;
                  v80[2] = @"URIDictionary";
                  v78 = @"title";
                  v79 = v24;
                  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
                  v80[3] = @"URLString";
                  v81[2] = v28;
                  v81[3] = v58;
                  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:4];

                  v25 = v53;
                  v30 = [WLBookmarksMigrator _bookmarkFolderAtTitlePath:v53 withinRootFolder:v51];
                  v31 = [v30 objectForKeyedSubscript:@"Children"];
                  [v31 addObject:v29];
                  [v52 addObject:v16];

                  v13 = v55;
                  v32 = v56;
                }

                else
                {
                  v13 = v55;
                  if (!v48 && v24 && v25)
                  {
                    _WLLog();
                    v32 = v22;
                    if (v64)
                    {
                      v64[2](v64, v16, 0);
                    }
                  }

                  else
                  {
                    _WLLog();
                    v32 = v22;
                    if (v64)
                    {
                      v33 = MEMORY[0x277CCA9B8];
                      v76 = v49;
                      v77 = @"Bookmark had missing property";
                      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:{1, v54, v45, v47, v25, v48}];
                      v35 = [v33 errorWithDomain:v50 code:1 userInfo:v34];
                      (v64)[2](v64, v16, v35);

                      v13 = v55;
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          _WLLog();
          if (v64)
          {
            v64[2](v64, v16, 0);
          }
        }
      }

      v63 = [obj countByEnumeratingWithState:&v71 objects:v82 count:16];
    }

    while (v63);
  }

  if ([v52 count])
  {
    _WLLog();
    collection = self->_collection;
    v69 = 0;
    v37 = [(WebBookmarkCollection *)collection mergeWithBookmarksDictionary:v51 clearHidden:0 error:&v69, self, v51];
    v38 = v69;
    v46 = [MEMORY[0x277CCABB0] numberWithBool:v37];
    _WLLog();

    if (v64)
    {
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v39 = v52;
      v40 = [v39 countByEnumeratingWithState:&v65 objects:v75 count:{16, self, v46, v38}];
      if (v40)
      {
        v41 = v40;
        v42 = *v66;
        do
        {
          for (j = 0; j != v41; ++j)
          {
            if (*v66 != v42)
            {
              objc_enumerationMutation(v39);
            }

            (v64)[2](v64, *(*(&v65 + 1) + 8 * j), v38);
          }

          v41 = [v39 countByEnumeratingWithState:&v65 objects:v75 count:16];
        }

        while (v41);
      }
    }

    v13 = v55;
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (id)importDidEnd
{
  _WLLog();
  collection = self->_collection;
  if (collection)
  {
    self->_collection = 0;

    [MEMORY[0x277D7B5A8] unlockSync];
  }

  return 0;
}

- (WLFeaturePayload)featurePayload
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);

  return WeakRetained;
}

@end