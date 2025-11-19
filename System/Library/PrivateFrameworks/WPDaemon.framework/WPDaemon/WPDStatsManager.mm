@interface WPDStatsManager
+ (id)getStringFromActivity:(unint64_t)a3;
- (WPDStatsManager)initWithServer:(id)a3;
- (WPDaemonServer)server;
- (id)description;
- (id)generateStateDumpStrings;
- (id)getStatsDictionary;
- (void)dealloc;
- (void)generateStateDump;
- (void)reportPLStats;
- (void)resetActivity:(unint64_t)a3 forType:(unsigned __int8)a4;
- (void)resetActivityAsync:(unint64_t)a3 forType:(unsigned __int8)a4;
- (void)startActivity:(unint64_t)a3 forType:(unsigned __int8)a4 scanRate:(int64_t)a5;
- (void)startActivityAsync:(unint64_t)a3 forType:(unsigned __int8)a4;
- (void)startActivityAsync:(unint64_t)a3 forType:(unsigned __int8)a4 scanRate:(int64_t)a5;
- (void)stopActivity:(unint64_t)a3;
- (void)stopActivity:(unint64_t)a3 forType:(unsigned __int8)a4;
- (void)stopActivityAsync:(unint64_t)a3;
- (void)stopActivityAsync:(unint64_t)a3 forType:(unsigned __int8)a4;
@end

@implementation WPDStatsManager

- (void)reportPLStats
{
  if (self->_PLLogAvailable)
  {
    location[5] = v2;
    location[6] = v3;
    reportQueue = self->_reportQueue;
    if (!reportQueue)
    {
      v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_BACKGROUND, 0);

      v8 = dispatch_queue_create("WPStatsQueue", v7);
      v9 = self->_reportQueue;
      self->_reportQueue = v8;

      objc_initWeak(location, self);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __32__WPDStatsManager_reportPLStats__block_invoke;
      v12[3] = &unk_279E58EE8;
      objc_copyWeak(&v13, location);
      v10 = MEMORY[0x2743D14E0](v12);
      v11 = reportPLStats_reportBlock;
      reportPLStats_reportBlock = v10;

      objc_destroyWeak(&v13);
      objc_destroyWeak(location);

      reportQueue = self->_reportQueue;
    }

    dispatch_async(reportQueue, reportPLStats_reportBlock);
  }
}

void __32__WPDStatsManager_reportPLStats__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_autoreleasePoolPush();
    [WeakRetained nextPushTime];
    if (v3 <= CFAbsoluteTimeGetCurrent())
    {
      if (PLShouldLogRegisteredEvent())
      {
        v5 = [WeakRetained getStatsDictionary];
        PLLogRegisteredEvent();
        [WeakRetained setNextPushTime:CFAbsoluteTimeGetCurrent() + 1200.0];
        if (WPLogInitOnce != -1)
        {
          __32__WPDStatsManager_reportPLStats__block_invoke_cold_1();
        }

        v6 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
        {
          __32__WPDStatsManager_reportPLStats__block_invoke_cold_2(v5, v6);
        }
      }

      else
      {
        if (WPLogInitOnce != -1)
        {
          __32__WPDStatsManager_reportPLStats__block_invoke_cold_3();
        }

        v7 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
        {
          __32__WPDStatsManager_reportPLStats__block_invoke_cold_4(v7);
        }
      }
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        __32__WPDStatsManager_reportPLStats__block_invoke_cold_5();
      }

      v4 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        __32__WPDStatsManager_reportPLStats__block_invoke_cold_6(v4);
      }
    }

    objc_autoreleasePoolPop(v2);
  }
}

- (WPDStatsManager)initWithServer:(id)a3
{
  v32[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = WPDStatsManager;
  v5 = [(WPDStatsManager *)&v30 init];
  v6 = v5;
  if (v5)
  {
    name = v5->_name;
    v5->_name = @"StatsManager";

    objc_storeWeak(&v6->_server, v4);
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:28];
    regularScanArray = v6->_regularScanArray;
    v6->_regularScanArray = v8;

    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:28];
    aggressiveScanArray = v6->_aggressiveScanArray;
    v6->_aggressiveScanArray = v10;

    v31[0] = &unk_288201A60;
    v31[1] = &unk_288201A78;
    v12 = v6->_aggressiveScanArray;
    v32[0] = v6->_regularScanArray;
    v32[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
    scanArray = v6->_scanArray;
    v6->_scanArray = v13;

    v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:28];
    advertisingArray = v6->_advertisingArray;
    v6->_advertisingArray = v15;

    v6->_resetScanArray = malloc_type_malloc(0xE0uLL, 0x100004000313F17uLL);
    v17 = 0;
    v6->_resetAdvertisingArray = malloc_type_malloc(0xE0uLL, 0x100004000313F17uLL);
    do
    {
      v18 = v6->_regularScanArray;
      v19 = objc_opt_new();
      [(NSMutableArray *)v18 addObject:v19];

      v20 = v6->_aggressiveScanArray;
      v21 = objc_opt_new();
      [(NSMutableArray *)v20 addObject:v21];

      v22 = v6->_advertisingArray;
      v23 = objc_opt_new();
      [(NSMutableArray *)v22 addObject:v23];

      resetAdvertisingArray = v6->_resetAdvertisingArray;
      v6->_resetScanArray[v17] = 0;
      resetAdvertisingArray[v17++] = 0;
    }

    while (v17 != 28);
    reportQueue = v6->_reportQueue;
    v6->_reportQueue = 0;

    v6->_nextPushTime = 0.0;
    if (MEMORY[0x2822275F0])
    {
      v26 = MEMORY[0x2822275F8] == 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = !v26;
    v6->_PLLogAvailable = v27;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)dealloc
{
  resetScanArray = self->_resetScanArray;
  if (resetScanArray)
  {
    free(resetScanArray);
    self->_resetScanArray = 0;
  }

  resetAdvertisingArray = self->_resetAdvertisingArray;
  if (resetAdvertisingArray)
  {
    free(resetAdvertisingArray);
    self->_resetAdvertisingArray = 0;
  }

  v5.receiver = self;
  v5.super_class = WPDStatsManager;
  [(WPDStatsManager *)&v5 dealloc];
}

- (id)description
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = [(WPDStatsManager *)self generateStateDumpStrings];
  v5 = [v4 count] - 1;
  v6 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@\n", self->_name];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v4 subarrayWithRange:{1, v5}];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 appendString:*(*(&v15 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v12 = [MEMORY[0x277CCACA8] stringWithString:v6];

  objc_autoreleasePoolPop(v3);
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)generateStateDumpStrings
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CCAB68] stringWithFormat:@"========= %@ =========\n", self->_name];
  [v3 addObject:v4];

  if (self->_PLLogAvailable)
  {
    [(WPDStatsManager *)self nextPushTime];
    v5 = MEMORY[0x277CCACA8];
    if (v6 <= 0.0)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Last pushed to PL log (%@) - never"], @"WirelessProximity", v12);
    }

    else
    {
      Current = CFAbsoluteTimeGetCurrent();
      [(WPDStatsManager *)self nextPushTime];
      [v5 stringWithFormat:@"Last pushed to PL log (%@) - %f seconds ago"], @"WirelessProximity", Current - v8 + 1200.0);
    }
    v9 = ;
    [v3 addObject:v9];
  }

  else
  {
    [v3 addObject:@"Push to PL log is not supported"];
  }

  v10 = [MEMORY[0x277CBEA60] arrayWithArray:v3];

  return v10;
}

- (void)generateStateDump
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(WPDStatsManager *)self generateStateDumpStrings];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if (WPLogInitOnce != -1)
        {
          [WPDStatsManager generateStateDump];
        }

        v8 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v15 = v7;
          _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump: %@", buf, 0xCu);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)startActivity:(unint64_t)a3 forType:(unsigned __int8)a4 scanRate:(int64_t)a5
{
  v5 = a4;
  if (a4 < 0x1Cu)
  {
    v7 = a4;
    if (a3)
    {
      v8 = [(NSMutableArray *)self->_advertisingArray objectAtIndexedSubscript:a4];
    }

    else
    {
      v11 = [(WPDStatsManager *)self regularScanArray];
      v12 = [v11 objectAtIndexedSubscript:v7];
      [v12 stopTime];

      v13 = [(WPDStatsManager *)self aggressiveScanArray];
      v14 = [v13 objectAtIndexedSubscript:v7];
      [v14 stopTime];

      scanArray = self->_scanArray;
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
      v17 = [(NSDictionary *)scanArray objectForKeyedSubscript:v16];
      v18 = [v17 objectAtIndexedSubscript:v7];

      v8 = v18;
    }

    v19 = v8;
    [v8 startTime];
  }

  else if (+[WPDaemonServer isInternalBuild])
  {
    [MEMORY[0x277CBEAD8] raise:@"WPClientType beyond bounds" format:{@"Trying to start activity for type %ld when WPClientMax is %ld", v5, 28}];
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDStatsManager startActivity:forType:scanRate:];
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDStatsManager startActivity:v5 forType:v9 scanRate:?];
    }
  }
}

- (void)stopActivity:(unint64_t)a3 forType:(unsigned __int8)a4
{
  v5 = a4;
  if (a3)
  {
    [(WPDStatsManager *)self advertisingArray];
  }

  else
  {
    v6 = [(WPDStatsManager *)self regularScanArray];
    v7 = [v6 objectAtIndexedSubscript:v5];
    [v7 stopTime];

    [(WPDStatsManager *)self aggressiveScanArray];
  }
  v9 = ;
  v8 = [v9 objectAtIndexedSubscript:v5];
  [v8 stopTime];
}

- (void)stopActivity:(unint64_t)a3
{
  if (a3)
  {
    v4 = [(WPDStatsManager *)self advertisingArray];
    v5 = &__block_literal_global_187_4;
  }

  else
  {
    v6 = [(WPDStatsManager *)self regularScanArray];
    [v6 enumerateObjectsUsingBlock:&__block_literal_global_183_0];

    v4 = [(WPDStatsManager *)self aggressiveScanArray];
    v5 = &__block_literal_global_185_0;
  }

  v7 = v4;
  [v4 enumerateObjectsUsingBlock:v5];
}

- (void)resetActivity:(unint64_t)a3 forType:(unsigned __int8)a4
{
  v4 = a4;
  if (a3)
  {
    if (![(WPDStatsManager *)self resetAdvertisingArray])
    {
      return;
    }

    v6 = [(WPDStatsManager *)self resetAdvertisingArray];
  }

  else
  {
    if (![(WPDStatsManager *)self resetScanArray])
    {
      return;
    }

    v6 = [(WPDStatsManager *)self resetScanArray];
  }

  ++v6[v4];
}

- (id)getStatsDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
  v4 = objc_autoreleasePoolPush();
  v5 = [(WPDStatsManager *)self regularScanArray];
  v6 = timeArrayFromArray(v5);
  [v3 setObject:v6 forKeyedSubscript:@"Scan"];

  v7 = [(WPDStatsManager *)self advertisingArray];
  v8 = timeArrayFromArray(v7);
  [v3 setObject:v8 forKeyedSubscript:@"Advertise"];

  v9 = [(WPDStatsManager *)self aggressiveScanArray];
  v10 = timeArrayFromArray(v9);
  [v3 setObject:v10 forKeyedSubscript:@"AggressiveScan"];

  v11 = counterArrayFromCounters([(WPDStatsManager *)self resetScanArray]);
  [v3 setObject:v11 forKeyedSubscript:@"ResetScan"];

  v12 = counterArrayFromCounters([(WPDStatsManager *)self resetAdvertisingArray]);
  [v3 setObject:v12 forKeyedSubscript:@"ResetAdvertise"];

  objc_autoreleasePoolPop(v4);

  return v3;
}

+ (id)getStringFromActivity:(unint64_t)a3
{
  if (a3)
  {
    return @"WPDStatActivityAdvertise";
  }

  else
  {
    return @"WPDStatActivityScan";
  }
}

- (void)startActivityAsync:(unint64_t)a3 forType:(unsigned __int8)a4 scanRate:(int64_t)a5
{
  objc_initWeak(&location, self);
  v9 = [(WPDStatsManager *)self server];
  v10 = [v9 serverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__WPDStatsManager_startActivityAsync_forType_scanRate___block_invoke;
  block[3] = &unk_279E59D80;
  objc_copyWeak(v12, &location);
  v13 = a4;
  v12[1] = a3;
  v12[2] = a5;
  dispatch_async(v10, block);

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void __55__WPDStatsManager_startActivityAsync_forType_scanRate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained startActivity:*(a1 + 40) forType:*(a1 + 56) scanRate:*(a1 + 48)];
    WeakRetained = v3;
  }
}

- (void)startActivityAsync:(unint64_t)a3 forType:(unsigned __int8)a4
{
  objc_initWeak(&location, self);
  v7 = [(WPDStatsManager *)self server];
  v8 = [v7 serverQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__WPDStatsManager_startActivityAsync_forType___block_invoke;
  v9[3] = &unk_279E59DA8;
  objc_copyWeak(v10, &location);
  v10[1] = a3;
  v11 = a4;
  dispatch_async(v8, v9);

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __46__WPDStatsManager_startActivityAsync_forType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained startActivity:*(a1 + 40) forType:*(a1 + 48)];
    WeakRetained = v3;
  }
}

- (void)stopActivityAsync:(unint64_t)a3 forType:(unsigned __int8)a4
{
  objc_initWeak(&location, self);
  v7 = [(WPDStatsManager *)self server];
  v8 = [v7 serverQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__WPDStatsManager_stopActivityAsync_forType___block_invoke;
  v9[3] = &unk_279E59DA8;
  objc_copyWeak(v10, &location);
  v10[1] = a3;
  v11 = a4;
  dispatch_async(v8, v9);

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __45__WPDStatsManager_stopActivityAsync_forType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained stopActivity:*(a1 + 40) forType:*(a1 + 48)];
    WeakRetained = v3;
  }
}

- (void)stopActivityAsync:(unint64_t)a3
{
  objc_initWeak(&location, self);
  v5 = [(WPDStatsManager *)self server];
  v6 = [v5 serverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__WPDStatsManager_stopActivityAsync___block_invoke;
  block[3] = &unk_279E59DD0;
  objc_copyWeak(v8, &location);
  v8[1] = a3;
  dispatch_async(v6, block);

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __37__WPDStatsManager_stopActivityAsync___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained stopActivity:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)resetActivityAsync:(unint64_t)a3 forType:(unsigned __int8)a4
{
  objc_initWeak(&location, self);
  v7 = [(WPDStatsManager *)self server];
  v8 = [v7 serverQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__WPDStatsManager_resetActivityAsync_forType___block_invoke;
  v9[3] = &unk_279E59DA8;
  objc_copyWeak(v10, &location);
  v10[1] = a3;
  v11 = a4;
  dispatch_async(v8, v9);

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __46__WPDStatsManager_resetActivityAsync_forType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained resetActivity:*(a1 + 40) forType:*(a1 + 48)];
    WeakRetained = v3;
  }
}

- (WPDaemonServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

- (void)startActivity:(unsigned __int8)a1 forType:(NSObject *)a2 scanRate:.cold.2(unsigned __int8 a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = 28;
  _os_log_error_impl(&dword_272965000, a2, OS_LOG_TYPE_ERROR, "WPClientType %ld beyond bounds WPClientMax = %ld", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __32__WPDStatsManager_reportPLStats__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138478083;
  v4 = @"WirelessProximity";
  v5 = 2113;
  v6 = a1;
  _os_log_debug_impl(&dword_272965000, a2, OS_LOG_TYPE_DEBUG, "WPStatsManager did write to PL log %{private}@ info:%{private}@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __32__WPDStatsManager_reportPLStats__block_invoke_cold_4(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138477827;
  v3 = @"WirelessProximity";
  _os_log_debug_impl(&dword_272965000, log, OS_LOG_TYPE_DEBUG, "WPStatsManager denied write to PL log (%{private}@)", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __32__WPDStatsManager_reportPLStats__block_invoke_cold_6(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138477827;
  v3 = @"WirelessProximity";
  _os_log_debug_impl(&dword_272965000, log, OS_LOG_TYPE_DEBUG, "WPStatsManager skipped write to PL log (%{private}@)", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end