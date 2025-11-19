@interface PPSSQLiteHistogramIngester
- (PPSSQLiteHistogramIngester)initWithFilepath:(id)a3;
- (id)_convertSQLiteDataFromQuery:(id)a3 withDimensions:(id)a4 outError:(id *)a5;
- (id)parseDataForRequest:(id)a3 outError:(id *)a4;
@end

@implementation PPSSQLiteHistogramIngester

- (PPSSQLiteHistogramIngester)initWithFilepath:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PPSSQLiteHistogramIngester;
  v6 = [(PPSSQLiteHistogramIngester *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_filepath, a3);
  }

  return v7;
}

- (id)parseDataForRequest:(id)a3 outError:(id *)a4
{
  v60[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v53 = [v5 subsystem];
  v52 = [v5 category];
  v50 = [v5 valueFilter];
  v54 = [v5 timeFilter];
  v6 = [v5 metrics];
  v7 = [v6 allObjects];

  if (v54)
  {
    v8 = [(PPSSQLiteHistogramIngester *)self filepath];
    v9 = [PPSTimestampConverterRegistry converterForFilepath:v8];

    v10 = [v54 startDate];
    [v10 timeIntervalSince1970];
    v12 = v11;

    [v9 monotonicTimeFromEpochTime:v12];
    v14 = v13;
    v15 = [v54 endDate];
    [v15 timeIntervalSince1970];
    v17 = v16;

    [v9 monotonicTimeFromEpochTime:v17];
    v19 = [PPSPredicateUtilities predicateForStartTimestamp:@"timestamp" endTimestamp:v14 withKeyPath:v18];
    v20 = v19;
    if (v50)
    {
      v21 = MEMORY[0x277CCA920];
      v60[0] = v50;
      v60[1] = v19;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
      v49 = [v21 andPredicateWithSubpredicates:v22];
    }

    else
    {
      v49 = v19;
    }
  }

  else
  {
    v49 = v50;
  }

  v23 = [(PPSSQLiteHistogramIngester *)self filepath];
  v24 = [PPSOffDeviceIngesterUtilities metricDefinitionsForFilepath:v23 subsystem:v53 category:v52 metricNames:v7];
  v25 = [v24 mutableCopy];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v26 = v7;
  v27 = [v26 countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v27)
  {
    v28 = *v56;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v56 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v55 + 1) + 8 * i);
        v31 = [v25 objectForKeyedSubscript:v30];
        v32 = v31 == 0;

        if (v32)
        {
          v33 = [MEMORY[0x277CBEB68] null];
          [v25 setObject:v33 forKeyedSubscript:v30];
        }
      }

      v27 = [v26 countByEnumeratingWithState:&v55 objects:v59 count:16];
    }

    while (v27);
  }

  v34 = [(PPSSQLiteHistogramIngester *)self filepath];
  v35 = [PPSOffDeviceIngesterUtilities allDataSourcesForFilepath:v34 subsystem:v53 category:v52];

  v36 = [[PPSSQLiteEntity alloc] initWithTableNames:v35];
  v37 = [PPSSQLiteQueryDescriptor alloc];
  v38 = [v49 pps_sqlPredicateForSelect];
  v39 = [(PPSSQLiteQueryDescriptor *)v37 initWithEntity:v36 predicate:v38];

  v40 = [PPSSQLiteDatabase alloc];
  v41 = [(PPSSQLiteHistogramIngester *)self filepath];
  v42 = [(PPSSQLiteDatabase *)v40 initWithDatabaseURL:v41];

  v43 = [[PPSSQLiteQuery alloc] initWithDatabase:v42 descriptor:v39];
  v44 = PPSReaderLog();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    [(PPSSQLiteHistogramIngester *)v43 parseDataForRequest:v26 outError:v44];
  }

  [(PPSSQLiteDatabase *)v42 openForReadingWithError:a4];
  if (*a4)
  {
    v45 = 0;
  }

  else
  {
    v46 = [v5 dimensions];
    v45 = [(PPSSQLiteHistogramIngester *)self _convertSQLiteDataFromQuery:v43 withDimensions:v46 outError:a4];
  }

  [(PPSSQLiteDatabase *)v42 close];

  v47 = *MEMORY[0x277D85DE8];

  return v45;
}

- (id)_convertSQLiteDataFromQuery:(id)a3 withDimensions:(id)a4 outError:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__3;
    v25 = __Block_byref_object_dispose__3;
    v26 = [[PPSHistogram alloc] initWithDimensions:v8];
    v9 = [v8 valueForKeyPath:@"@unionOfObjects.metricName"];
    v10 = [v7 columnNamesForProperties:v9];
    v11 = [v10 count];
    if (v11 != [v9 count])
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Number of columns and metric names should be the same."];
    }

    v12 = [v10 count];
    if (v12 != [v8 count])
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Number of columns and histogram dimensions should be the same."];
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __82__PPSSQLiteHistogramIngester__convertSQLiteDataFromQuery_withDimensions_outError___block_invoke;
    v16[3] = &unk_279A116E0;
    v20 = v11;
    v13 = v10;
    v17 = v13;
    v18 = v8;
    v19 = &v21;
    [v7 enumerateProperties:v9 error:a5 enumerationHandler:v16];
    v14 = v22[5];

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __82__PPSSQLiteHistogramIngester__convertSQLiteDataFromQuery_withDimensions_outError___block_invoke(uint64_t a1, void *a2, PPSSQLiteRow *a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = objc_opt_new();
  if (*(a1 + 56))
  {
    v8 = 0;
    do
    {
      v9 = [*(a1 + 32) objectAtIndexedSubscript:v8];
      v10 = PPSSQLiteColumnValueWithNameAsNumber(a3, v9);

      if (v10)
      {
        [v7 addObject:v10];
      }

      ++v8;
    }

    while (v8 < *(a1 + 56));
  }

  v11 = [v7 count];
  if (v11 == [*(a1 + 40) count])
  {
    [*(*(*(a1 + 48) + 8) + 40) recordSample:v7];
  }

  objc_autoreleasePoolPop(v6);
  return 1;
}

- (void)parseDataForRequest:(NSObject *)a3 outError:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [a1 selectSQLWithProperties:a2];
  v6 = 138412290;
  v7 = v4;
  _os_log_debug_impl(&dword_25E225000, a3, OS_LOG_TYPE_DEBUG, "Query before value-binding: %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end