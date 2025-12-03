@interface PGGraphIngestPrefetchPeopleProcessor
- (PGGraphIngestPrefetchPeopleProcessor)initWithGraphBuilder:(id)builder;
- (void)runWithGraphUpdate:(id)update progressBlock:(id)block;
@end

@implementation PGGraphIngestPrefetchPeopleProcessor

- (void)runWithGraphUpdate:(id)update progressBlock:(id)block
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = _Block_copy(block);
  v6 = 0.0;
  if (!v5 || (Current = CFAbsoluteTimeGetCurrent(), Current < 0.01))
  {
    numer_low = 0;
    goto LABEL_4;
  }

  LOBYTE(info.numer) = 0;
  v5[2](v5, &info, 0.0);
  numer_low = LOBYTE(info.numer);
  if (LOBYTE(info.numer) != 1)
  {
    v6 = Current;
LABEL_4:
    loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
    v10 = os_signpost_id_generate(loggingConnection);
    v11 = loggingConnection;
    v12 = v11;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PGGraphIngestPrefetchPeopleProcessor", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v13 = mach_absolute_time();
    v14 = objc_alloc(MEMORY[0x277D276C0]);
    photoLibrary = [(PGGraphBuilder *)self->_graphBuilder photoLibrary];
    v16 = [v14 initWithPhotoLibrary:photoLibrary maximumNumberOfPeople:128];
    [(PGGraphBuilder *)self->_graphBuilder setFocusPeopleIngestCache:v16];

    v17 = mach_absolute_time();
    v18 = info;
    v19 = v12;
    v20 = v19;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v20, OS_SIGNPOST_INTERVAL_END, v10, "PGGraphIngestPrefetchPeopleProcessor", "", buf, 2u);
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v25 = "PGGraphIngestPrefetchPeopleProcessor";
      *&v25[8] = 2048;
      *&v25[10] = ((((v17 - v13) * v18.numer) / v18.denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    if (v5)
    {
      if (CFAbsoluteTimeGetCurrent() - v6 >= 0.01)
      {
        v22 = 0;
        v5[2](v5, &v22, 1.0);
        if (numer_low | v22)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v25 = 54;
            *&v25[4] = 2080;
            *&v25[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPrefetchPeopleProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v25 = 46;
    *&v25[4] = 2080;
    *&v25[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestPrefetchPeopleProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_18:

  v21 = *MEMORY[0x277D85DE8];
}

- (PGGraphIngestPrefetchPeopleProcessor)initWithGraphBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = PGGraphIngestPrefetchPeopleProcessor;
  v6 = [(PGGraphIngestPrefetchPeopleProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, builder);
  }

  return v7;
}

@end