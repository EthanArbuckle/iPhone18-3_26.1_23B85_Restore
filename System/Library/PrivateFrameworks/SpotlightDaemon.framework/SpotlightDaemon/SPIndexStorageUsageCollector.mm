@interface SPIndexStorageUsageCollector
- (NSDictionary)storageUsage;
- (SPIndexStorageUsageCollector)init;
- (void)collectAtPath:(id)path completionBlock:(id)block;
- (void)sendToCoreAnalyticsWithLiveDocCount:(unint64_t)count deadDocCount:(unint64_t)docCount;
@end

@implementation SPIndexStorageUsageCollector

- (SPIndexStorageUsageCollector)init
{
  v8.receiver = self;
  v8.super_class = SPIndexStorageUsageCollector;
  v2 = [(SPIndexStorageUsageCollector *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    visitedInodes = v2->_visitedInodes;
    v2->_visitedInodes = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    storageUsage = v2->_storageUsage;
    v2->_storageUsage = dictionary2;
  }

  return v2;
}

- (NSDictionary)storageUsage
{
  v2 = [(NSMutableDictionary *)self->_storageUsage copy];

  return v2;
}

- (void)collectAtPath:(id)path completionBlock:(id)block
{
  pathCopy = path;
  blockCopy = block;
  if (collectAtPath_completionBlock__onceToken != -1)
  {
    [SPIndexStorageUsageCollector collectAtPath:completionBlock:];
  }

  v8 = collectAtPath_completionBlock__sQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SPIndexStorageUsageCollector_collectAtPath_completionBlock___block_invoke_2;
  block[3] = &unk_2789356A0;
  v12 = pathCopy;
  v13 = blockCopy;
  block[4] = self;
  v9 = pathCopy;
  v10 = blockCopy;
  dispatch_async(v8, block);
}

void __62__SPIndexStorageUsageCollector_collectAtPath_completionBlock___block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);
  v1 = dispatch_queue_create("Stats collection queue", v0);
  v2 = collectAtPath_completionBlock__sQueue;
  collectAtPath_completionBlock__sQueue = v1;
}

void __62__SPIndexStorageUsageCollector_collectAtPath_completionBlock___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v115[4] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) canceled])
  {
    v2 = *(*(v1 + 48) + 16);
    v3 = *MEMORY[0x277D85DE8];

    v2();
    return;
  }

  [*(*(v1 + 32) + 16) removeAllObjects];
  [*(*(v1 + 32) + 8) removeAllObjects];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(v1 + 40)];
  v6 = *MEMORY[0x277CBE808];
  v92 = *MEMORY[0x277CBE838];
  v115[0] = *MEMORY[0x277CBE838];
  v115[1] = v6;
  v86 = v6;
  v7 = *MEMORY[0x277CBE8C8];
  v89 = *MEMORY[0x277CBE898];
  v115[2] = *MEMORY[0x277CBE898];
  v115[3] = v7;
  v91 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:4];
  v109[0] = MEMORY[0x277D85DD0];
  v109[1] = 3221225472;
  v109[2] = __62__SPIndexStorageUsageCollector_collectAtPath_completionBlock___block_invoke_3;
  v109[3] = &unk_278937690;
  v109[4] = *(v1 + 32);
  v84 = v4;
  v93 = v5;
  v9 = [v4 enumeratorAtURL:v5 includingPropertiesForKeys:v8 options:0 errorHandler:v109];

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v10 = v9;
  v94 = v1;
  v88 = [v10 countByEnumeratingWithState:&v105 objects:v114 count:16];
  if (!v88)
  {
    goto LABEL_82;
  }

  v90 = *v106;
  v85 = *MEMORY[0x277CCA1A8];
  v82 = *MEMORY[0x277CCA1A0];
  v81 = *MEMORY[0x277CCA198];
  v80 = *MEMORY[0x277CCA190];
  obj = v10;
  do
  {
    v11 = 0;
    do
    {
      if (*v106 != v90)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v105 + 1) + 8 * v11);
      if ([*(v1 + 32) canceled])
      {
        (*(*(v1 + 48) + 16))();
        goto LABEL_100;
      }

      v13 = objc_autoreleasePoolPush();
      v103 = 0;
      v104 = 0;
      v14 = [v12 getResourceValue:&v104 forKey:v92 error:&v103];
      v15 = v104;
      v16 = v103;
      if ((v14 & 1) == 0)
      {
        v75 = logForCSLogCategoryIndex();
        v10 = obj;
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          __62__SPIndexStorageUsageCollector_collectAtPath_completionBlock___block_invoke_2_cold_1();
        }

        [*(v1 + 32) setCanceled:1];
        (*(*(v1 + 48) + 16))();

        objc_autoreleasePoolPop(v13);
        goto LABEL_101;
      }

      context = v13;
      v17 = [v12 path];
      v18 = [v93 path];
      v19 = [v17 stringByReplacingOccurrencesOfString:v18 withString:&stru_2846BD100];

      if ([v19 hasPrefix:@"/private"])
      {
        v20 = [v19 substringFromIndex:{objc_msgSend(@"/private", "length")}];

        v19 = v20;
      }

      if ([v19 hasPrefix:@"/"])
      {
        v21 = [v19 substringFromIndex:1];

        v19 = v21;
      }

      v22 = *(*(v1 + 32) + 16);
      v96 = v15;
      v23 = [v15 unsignedLongLongValue];
      v24 = v22;
      v25 = v19;
      v26 = [v25 hasPrefix:@"Priority"];
      v27 = @"priority";
      if (v26)
      {
        goto LABEL_21;
      }

      v28 = [v25 hasPrefix:v85];
      v27 = @"protectionClassCX";
      if (v28 & 1) != 0 || (v29 = [v25 hasPrefix:v82], v27 = @"protectionClassC", (v29) || (v30 = objc_msgSend(v25, "hasPrefix:", v81), v27 = @"protectionClassB", (v30) || (v31 = objc_msgSend(v25, "hasPrefix:", v80), v27 = @"protectionClassA", v31))
      {
LABEL_21:
        incrementIndexStorageSize(v24, v27, v23);
      }

      if ([v25 hasSuffix:@".indexBigDates"])
      {
        v32 = v24;
        v33 = @"bigDate";
        goto LABEL_24;
      }

      v34 = [v25 lastPathComponent];
      if ([v34 isEqualToString:@".store.db"])
      {

LABEL_28:
        incrementIndexStorageSize(v24, @"sdb", v23);
        v36 = 1;
        while (1)
        {
          v37 = [v25 lastPathComponent];
          v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"dbStr-%u.map.", v36];
          v39 = [v37 hasPrefix:v38];

          if (v39)
          {
            break;
          }

          v36 = (v36 + 1);
          if (v36 == 7)
          {
            goto LABEL_33;
          }
        }

        v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"dataMap%u", v36];
        incrementIndexStorageSize(v24, v40, v23);

LABEL_33:
        v41 = 1;
LABEL_34:
        v1 = v94;
        goto LABEL_35;
      }

      v35 = [v34 hasPrefix:@"dbStr-"];

      if (v35)
      {
        goto LABEL_28;
      }

      v1 = v94;
      if (isEmbedding(v25))
      {
        v58 = v24;
        v59 = @"embedding";
      }

      else
      {
        v61 = v25;
        if ([v61 hasSuffix:@".directoryStoreFile"])
        {

LABEL_55:
          v58 = v24;
          v59 = @"forwardDirStore";
          goto LABEL_60;
        }

        v62 = [v61 hasSuffix:@".directoryStoreFile.shadow"];

        if (v62)
        {
          goto LABEL_55;
        }

        v63 = [v61 lastPathComponent];
        if (([v63 isEqualToString:@"reverseDirectoryStore"] & 1) != 0 || objc_msgSend(v63, "isEqualToString:", @"reverseDirectoryStore.shadow"))
        {

LABEL_59:
          v58 = v24;
          v59 = @"reverseDirStore";
          goto LABEL_60;
        }

        v64 = [v63 isEqualToString:@"reverseStore.updates"];

        if (v64)
        {
          goto LABEL_59;
        }

        if ([v61 hasSuffix:@".indexIds"])
        {
          v58 = v24;
          v59 = @"indexId";
        }

        else if ([v61 hasSuffix:@".indexTermIds"])
        {
          v58 = v24;
          v59 = @"indexTermId";
        }

        else if ([v61 hasSuffix:@".indexPositions"])
        {
          v58 = v24;
          v59 = @"position";
        }

        else if ([v61 hasSuffix:@".indexPositionTable"])
        {
          v58 = v24;
          v59 = @"positionTable";
        }

        else if ([v61 hasSuffix:@".indexPostings"])
        {
          v58 = v24;
          v59 = @"posting";
        }

        else
        {
          if (![v61 hasSuffix:@".indexScores"])
          {
            if ([v61 hasSuffix:@".indexGroups"])
            {
              v32 = v24;
              v33 = @"group";
            }

            else if (isTermIndex(v61))
            {
              v32 = v24;
              v33 = @"termIndex";
            }

            else
            {
              if (!isJournal(v61))
              {
                v41 = 0;
                goto LABEL_34;
              }

              v32 = v24;
              v33 = @"journal";
            }

LABEL_24:
            incrementIndexStorageSize(v32, v33, v23);
            goto LABEL_33;
          }

          v58 = v24;
          v59 = @"score";
        }
      }

LABEL_60:
      incrementIndexStorageSize(v58, v59, v23);
      v41 = 1;
LABEL_35:

      v101 = 0;
      v102 = 0;
      v42 = [v12 getResourceValue:&v102 forKey:v91 error:&v101];
      v43 = v102;
      v44 = v101;

      if ((v42 & 1) == 0)
      {
        v76 = logForCSLogCategoryIndex();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          __62__SPIndexStorageUsageCollector_collectAtPath_completionBlock___block_invoke_2_cold_2();
        }

        [*(v1 + 32) setCanceled:1];
        (*(*(v1 + 48) + 16))();

LABEL_99:
        objc_autoreleasePoolPop(context);
LABEL_100:
        v10 = obj;
LABEL_101:

        goto LABEL_106;
      }

      v99 = 0;
      v100 = 0;
      v45 = [v12 getResourceValue:&v100 forKey:v89 error:&v99];
      v46 = v100;
      v47 = v99;

      if ((v45 & 1) == 0)
      {
        v77 = logForCSLogCategoryIndex();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          __62__SPIndexStorageUsageCollector_collectAtPath_completionBlock___block_invoke_2_cold_3();
        }

        [*(v1 + 32) setCanceled:1];
        (*(*(v1 + 48) + 16))();

        goto LABEL_99;
      }

      if ([v43 unsignedLongValue] > 1)
      {
        v98 = 0;
        v48 = [v12 getResourceValue:&v98 forKey:v86 error:0];
        v49 = v98;
        if (v48)
        {
          v83 = v48;
          [*(*(v1 + 32) + 8) objectForKeyedSubscript:v49];
          v51 = v50 = v1;

          v52 = MEMORY[0x277CCABB0];
          if (v51)
          {
            v53 = [*(*(v50 + 32) + 8) objectForKeyedSubscript:v49];
            v54 = [v52 numberWithUnsignedLong:{objc_msgSend(v53, "unsignedLongValue") - 1}];
            [*(*(v50 + 32) + 8) setObject:v54 forKeyedSubscript:v49];

            v55 = [*(*(v50 + 32) + 8) objectForKeyedSubscript:v49];
            v56 = [v55 unsignedLongValue];

            v48 = v83;
            if (!v56)
            {
              [*(*(v94 + 32) + 8) removeObjectForKey:v49];
            }
          }

          else
          {
            v60 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v43, "unsignedLongValue") - 1}];
            [*(*(v50 + 32) + 8) setObject:v60 forKeyedSubscript:v49];

            updateStorageUsageIgnoreLinks(*(*(v50 + 32) + 16), v25, [v96 unsignedLongLongValue], objc_msgSend(v46, "BOOLValue"), v41);
            v48 = v83;
          }
        }

        else
        {
          v57 = logForCSLogCategoryIndex();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v111 = v12;
            v112 = 2112;
            v113 = v47;
            _os_log_error_impl(&dword_231A35000, v57, OS_LOG_TYPE_ERROR, "Failed to get resource identifier: %@, %@", buf, 0x16u);
          }

          [*(v1 + 32) setCanceled:1];
          (*(*(v1 + 48) + 16))();
        }

        objc_autoreleasePoolPop(context);
        v1 = v94;
        if (!v48)
        {
          goto LABEL_100;
        }
      }

      else
      {
        updateStorageUsageIgnoreLinks(*(*(v1 + 32) + 16), v25, [v96 unsignedLongLongValue], objc_msgSend(v46, "BOOLValue"), v41);

        objc_autoreleasePoolPop(context);
      }

      ++v11;
    }

    while (v11 != v88);
    v10 = obj;
    v65 = [obj countByEnumeratingWithState:&v105 objects:v114 count:16];
    v88 = v65;
  }

  while (v65);
LABEL_82:

  if ([*(v1 + 32) canceled])
  {
    (*(*(v1 + 48) + 16))();
  }

  else
  {
    v66 = v10;
    v67 = *(v1 + 40);
    v97 = 0;
    v68 = [v84 attributesOfFileSystemForPath:v67 error:&v97];
    v69 = v97;
    if (v69)
    {
      v70 = 1;
    }

    else
    {
      v70 = v68 == 0;
    }

    if (v70)
    {
      v78 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        __62__SPIndexStorageUsageCollector_collectAtPath_completionBlock___block_invoke_2_cold_4(v69, v78);
      }
    }

    else
    {
      v71 = [v68 objectForKeyedSubscript:*MEMORY[0x277CCA1D8]];
      v72 = [v71 unsignedLongLongValue];

      v73 = [v68 objectForKeyedSubscript:*MEMORY[0x277CCA1D0]];
      v74 = [v73 unsignedLongLongValue];

      v1 = v94;
      incrementIndexStorageSize(*(*(v94 + 32) + 16), @"diskSpace", v72);
      incrementIndexStorageSize(*(*(v94 + 32) + 16), @"spaceLeft", v74);
    }

    (*(*(v1 + 48) + 16))();

    v10 = v66;
  }

LABEL_106:

  v79 = *MEMORY[0x277D85DE8];
}

uint64_t __62__SPIndexStorageUsageCollector_collectAtPath_completionBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __62__SPIndexStorageUsageCollector_collectAtPath_completionBlock___block_invoke_3_cold_1();
  }

  [*(a1 + 32) setCanceled:1];
  return 0;
}

- (void)sendToCoreAnalyticsWithLiveDocCount:(unint64_t)count deadDocCount:(unint64_t)docCount
{
  v63 = *MEMORY[0x277D85DE8];
  if (![(SPIndexStorageUsageCollector *)self canceled])
  {
    countCopy = count;
    docCountCopy = docCount;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v7 = self->_storageUsage;
    v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v51;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v51 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v50 + 1) + 8 * i);
          v13 = logForCSLogCategoryIndex();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [(NSMutableDictionary *)self->_storageUsage objectForKeyedSubscript:v12];
            [v14 unsignedLongLongValue];
            LOBYTE(v60) = 0;
            *buf = 0;
            humanize_number();
            v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:buf];
            *buf = 138412546;
            v60 = v12;
            v61 = 2112;
            v62 = v15;
            _os_log_impl(&dword_231A35000, v13, OS_LOG_TYPE_DEFAULT, "Index type %@ size %@", buf, 0x16u);
          }
        }

        v9 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v9);
    }

    v16 = self->_storageUsage;
    v17 = objc_opt_new();
    v48 = v16;
    allKeys = [(NSMutableDictionary *)v16 allKeys];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = allKeys;
    v19 = [allKeys countByEnumeratingWithState:&v54 objects:buf count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v55;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v55 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v54 + 1) + 8 * j);
          if ([v23 isEqualToString:@"spaceLeft"])
          {
            v24 = 30;
          }

          else if ([v23 isEqualToString:@"diskSpace"])
          {
            v24 = 30;
          }

          else
          {
            v24 = 10;
          }

          v25 = MEMORY[0x277CCABB0];
          v26 = [(NSMutableDictionary *)v48 objectForKeyedSubscript:v23];
          v27 = [v25 numberWithUnsignedLongLong:{objc_msgSend(v26, "unsignedLongLongValue") >> v24}];
          [v17 setObject:v27 forKeyedSubscript:v23];
        }

        v20 = [obj countByEnumeratingWithState:&v54 objects:buf count:16];
      }

      while (v20);
    }

    v28 = MEMORY[0x277CCABB0];
    v29 = [v17 objectForKeyedSubscript:@"total"];
    unsignedIntegerValue = [v29 unsignedIntegerValue];
    v31 = [v17 objectForKeyedSubscript:@"purgeable"];
    v32 = [v28 numberWithUnsignedInteger:{unsignedIntegerValue - objc_msgSend(v31, "unsignedIntegerValue")}];
    [v17 setObject:v32 forKeyedSubscript:@"nonPurgeable"];

    v33 = MEMORY[0x277CCABB0];
    v34 = [v17 objectForKeyedSubscript:@"embedding"];
    unsignedIntegerValue2 = [v34 unsignedIntegerValue];
    v36 = [v17 objectForKeyedSubscript:@"embeddingPurgeable"];
    v37 = [v33 numberWithUnsignedInteger:{unsignedIntegerValue2 - objc_msgSend(v36, "unsignedIntegerValue")}];
    [v17 setObject:v37 forKeyedSubscript:@"embeddingNonPurgeable"];

    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:countCopy];
    [v17 setObject:v38 forKeyedSubscript:@"liveDocCount"];

    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:docCountCopy];
    [v17 setObject:v39 forKeyedSubscript:@"deletedDocCount"];

    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x277D65768], "version")}];
    stringValue = [v40 stringValue];
    [v17 setObject:stringValue forKeyedSubscript:@"embeddingModelVersion"];

    v42 = [v17 copy];
    v49 = v42;
    v43 = v42;
    AnalyticsSendEventLazy();
  }

  v44 = *MEMORY[0x277D85DE8];
}

void __62__SPIndexStorageUsageCollector_collectAtPath_completionBlock___block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_3(&dword_231A35000, v0, v1, "Failed to get file size: %@, %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __62__SPIndexStorageUsageCollector_collectAtPath_completionBlock___block_invoke_2_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_3(&dword_231A35000, v0, v1, "Failed to get link count: %@, %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __62__SPIndexStorageUsageCollector_collectAtPath_completionBlock___block_invoke_2_cold_3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_3(&dword_231A35000, v0, v1, "Failed to get purgeability: %@, %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __62__SPIndexStorageUsageCollector_collectAtPath_completionBlock___block_invoke_2_cold_4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_231A35000, a2, OS_LOG_TYPE_ERROR, "Failed to retrieve file system attributes: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __62__SPIndexStorageUsageCollector_collectAtPath_completionBlock___block_invoke_3_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_3(&dword_231A35000, v0, v1, "Error enumerating file: %@, %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end