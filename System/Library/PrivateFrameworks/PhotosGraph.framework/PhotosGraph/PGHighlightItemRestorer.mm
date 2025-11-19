@interface PGHighlightItemRestorer
+ (id)restoreExistingHighlightItemListsFromBackingHighlightItems:(id)a3 usingModelReader:(id)a4 progressBlock:(id)a5;
@end

@implementation PGHighlightItemRestorer

+ (id)restoreExistingHighlightItemListsFromBackingHighlightItems:(id)a3 usingModelReader:(id)a4 progressBlock:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = _Block_copy(a5);
  v10 = [v7 count];
  v11 = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 1.0 / v10;
    v16 = *v30;
    v27 = v9 + 16;
    v17 = 0.0;
    v18 = 0.0;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v20 = *(*(&v29 + 1) + 8 * i);
        v17 = v15 + v17;
        v21 = [v8 fetchChildHighlightItemsForHighlightItem:v20 sharingFilter:{2, v27}];
        v22 = [[PGHighlightItemList alloc] initWithParentHighlightItem:v20 childHighlightItems:v21];
        [v11 addObject:v22];
        if (v9)
        {
          Current = CFAbsoluteTimeGetCurrent();
          if (Current - v18 >= 0.01)
          {
            v28 = 0;
            (*(v9 + 2))(v9, &v28, v17);
            if (v28)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v34 = 35;
                v35 = 2080;
                v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/HighlightCollection/PGHighlightItemRestorer.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              v24 = MEMORY[0x277CBEBF8];
              goto LABEL_16;
            }

            v18 = Current;
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v24 = v11;
LABEL_16:

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

@end