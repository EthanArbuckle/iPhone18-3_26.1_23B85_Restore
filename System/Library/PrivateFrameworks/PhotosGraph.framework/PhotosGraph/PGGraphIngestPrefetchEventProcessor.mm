@interface PGGraphIngestPrefetchEventProcessor
- (BOOL)shouldRunWithGraphUpdate:(id)update;
- (PGGraphIngestPrefetchEventProcessor)initWithGraphBuilder:(id)builder;
- (void)prefetchEventsWithSortedMomentNodes:(id)nodes locationsToPrefetch:(id *)prefetch progressBlock:(id)block;
- (void)runWithGraphUpdate:(id)update progressBlock:(id)block;
@end

@implementation PGGraphIngestPrefetchEventProcessor

- (void)prefetchEventsWithSortedMomentNodes:(id)nodes locationsToPrefetch:(id *)prefetch progressBlock:(id)block
{
  v86 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  blockCopy = block;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v61 = _Block_copy(blockCopy);
  if (v61 && (v7 = CFAbsoluteTimeGetCurrent(), v7 - v71[3] >= 0.01) && (v71[3] = v7, v78[0] = 0, v61[2](v61, v78, 0.0), v8 = *(v75 + 24) | v78[0], *(v75 + 24) = v8, (v8 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 70;
      *&buf[8] = 2080;
      *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPrefetchEventProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }
  }

  else
  {
    v58 = [MEMORY[0x277CBEB58] set];
    firstObject = [nodesCopy firstObject];
    startDate = [firstObject startDate];

    lastObject = [nodesCopy lastObject];
    endDate = [lastObject endDate];

    v11 = +[PGLogging sharedLogging];
    loggingConnection = [v11 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = startDate;
      *&buf[12] = 2112;
      *&buf[14] = endDate;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[IngestPrefetchEventProcessor] First Moment starts at %@, Last Moment ends at %@", buf, 0x16u);
    }

    v56 = 0;
    if (!startDate || !endDate)
    {
      goto LABEL_41;
    }

    v49 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1577880000.0];
    v48 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:31557600.0];
    v50 = [v49 laterDate:startDate];
    v13 = [v48 earlierDate:endDate];
    [v50 timeIntervalSinceDate:v13];
    v60 = v13;
    if (v14 >= 0.0)
    {
      v38 = +[PGLogging sharedLogging];
      loggingConnection2 = [v38 loggingConnection];

      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        *&buf[4] = v50;
        *&buf[12] = 2112;
        *&buf[14] = v60;
        *&buf[22] = 2112;
        v83 = startDate;
        v84 = 2112;
        v85 = endDate;
        _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_DEFAULT, "[IngestPrefetchEventProcessor] prefetchStartDate [%@] is later date than prefetchEndDate [%@] because firstMomentUniversalStartDate was %@ and lastMomentUniversalEndDate was %@.", buf, 0x2Au);
      }

      if (v61)
      {
        Current = CFAbsoluteTimeGetCurrent();
        if (Current - v71[3] >= 0.01)
        {
          v71[3] = Current;
          v78[0] = 0;
          v61[2](v61, v78, 1.0);
          v41 = *(v75 + 24) | v78[0];
          *(v75 + 24) = v41;
          if ((v41 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *&buf[4] = 92;
            *&buf[8] = 2080;
            *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPrefetchEventProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }

      v56 = 0;
      v37 = 0;
    }

    else
    {
      [v13 timeIntervalSinceDate:v50];
      v16 = v15;
      serviceManager = [(PGGraphBuilder *)self->_graphBuilder serviceManager];
      if (!serviceManager)
      {
        __assert_rtn("[PGGraphIngestPrefetchEventProcessor prefetchEventsWithSortedMomentNodes:locationsToPrefetch:progressBlock:]", "PGGraphIngestPrefetchEventProcessor.m", 99, "serviceManager != nil");
      }

      v17 = v50;
      v56 = 0;
      v18 = MEMORY[0x277D86220];
      v54 = v17;
      while (v17 && [v17 compare:v60] == -1)
      {
        v19 = objc_autoreleasePoolPush();
        v20 = [MEMORY[0x277D27690] dateByAddingMonths:6 toDate:v17];
        v21 = [v20 earlierDate:v60];

        [v17 timeIntervalSinceDate:v54];
        v23 = v22 / v16;
        if (v61 && (v24 = CFAbsoluteTimeGetCurrent(), v24 - v71[3] >= 0.01) && (v71[3] = v24, v78[0] = 0, v61[2](v61, v78, v23), v25 = *(v75 + 24) | v78[0], *(v75 + 24) = v25, (v25 & 1) != 0))
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *&buf[4] = 110;
            *&buf[8] = 2080;
            *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPrefetchEventProcessor.m";
            _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v26 = 0;
        }

        else
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          v83 = 0;
          v27 = [v17 dateByAddingTimeInterval:-0.001];
          v28 = [v21 dateByAddingTimeInterval:0.001];
          v29 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(startDate >= %@) AND (startDate <= %@)", v27, v28];
          v30 = [nodesCopy filteredArrayUsingPredicate:v29];

          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = __109__PGGraphIngestPrefetchEventProcessor_prefetchEventsWithSortedMomentNodes_locationsToPrefetch_progressBlock___block_invoke;
          v62[3] = &unk_27887F808;
          v63 = v58;
          v65 = buf;
          v64 = v61;
          v66 = &v70;
          v69 = v23;
          v68 = 0x3F847AE147AE147BLL;
          v67 = &v74;
          [serviceManager prefetchEventsFromUniversalDate:v17 toUniversalDate:v21 forAssetCollectionsSortedByStartDate:v30 usingBlock:v62];
          v31 = *(v75 + 24);
          if (v31 == 1)
          {
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              *v78 = 67109378;
              v79 = 134;
              v80 = 2080;
              v81 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPrefetchEventProcessor.m";
              _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v78, 0x12u);
            }
          }

          else
          {
            v32 = +[PGLogging sharedLogging];
            loggingConnection3 = [v32 loggingConnection];

            if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_INFO))
            {
              v34 = *(*&buf[8] + 24);
              *v78 = 67109120;
              v79 = v34;
              _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_INFO, "[IngestPrefetchEventProcessor] Prefetched %d events", v78, 8u);
            }

            v35 = *(*&buf[8] + 24);
            v36 = v21;

            v56 += v35;
            v17 = v36;
          }

          v26 = v31 ^ 1;
          _Block_object_dispose(buf, 8);
        }

        objc_autoreleasePoolPop(v19);
        if ((v26 & 1) == 0)
        {
          v37 = 0;
          goto LABEL_39;
        }
      }

      v37 = 1;
LABEL_39:
    }

    if (v37)
    {
LABEL_41:
      v42 = +[PGLogging sharedLogging];
      loggingConnection4 = [v42 loggingConnection];

      if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v56;
        _os_log_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_INFO, "[IngestPrefetchEventProcessor] Prefetched %d events in all", buf, 8u);
      }

      if (prefetch)
      {
        v44 = v58;
        *prefetch = v58;
      }

      if (v61)
      {
        v45 = CFAbsoluteTimeGetCurrent();
        if (v45 - v71[3] >= 0.01)
        {
          v71[3] = v45;
          v78[0] = 0;
          v61[2](v61, v78, 1.0);
          v46 = *(v75 + 24) | v78[0];
          *(v75 + 24) = v46;
          if ((v46 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *&buf[4] = 151;
            *&buf[8] = 2080;
            *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPrefetchEventProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }
  }

  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v74, 8);

  v47 = *MEMORY[0x277D85DE8];
}

void __109__PGGraphIngestPrefetchEventProcessor_prefetchEventsWithSortedMomentNodes_locationsToPrefetch_progressBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v5 geoLocation];
    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x277CBFBC8]);
      [v7 coordinate];
      v10 = v9;
      v12 = v11;
      v13 = [MEMORY[0x277CCAD78] UUID];
      v14 = [v13 UUIDString];
      v15 = [v8 initWithCenter:v14 radius:v10 identifier:{v12, 10.0}];

      [*(a1 + 32) addObject:v15];
    }

    objc_autoreleasePoolPop(v6);
    ++*(*(*(a1 + 48) + 8) + 24);
  }

  if (*(a1 + 40))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v17 = *(*(a1 + 56) + 8);
    if (Current - *(v17 + 24) >= *(a1 + 72))
    {
      *(v17 + 24) = Current;
      (*(*(a1 + 40) + 16))(*(a1 + 80));
      *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24);
      if (*(*(*(a1 + 64) + 8) + 24) == 1)
      {
        *a3 = 1;
      }
    }
  }
}

- (void)runWithGraphUpdate:(id)update progressBlock:(id)block
{
  v36[1] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  blockCopy = block;
  loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
  v8 = os_signpost_id_generate(loggingConnection);
  v9 = loggingConnection;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PGGraphIngestPrefetchEventProcessor", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v28 = mach_absolute_time();
  v11 = [updateCopy momentsToProcessForMomentUpdateTypes:31 includeMomentsToIngest:1];
  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v36[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  v14 = [v11 sortedArrayUsingDescriptors:v13];

  v15 = +[PGLogging sharedLogging];
  loggingConnection2 = [v15 loggingConnection];

  if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v11 count];
    *buf = 67109120;
    LODWORD(v33) = v17;
    _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_DEFAULT, "[IngestPrefetchEventProcessor] About to process %d Moments", buf, 8u);
  }

  if ([v14 count])
  {
    v30 = 0;
    [(PGGraphIngestPrefetchEventProcessor *)self prefetchEventsWithSortedMomentNodes:v14 locationsToPrefetch:&v30 progressBlock:blockCopy];
    v18 = v30;
    if (v18)
    {
      v19 = +[PGLogging sharedLogging];
      loggingConnection3 = [v19 loggingConnection];

      if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v18 count];
        *buf = 67109120;
        LODWORD(v33) = v21;
        _os_log_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_DEFAULT, "[IngestPrefetchEventProcessor] There are %d additional locations to prefetch", buf, 8u);
      }

      [updateCopy setAdditionalLocationsToPrefetch:v18];
    }
  }

  else
  {
    v18 = 0;
  }

  v22 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v25 = v10;
  v26 = v25;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v26, OS_SIGNPOST_INTERVAL_END, v8, "PGGraphIngestPrefetchEventProcessor", "", buf, 2u);
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v33 = "PGGraphIngestPrefetchEventProcessor";
    v34 = 2048;
    v35 = ((((v22 - v28) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v26, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldRunWithGraphUpdate:(id)update
{
  updateCopy = update;
  v4 = (CLSDeviceIs2GBOrLess() & 1) == 0 && (([updateCopy hasMomentsToInsert] & 1) != 0 || (objc_msgSend(updateCopy, "momentUpdateTypes") & 0x1F) != 0);

  return v4;
}

- (PGGraphIngestPrefetchEventProcessor)initWithGraphBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = PGGraphIngestPrefetchEventProcessor;
  v6 = [(PGGraphIngestPrefetchEventProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, builder);
  }

  return v7;
}

@end