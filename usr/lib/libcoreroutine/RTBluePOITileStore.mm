@interface RTBluePOITileStore
- (void)_fetchBluePOIMetadataWithHandler:(id)handler;
- (void)_fetchBluePOITileCountWithHandler:(id)handler;
- (void)_fetchBluePOITileWithGeoTileKey:(unint64_t)key handler:(id)handler;
- (void)_fetchBluePOITilesWithDateInterval:(id)interval ascending:(BOOL)ascending limit:(id)limit handler:(id)handler;
- (void)_fetchBluePOITilesWithDownloadKeys:(id)keys handler:(id)handler;
- (void)_fetchBluePOITilesWithGeoTileKeys:(id)keys handler:(id)handler;
- (void)_purgeBluePOIMetadataWithHandler:(id)handler;
- (void)_purgeBluePOITilesPredating:(id)predating handler:(id)handler;
- (void)_removeBluePOITilesWithGeoTileKeys:(id)keys handler:(id)handler;
- (void)fetchBluePOIMetadataWithHandler:(id)handler;
- (void)fetchBluePOITileCountWithHandler:(id)handler;
- (void)fetchBluePOITileWithGeoTileKey:(unint64_t)key handler:(id)handler;
- (void)fetchBluePOITilesWithDateInterval:(id)interval ascending:(BOOL)ascending limit:(id)limit handler:(id)handler;
- (void)fetchBluePOITilesWithDownloadKeys:(id)keys handler:(id)handler;
- (void)fetchBluePOITilesWithGeoTileKeys:(id)keys handler:(id)handler;
- (void)purgeBluePOIMetadataWithHandler:(id)handler;
- (void)purgeBluePOITilesPredating:(id)predating handler:(id)handler;
- (void)removeBluePOITilesWithGeoTileKeys:(id)keys handler:(id)handler;
- (void)storeBluePOIMetadata:(id)metadata handler:(id)handler;
- (void)storeBluePOITiles:(id)tiles handler:(id)handler;
- (void)updateBluePOIMetadata:(id)metadata handler:(id)handler;
- (void)updateBluePOITiles:(id)tiles handler:(id)handler;
@end

@implementation RTBluePOITileStore

- (void)_fetchBluePOITileWithGeoTileKey:(unint64_t)key handler:(id)handler
{
  v21[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([(RTStore *)self availability]== 2)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __62__RTBluePOITileStore__fetchBluePOITileWithGeoTileKey_handler___block_invoke;
      aBlock[3] = &unk_2788CBA78;
      keyCopy = key;
      v19 = a2;
      v8 = handlerCopy;
      v17 = v8;
      v9 = _Block_copy(aBlock);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __62__RTBluePOITileStore__fetchBluePOITileWithGeoTileKey_handler___block_invoke_12;
      v14[3] = &unk_2788C48C0;
      v15 = v8;
      [(RTStore *)self _performBlock:v9 contextType:1 errorHandler:v14];

      v10 = v17;
    }

    else
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277D01448];
      v20 = *MEMORY[0x277CCA450];
      v21[0] = @"database temporarily unavailable";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v10 = [v11 errorWithDomain:v12 code:5 userInfo:v13];

      (*(handlerCopy + 2))(handlerCopy, 0, v10);
    }
  }
}

void __62__RTBluePOITileStore__fetchBluePOITileWithGeoTileKey_handler___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTBluePOITileMO fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %llu", @"tileKey", *(a1 + 40)];
  [v4 setPredicate:v5];

  v14 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v14];

  v7 = v14;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityStore);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(*(a1 + 48));
      v13 = [v6 count];
      *buf = 138413058;
      v16 = v12;
      v17 = 2112;
      v18 = v4;
      v19 = 2048;
      v20 = v13;
      v21 = 2112;
      v22 = v7;
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  v9 = MEMORY[0x277D010B8];
  v10 = [v6 firstObject];
  v11 = [v9 createWithManagedObject:v10];

  (*(*(a1 + 32) + 16))();
}

- (void)fetchBluePOITileWithGeoTileKey:(unint64_t)key handler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__RTBluePOITileStore_fetchBluePOITileWithGeoTileKey_handler___block_invoke;
  block[3] = &unk_2788C6300;
  v10 = handlerCopy;
  keyCopy = key;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(queue, block);
}

- (void)_fetchBluePOITilesWithGeoTileKeys:(id)keys handler:(id)handler
{
  v22[1] = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([(RTStore *)self availability]== 2)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __64__RTBluePOITileStore__fetchBluePOITilesWithGeoTileKeys_handler___block_invoke;
      aBlock[3] = &unk_2788C4FB0;
      v18 = keysCopy;
      v20 = a2;
      v9 = handlerCopy;
      v19 = v9;
      v10 = _Block_copy(aBlock);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __64__RTBluePOITileStore__fetchBluePOITilesWithGeoTileKeys_handler___block_invoke_19;
      v15[3] = &unk_2788C48C0;
      v16 = v9;
      [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v15];

      v11 = v18;
    }

    else
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D01448];
      v21 = *MEMORY[0x277CCA450];
      v22[0] = @"database temporarily unavailable";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v11 = [v12 errorWithDomain:v13 code:5 userInfo:v14];

      (*(handlerCopy + 2))(handlerCopy, 0, v11);
    }
  }
}

void __64__RTBluePOITileStore__fetchBluePOITilesWithGeoTileKeys_handler___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTBluePOITileMO fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN (%@)", @"tileKey", *(a1 + 32)];
  [v4 setPredicate:v5];

  v23 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v23];
  v7 = v23;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityStore);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v16 = NSStringFromSelector(*(a1 + 48));
      v17 = [v6 count];
      *buf = 138413058;
      v26 = v16;
      v27 = 2112;
      v28 = v4;
      v29 = 2048;
      v30 = v17;
      v31 = 2112;
      v32 = v7;
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  v9 = objc_opt_new();
  if (!v7)
  {
    v18 = v3;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [MEMORY[0x277D010B8] createWithManagedObject:*(*(&v19 + 1) + 8 * i)];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v12);
    }

    v3 = v18;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchBluePOITilesWithGeoTileKeys:(id)keys handler:(id)handler
{
  keysCopy = keys;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__RTBluePOITileStore_fetchBluePOITilesWithGeoTileKeys_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = keysCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = keysCopy;
  dispatch_async(queue, block);
}

- (void)_fetchBluePOITilesWithDownloadKeys:(id)keys handler:(id)handler
{
  v22[1] = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([(RTStore *)self availability]== 2)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __65__RTBluePOITileStore__fetchBluePOITilesWithDownloadKeys_handler___block_invoke;
      aBlock[3] = &unk_2788C4FB0;
      v18 = keysCopy;
      v20 = a2;
      v9 = handlerCopy;
      v19 = v9;
      v10 = _Block_copy(aBlock);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __65__RTBluePOITileStore__fetchBluePOITilesWithDownloadKeys_handler___block_invoke_23;
      v15[3] = &unk_2788C48C0;
      v16 = v9;
      [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v15];

      v11 = v18;
    }

    else
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D01448];
      v21 = *MEMORY[0x277CCA450];
      v22[0] = @"database temporarily unavailable";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v11 = [v12 errorWithDomain:v13 code:5 userInfo:v14];

      (*(handlerCopy + 2))(handlerCopy, 0, v11);
    }
  }
}

void __65__RTBluePOITileStore__fetchBluePOITilesWithDownloadKeys_handler___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTBluePOITileMO fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN (%@)", @"downloadKey", *(a1 + 32)];
  [v4 setPredicate:v5];

  v23 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v23];
  v7 = v23;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityStore);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v16 = NSStringFromSelector(*(a1 + 48));
      v17 = [v6 count];
      *buf = 138413058;
      v26 = v16;
      v27 = 2112;
      v28 = v4;
      v29 = 2048;
      v30 = v17;
      v31 = 2112;
      v32 = v7;
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  v9 = objc_opt_new();
  if (!v7)
  {
    v18 = v3;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [MEMORY[0x277D010B8] createWithManagedObject:*(*(&v19 + 1) + 8 * i)];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v12);
    }

    v3 = v18;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchBluePOITilesWithDownloadKeys:(id)keys handler:(id)handler
{
  keysCopy = keys;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__RTBluePOITileStore_fetchBluePOITilesWithDownloadKeys_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = keysCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = keysCopy;
  dispatch_async(queue, block);
}

- (void)_fetchBluePOITilesWithDateInterval:(id)interval ascending:(BOOL)ascending limit:(id)limit handler:(id)handler
{
  v29[1] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  limitCopy = limit;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([(RTStore *)self availability]== 2)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __81__RTBluePOITileStore__fetchBluePOITilesWithDateInterval_ascending_limit_handler___block_invoke;
      aBlock[3] = &unk_2788CB788;
      v23 = intervalCopy;
      ascendingCopy = ascending;
      v24 = limitCopy;
      v26 = a2;
      v14 = handlerCopy;
      v25 = v14;
      v15 = _Block_copy(aBlock);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __81__RTBluePOITileStore__fetchBluePOITilesWithDateInterval_ascending_limit_handler___block_invoke_32;
      v20[3] = &unk_2788C48C0;
      v21 = v14;
      [(RTStore *)self _performBlock:v15 contextType:1 errorHandler:v20];

      v16 = v23;
    }

    else
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277D01448];
      v28 = *MEMORY[0x277CCA450];
      v29[0] = @"database temporarily unavailable";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v16 = [v17 errorWithDomain:v18 code:5 userInfo:v19];

      (*(handlerCopy + 2))(handlerCopy, 0, v16);
    }
  }
}

void __81__RTBluePOITileStore__fetchBluePOITilesWithDateInterval_ascending_limit_handler___block_invoke(uint64_t a1, void *a2)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTBluePOITileMO fetchRequest];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = MEMORY[0x277CCAC30];
    v7 = [v5 startDate];
    v8 = [*(a1 + 32) endDate];
    v9 = [v6 predicateWithFormat:@"%K >= %@ && %K <= %@", @"date", v7, @"date", v8];
    [v4 setPredicate:v9];
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    [v4 setFetchLimit:{objc_msgSend(v10, "unsignedIntegerValue")}];
  }

  v11 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"date" ascending:*(a1 + 64)];
  v41[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
  [v4 setSortDescriptors:v12];

  v31 = 0;
  v13 = [v3 executeFetchRequest:v4 error:&v31];
  v14 = v31;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v23 = NSStringFromSelector(*(a1 + 56));
      v24 = [v13 count];
      *buf = 138413058;
      v34 = v23;
      v35 = 2112;
      v36 = v4;
      v37 = 2048;
      v38 = v24;
      v39 = 2112;
      v40 = v14;
      _os_log_debug_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v26 = v3;
    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = v13;
    v17 = v13;
    v18 = [v17 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      do
      {
        v21 = 0;
        do
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [MEMORY[0x277D010B8] createWithManagedObject:*(*(&v27 + 1) + 8 * v21)];
          if (v22)
          {
            [v16 addObject:v22];
          }

          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v19);
    }

    v13 = v25;
    v3 = v26;
  }

  (*(*(a1 + 48) + 16))();
}

- (void)fetchBluePOITilesWithDateInterval:(id)interval ascending:(BOOL)ascending limit:(id)limit handler:(id)handler
{
  intervalCopy = interval;
  limitCopy = limit;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__RTBluePOITileStore_fetchBluePOITilesWithDateInterval_ascending_limit_handler___block_invoke;
  block[3] = &unk_2788C6440;
  block[4] = self;
  v18 = intervalCopy;
  ascendingCopy = ascending;
  v19 = limitCopy;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = limitCopy;
  v16 = intervalCopy;
  dispatch_async(queue, block);
}

- (void)_fetchBluePOITileCountWithHandler:(id)handler
{
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__RTBluePOITileStore__fetchBluePOITileCountWithHandler___block_invoke;
  aBlock[3] = &unk_2788CB7D8;
  v13 = a2;
  v6 = handlerCopy;
  v12 = v6;
  v7 = _Block_copy(aBlock);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__RTBluePOITileStore__fetchBluePOITileCountWithHandler___block_invoke_34;
  v9[3] = &unk_2788C48C0;
  v10 = v6;
  v8 = v6;
  [(RTStore *)self _performBlock:v7 contextType:1 errorHandler:v9];
}

void __56__RTBluePOITileStore__fetchBluePOITileCountWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTBluePOITileMO fetchRequest];
  v11 = 0;
  v5 = [v3 countForFetchRequest:v4 error:&v11];

  v6 = v11;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 40));
      *buf = 138413058;
      v13 = v8;
      v14 = 2112;
      v15 = v4;
      v16 = 2048;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, request, %@, count, %lu, error, %@", buf, 0x2Au);
    }
  }

  v9 = *(a1 + 32);
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  (*(v9 + 16))(v9, v10, v6);
}

- (void)fetchBluePOITileCountWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__RTBluePOITileStore_fetchBluePOITileCountWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)storeBluePOITiles:(id)tiles handler:(id)handler
{
  v13[1] = *MEMORY[0x277D85DE8];
  tilesCopy = tiles;
  handlerCopy = handler;
  if ([(RTStore *)self availability]== 2)
  {
    [(RTStore *)self storeWritableObjects:tilesCopy handler:handlerCopy];
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D01448];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = @"database temporarily unavailable";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v11 = [v8 errorWithDomain:v9 code:5 userInfo:v10];

    handlerCopy[2](handlerCopy, v11);
  }
}

- (void)updateBluePOITiles:(id)tiles handler:(id)handler
{
  v13[1] = *MEMORY[0x277D85DE8];
  tilesCopy = tiles;
  handlerCopy = handler;
  if ([(RTStore *)self availability]== 2)
  {
    [(RTStore *)self updateWritableObjects:tilesCopy handler:handlerCopy];
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D01448];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = @"database temporarily unavailable";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v11 = [v8 errorWithDomain:v9 code:5 userInfo:v10];

    handlerCopy[2](handlerCopy, v11);
  }
}

- (void)removeBluePOITilesWithGeoTileKeys:(id)keys handler:(id)handler
{
  keysCopy = keys;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__RTBluePOITileStore_removeBluePOITilesWithGeoTileKeys_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = keysCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = keysCopy;
  dispatch_async(queue, block);
}

- (void)_removeBluePOITilesWithGeoTileKeys:(id)keys handler:(id)handler
{
  v22[1] = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  handlerCopy = handler;
  if ([keysCopy count])
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __65__RTBluePOITileStore__removeBluePOITilesWithGeoTileKeys_handler___block_invoke;
    v17 = &unk_2788C4F38;
    v18 = keysCopy;
    selfCopy = self;
    v8 = handlerCopy;
    v20 = v8;
    v9 = _Block_copy(&v14);
    [(RTStore *)self _performBlock:v9 contextType:0 errorHandler:v8, v14, v15, v16, v17];

    v10 = v18;
LABEL_5:

    goto LABEL_6;
  }

  if (handlerCopy)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D01448];
    v21 = *MEMORY[0x277CCA450];
    v22[0] = @"requires valid tiles.";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v13 = [v11 errorWithDomain:v12 code:7 userInfo:v10];
    (*(handlerCopy + 2))(handlerCopy, v13);

    goto LABEL_5;
  }

LABEL_6:
}

void __65__RTBluePOITileStore__removeBluePOITilesWithGeoTileKeys_handler___block_invoke(void *a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTBluePOITileMO fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"tileKey", a1[4]];
  [v4 setPredicate:v5];

  v6 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v4];
  [v6 setResultType:2];
  v7 = a1[5];
  v9[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v7 executeDeleteRequests:v8 context:v3 handler:a1[6]];
}

- (void)_purgeBluePOITilesPredating:(id)predating handler:(id)handler
{
  v17[1] = *MEMORY[0x277D85DE8];
  predatingCopy = predating;
  handlerCopy = handler;
  if ([(RTStore *)self availability]== 2)
  {
    v14 = @"date";
    v13 = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    v15 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];

    [(RTStore *)self purgePredating:predatingCopy predicateMappings:v9 handler:handlerCopy];
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D01448];
    v16 = *MEMORY[0x277CCA450];
    v17[0] = @"database temporarily unavailable";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v9 = [v10 errorWithDomain:v11 code:5 userInfo:v12];

    handlerCopy[2](handlerCopy, v9);
  }
}

- (void)purgeBluePOITilesPredating:(id)predating handler:(id)handler
{
  predatingCopy = predating;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__RTBluePOITileStore_purgeBluePOITilesPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = predatingCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = predatingCopy;
  dispatch_async(queue, block);
}

- (void)_purgeBluePOIMetadataWithHandler:(id)handler
{
  v11[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if ([(RTStore *)self availability]== 2)
  {
    v9 = objc_opt_class();
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
    [(RTStore *)self removeAll:v5 handler:handlerCopy];
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277D01448];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = @"database temporarily unavailable";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v5 = [v6 errorWithDomain:v7 code:5 userInfo:v8];

    handlerCopy[2](handlerCopy, v5);
  }
}

- (void)purgeBluePOIMetadataWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__RTBluePOITileStore_purgeBluePOIMetadataWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)fetchBluePOIMetadataWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__RTBluePOITileStore_fetchBluePOIMetadataWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)_fetchBluePOIMetadataWithHandler:(id)handler
{
  v18[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([(RTStore *)self availability]== 2)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __55__RTBluePOITileStore__fetchBluePOIMetadataWithHandler___block_invoke;
      aBlock[3] = &unk_2788CB7D8;
      v16 = a2;
      v6 = handlerCopy;
      v15 = v6;
      v7 = _Block_copy(aBlock);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __55__RTBluePOITileStore__fetchBluePOIMetadataWithHandler___block_invoke_44;
      v12[3] = &unk_2788C48C0;
      v13 = v6;
      [(RTStore *)self _performBlock:v7 contextType:1 errorHandler:v12];

      v8 = v15;
    }

    else
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = *MEMORY[0x277D01448];
      v17 = *MEMORY[0x277CCA450];
      v18[0] = @"database temporarily unavailable";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v8 = [v9 errorWithDomain:v10 code:5 userInfo:v11];

      (*(handlerCopy + 2))(handlerCopy, 0, v8);
    }
  }
}

void __55__RTBluePOITileStore__fetchBluePOIMetadataWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTBluePOIMetadataMO fetchRequest];
  v13 = 0;
  v5 = [v3 executeFetchRequest:v4 error:&v13];

  v6 = v13;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityStore);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = NSStringFromSelector(*(a1 + 40));
      v12 = [v5 count];
      *buf = 138413058;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      v18 = 2048;
      v19 = v12;
      v20 = 2112;
      v21 = v6;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  v8 = MEMORY[0x277D010A8];
  v9 = [v5 firstObject];
  v10 = [v8 createWithManagedObject:v9];

  (*(*(a1 + 32) + 16))();
}

- (void)storeBluePOIMetadata:(id)metadata handler:(id)handler
{
  v19[1] = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  handlerCopy = handler;
  if ([(RTStore *)self availability]!= 2)
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277D01448];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"database temporarily unavailable";
    v11 = MEMORY[0x277CBEAC0];
    v12 = v19;
    v13 = &v18;
LABEL_6:
    v14 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
    v8 = [v9 errorWithDomain:v10 code:5 userInfo:v14];

    handlerCopy[2](handlerCopy, v8);
    goto LABEL_7;
  }

  if (!metadataCopy)
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277D01448];
    v16 = *MEMORY[0x277CCA450];
    v17 = @"Blue POI metadata is nil";
    v11 = MEMORY[0x277CBEAC0];
    v12 = &v17;
    v13 = &v16;
    goto LABEL_6;
  }

  v15 = metadataCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  [(RTStore *)self storeWritableObjects:v8 handler:handlerCopy];
LABEL_7:
}

- (void)updateBluePOIMetadata:(id)metadata handler:(id)handler
{
  v11 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v6 = MEMORY[0x277CBEA60];
  handlerCopy = handler;
  metadataCopy2 = metadata;
  v9 = [v6 arrayWithObjects:&metadataCopy count:1];

  [(RTStore *)self updateWritableObjects:v9 handler:handlerCopy, metadataCopy, v11];
}

@end