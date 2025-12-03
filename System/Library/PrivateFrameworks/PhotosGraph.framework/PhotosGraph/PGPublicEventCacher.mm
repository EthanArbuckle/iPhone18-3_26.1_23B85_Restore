@interface PGPublicEventCacher
- (PGPublicEventCacher)initWithDisambiguator:(id)disambiguator;
- (id)executeFetchRequest:(id)request publicEventManager:(id)manager progressReporter:(id)reporter error:(id *)error;
@end

@implementation PGPublicEventCacher

- (id)executeFetchRequest:(id)request publicEventManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  v96 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  managerCopy = manager;
  reporterCopy = reporter;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v12 = [reporterCopy isCancelledWithProgress:0.0];
  *(v88 + 24) = v12;
  if (!v12)
  {
    errorCopy = error;
    v14 = self->_log;
    v15 = os_signpost_id_generate(v14);
    v16 = v14;
    v17 = v16;
    v61 = v15 - 1;
    spid = v15;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PGPublicEventCacherExecuteFetchRequest", "", buf, 2u);
    }

    v68 = v17;

    info = 0;
    mach_timebase_info(&info);
    v60 = mach_absolute_time();
    *buf = 0;
    *&v94 = buf;
    *(&v94 + 1) = 0x2020000000;
    v95 = 0;
    v18 = self->_log;
    v19 = os_signpost_id_generate(v18);
    v20 = v18;
    v21 = v20;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *v91 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "PGPublicEventCacherCollectConsolidatedAddresses", "", v91, 2u);
    }

    v85 = 0;
    mach_timebase_info(&v85);
    v22 = mach_absolute_time();
    graph = [requestCopy graph];
    momentNodes = [requestCopy momentNodes];
    v65 = graph;
    largeFrequentLocationNodes = [graph largeFrequentLocationNodes];
    disambiguator = self->_disambiguator;
    v83 = 0;
    v84 = 0;
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __85__PGPublicEventCacher_executeFetchRequest_publicEventManager_progressReporter_error___block_invoke;
    v78[3] = &unk_278888FD0;
    v80 = buf;
    v81 = &v87;
    v82 = 0;
    v26 = reporterCopy;
    v79 = v26;
    [(PGPublicEventDisambiguator *)disambiguator collectConsolidatedAddressesForMomentNodes:momentNodes largeFrequentLocationNodes:largeFrequentLocationNodes consolidatedAddresses:&v84 consolidatedAddressesByMomentIdentifier:&v83 momentNodesForConsolidatedAddresses:&v82 progressBlock:v78];
    v64 = largeFrequentLocationNodes;
    v69 = v84;
    v67 = v83;
    v66 = v82;
    v27 = self->_log;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = [v69 count];
      v29 = [momentNodes count];
      *v91 = 134218240;
      *v92 = v28;
      *&v92[8] = 2048;
      *&v92[10] = v29;
      _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "[PublicEvents] collected %lu consolidated address nodes from %lu moment nodes", v91, 0x16u);
    }

    v30 = mach_absolute_time();
    numer = v85.numer;
    denom = v85.denom;
    v33 = v21;
    v34 = v33;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
    {
      *v91 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v34, OS_SIGNPOST_INTERVAL_END, v19, "PGPublicEventCacherCollectConsolidatedAddresses", "", v91, 2u);
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *v91 = 136315394;
      *v92 = "PGPublicEventCacherCollectConsolidatedAddresses";
      *&v92[8] = 2048;
      *&v92[10] = ((((v30 - v22) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v91, 0x16u);
    }

    if (*(v88 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v91 = 67109378;
        *v92 = 122;
        *&v92[4] = 2080;
        *&v92[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGPublicEventCacher.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v91, 0x12u);
      }

      v13 = 0;
      goto LABEL_50;
    }

    v35 = self->_log;
    v36 = os_signpost_id_generate(v35);
    v37 = v35;
    v38 = v37;
    if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
    {
      *v91 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v38, OS_SIGNPOST_INTERVAL_BEGIN, v36, "PGPublicEventCacherEventFetch", "", v91, 2u);
    }

    v77 = 0;
    mach_timebase_info(&v77);
    v39 = mach_absolute_time();
    *(v94 + 24) = 0x3FC999999999999ALL;
    cachingOptions = [requestCopy cachingOptions];
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __85__PGPublicEventCacher_executeFetchRequest_publicEventManager_progressReporter_error___block_invoke_51;
    v72[3] = &unk_278881368;
    v76 = 0x3FE999999999999ALL;
    v74 = buf;
    v75 = &v87;
    v58 = v26;
    v59 = cachingOptions;
    v73 = v58;
    v41 = [managerCopy publicEventsByTimeLocationTupleIdentifierForTimeLocationTuples:v69 cachingOptions:cachingOptions progressBlock:v72 error:errorCopy];
    v42 = self->_log;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = [v41 count];
      *v91 = 134217984;
      *v92 = v43;
      _os_log_impl(&dword_22F0FC000, v42, OS_LOG_TYPE_DEFAULT, "[PublicEvents] fetched public events for %lu time location tuples (from cache and/or server)", v91, 0xCu);
    }

    v44 = mach_absolute_time();
    v46 = v77.numer;
    v45 = v77.denom;
    v47 = v38;
    v48 = v47;
    if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
    {
      *v91 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v48, OS_SIGNPOST_INTERVAL_END, v36, "PGPublicEventCacherEventFetch", "", v91, 2u);
    }

    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      *v91 = 136315394;
      *v92 = "PGPublicEventCacherEventFetch";
      *&v92[8] = 2048;
      *&v92[10] = ((((v44 - v39) * v46) / v45) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v48, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v91, 0x16u);
    }

    if (*(v88 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v91 = 67109378;
        *v92 = 141;
        *&v92[4] = 2080;
        *&v92[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGPublicEventCacher.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v91, 0x12u);
      }

      v13 = 0;
      goto LABEL_49;
    }

    v49 = objc_alloc_init(PGPublicEventFetchResults);
    [(PGPublicEventFetchResults *)v49 setMomentNodesForConsolidatedAddresses:v66];
    [(PGPublicEventFetchResults *)v49 setPublicEventsByTimeLocationTupleIdentifier:v41];
    [(PGPublicEventFetchResults *)v49 setConsolidatedAddressesByMomentIdentifier:v67];
    v50 = mach_absolute_time();
    v52 = info.numer;
    v51 = info.denom;
    v53 = v68;
    v54 = v53;
    if (v61 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
    {
      *v91 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v54, OS_SIGNPOST_INTERVAL_END, spid, "PGPublicEventCacherExecuteFetchRequest", "", v91, 2u);
    }

    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      *v91 = 136315394;
      *v92 = "PGPublicEventCacherExecuteFetchRequest";
      *&v92[8] = 2048;
      *&v92[10] = ((((v50 - v60) * v52) / v51) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v54, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v91, 0x16u);
    }

    if (v88[3])
    {
      *(v88 + 24) = 1;
    }

    else
    {
      v55 = [v58 isCancelledWithProgress:1.0];
      *(v88 + 24) = v55;
      if ((v55 & 1) == 0)
      {
        v13 = v49;
LABEL_48:

LABEL_49:
LABEL_50:

        _Block_object_dispose(buf, 8);
        goto LABEL_51;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v91 = 67109378;
      *v92 = 151;
      *&v92[4] = 2080;
      *&v92[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGPublicEventCacher.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v91, 0x12u);
    }

    v13 = 0;
    goto LABEL_48;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 88;
    LOWORD(v94) = 2080;
    *(&v94 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGPublicEventCacher.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v13 = 0;
LABEL_51:
  _Block_object_dispose(&v87, 8);

  v56 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __85__PGPublicEventCacher_executeFetchRequest_publicEventManager_progressReporter_error___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a3 * 0.2;
  v5 = *(*(a1 + 48) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:*(*(*(a1 + 40) + 8) + 24)];
    v5 = *(*(a1 + 48) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

uint64_t __85__PGPublicEventCacher_executeFetchRequest_publicEventManager_progressReporter_error___block_invoke_51(uint64_t a1, _BYTE *a2, double a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a3 * *(a1 + 56) + 0.2;
  v5 = *(*(a1 + 48) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:*(*(*(a1 + 40) + 8) + 24)];
    v5 = *(*(a1 + 48) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

- (PGPublicEventCacher)initWithDisambiguator:(id)disambiguator
{
  disambiguatorCopy = disambiguator;
  v11.receiver = self;
  v11.super_class = PGPublicEventCacher;
  v6 = [(PGPublicEventCacher *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_disambiguator, disambiguator);
    v8 = os_log_create("com.apple.PhotosGraph", "publicEventCaching");
    log = v7->_log;
    v7->_log = v8;
  }

  return v7;
}

@end