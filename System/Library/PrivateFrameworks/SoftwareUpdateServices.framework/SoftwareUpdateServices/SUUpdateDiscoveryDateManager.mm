@interface SUUpdateDiscoveryDateManager
- (BOOL)containsBuildVersion:(id)version;
- (SUUpdateDiscoveryDateManager)initWithDiscoveryDateDictionary:(id)dictionary;
- (id)dictionaryRepresentation;
- (id)discoveryDateforBuildVersion:(id)version;
- (void)removeDiscoveryDateForBuildVersion:(id)version;
- (void)setDiscoveryDate:(id)date forBuildVersion:(id)version;
@end

@implementation SUUpdateDiscoveryDateManager

- (SUUpdateDiscoveryDateManager)initWithDiscoveryDateDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = SUUpdateDiscoveryDateManager;
  v5 = [(SUUpdateDiscoveryDateManager *)&v18 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    buildVersionArray = v5->_buildVersionArray;
    v5->_buildVersionArray = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    discoveryDateArray = v5->_discoveryDateArray;
    v5->_discoveryDateArray = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.softwareupdateservices.discoveryStateQueue", v10);
    stateQueue = v5->_stateQueue;
    v5->_stateQueue = v11;

    if (dictionaryCopy)
    {
      v13 = v5->_stateQueue;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __64__SUUpdateDiscoveryDateManager_initWithDiscoveryDateDictionary___block_invoke;
      v15[3] = &unk_279CAA7C0;
      v16 = dictionaryCopy;
      v17 = v5;
      dispatch_sync(v13, v15);
    }
  }

  return v5;
}

void __64__SUUpdateDiscoveryDateManager_initWithDiscoveryDateDictionary___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v2 = [*(a1 + 32) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v33;
    v6 = 0x277CCA000uLL;
    v7 = 0x277CBE000uLL;
    do
    {
      v8 = 0;
      do
      {
        if (*v33 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v32 + 1) + 8 * v8);
        v10 = *(v6 + 3240);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = [*(a1 + 32) objectForKeyedSubscript:v9];
          if (v25 && (v26 = *(v7 + 2728), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v27 = v2;
            if ([*(*(a1 + 40) + 24) count])
            {
              v28 = 0;
              while (1)
              {
                v29 = [*(*(a1 + 40) + 24) objectAtIndexedSubscript:v28];
                v30 = [v29 laterDate:v25];

                if (v30 == v25)
                {
                  break;
                }

                if (++v28 >= [*(*(a1 + 40) + 24) count])
                {
                  goto LABEL_13;
                }
              }

              [*(*(a1 + 40) + 16) insertObject:v9 atIndex:v28];
              [*(*(a1 + 40) + 24) insertObject:v25 atIndex:v28];
            }

            else
            {
LABEL_13:
              [*(*(a1 + 40) + 16) addObject:v9];
              [*(*(a1 + 40) + 24) addObject:v25];
            }

            v2 = v27;
            v6 = 0x277CCA000;
            v7 = 0x277CBE000;
          }

          else
          {
            SULogInfo(@"discoveryDateDictionary value is unexpected type. File a radar!", v18, v19, v20, v21, v22, v23, v24, v32);
          }
        }

        else
        {
          SULogInfo(@"discoveryDateDictionary key is unexpected type. File a radar!", v11, v12, v13, v14, v15, v16, v17, v32);
        }

        ++v8;
      }

      while (v8 != v4);
      v4 = [v2 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v4);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)setDiscoveryDate:(id)date forBuildVersion:(id)version
{
  dateCopy = date;
  versionCopy = version;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SUUpdateDiscoveryDateManager_setDiscoveryDate_forBuildVersion___block_invoke;
  block[3] = &unk_279CAA798;
  v12 = versionCopy;
  v13 = dateCopy;
  selfCopy = self;
  v9 = dateCopy;
  v10 = versionCopy;
  dispatch_sync(stateQueue, block);
}

void *__65__SUUpdateDiscoveryDateManager_setDiscoveryDate_forBuildVersion___block_invoke(void *result)
{
  if (result[4])
  {
    v1 = result;
    if (result[5])
    {
      if ([*(result[6] + 16) count] >= 3)
      {
        do
        {
          [*(v1[6] + 16) removeLastObject];
        }

        while ([*(v1[6] + 16) count] > 2);
      }

      if ([*(v1[6] + 24) count] >= 3)
      {
        do
        {
          [*(v1[6] + 24) removeLastObject];
        }

        while ([*(v1[6] + 24) count] > 2);
      }

      [*(v1[6] + 16) insertObject:v1[4] atIndex:0];
      v2 = v1[5];
      v3 = *(v1[6] + 24);

      return [v3 insertObject:v2 atIndex:0];
    }
  }

  return result;
}

- (void)removeDiscoveryDateForBuildVersion:(id)version
{
  versionCopy = version;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__SUUpdateDiscoveryDateManager_removeDiscoveryDateForBuildVersion___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v8 = versionCopy;
  selfCopy = self;
  v6 = versionCopy;
  dispatch_sync(stateQueue, v7);
}

unint64_t __67__SUUpdateDiscoveryDateManager_removeDiscoveryDateForBuildVersion___block_invoke(unint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    v2 = [*(*(result + 40) + 16) indexOfObject:?];
    result = [*(*(v1 + 40) + 16) count];
    if (v2 < result)
    {
      [*(*(v1 + 40) + 16) removeObjectAtIndex:v2];
      v3 = *(*(v1 + 40) + 24);

      return [v3 removeObjectAtIndex:v2];
    }
  }

  return result;
}

- (id)discoveryDateforBuildVersion:(id)version
{
  versionCopy = version;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__8;
  v16 = __Block_byref_object_dispose__8;
  v17 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SUUpdateDiscoveryDateManager_discoveryDateforBuildVersion___block_invoke;
  block[3] = &unk_279CABAB0;
  block[4] = self;
  v10 = versionCopy;
  v11 = &v12;
  v6 = versionCopy;
  dispatch_sync(stateQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __61__SUUpdateDiscoveryDateManager_discoveryDateforBuildVersion___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ([*(a1[4] + 16) containsObject:a1[5]])
  {
    v10 = [*(a1[4] + 16) indexOfObject:a1[5]];
    if (v10 >= [*(a1[4] + 24) count])
    {

      SULogInfo(@"_descriptorArray and _discoveryDateArray are out of sync. File a radar!", v11, v12, v13, v14, v15, v16, v17, a9);
    }

    else
    {
      v18 = [*(a1[4] + 24) objectAtIndex:v10];
      v19 = *(a1[6] + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      MEMORY[0x2821F96F8]();
    }
  }
}

- (id)dictionaryRepresentation
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SUUpdateDiscoveryDateManager_dictionaryRepresentation__block_invoke;
  v6[3] = &unk_279CAA948;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  if ([v8[5] count])
  {
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v8[5]];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);

  return v4;
}

void __56__SUUpdateDiscoveryDateManager_dictionaryRepresentation__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = [*(*(a1 + 32) + 16) count];
  if (v10 == [*(*(a1 + 32) + 24) count])
  {
    if ([*(*(a1 + 32) + 16) count])
    {
      v18 = 0;
      do
      {
        v19 = *(*(*(a1 + 40) + 8) + 40);
        v20 = [*(*(a1 + 32) + 24) objectAtIndexedSubscript:v18];
        v21 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:v18];
        [v19 setSafeObject:v20 forKey:v21];

        ++v18;
      }

      while (v18 < [*(*(a1 + 32) + 16) count]);
    }
  }

  else
  {

    SULogInfo(@"_descriptorArray and _discoveryDateArray are out of sync. File a radar!", v11, v12, v13, v14, v15, v16, v17, a9);
  }
}

- (BOOL)containsBuildVersion:(id)version
{
  versionCopy = version;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SUUpdateDiscoveryDateManager_containsBuildVersion___block_invoke;
  block[3] = &unk_279CAB740;
  v9 = versionCopy;
  v10 = &v11;
  block[4] = self;
  v6 = versionCopy;
  dispatch_sync(stateQueue, block);
  LOBYTE(stateQueue) = v12[3] != 0;

  _Block_object_dispose(&v11, 8);
  return stateQueue;
}

uint64_t __53__SUUpdateDiscoveryDateManager_containsBuildVersion___block_invoke(void *a1)
{
  result = [*(a1[4] + 16) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

@end