@interface PGGraphIngestLocationsOfInterestProcessor
- (BOOL)shouldRunWithGraphUpdate:(id)update;
- (PGGraphIngestLocationsOfInterestProcessor)initWithGraphBuilder:(id)builder;
- (void)processLocationsOfInterest;
- (void)runWithGraphUpdate:(id)update progressBlock:(id)block;
@end

@implementation PGGraphIngestLocationsOfInterestProcessor

- (void)processLocationsOfInterest
{
  serviceManager = [(PGGraphBuilder *)self->_graphBuilder serviceManager];
  [serviceManager postProcessLocationsOfInterest];
}

- (void)runWithGraphUpdate:(id)update progressBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
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
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PGGraphIngestLocationsOfInterestProcessor", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v13 = mach_absolute_time();
    [(PGGraphIngestLocationsOfInterestProcessor *)self processLocationsOfInterest];
    v14 = mach_absolute_time();
    v15 = info;
    v16 = v12;
    v17 = v16;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v17, OS_SIGNPOST_INTERVAL_END, v10, "PGGraphIngestLocationsOfInterestProcessor", "", buf, 2u);
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v22 = "PGGraphIngestLocationsOfInterestProcessor";
      *&v22[8] = 2048;
      *&v22[10] = ((((v14 - v13) * v15.numer) / v15.denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    if (v5)
    {
      if (CFAbsoluteTimeGetCurrent() - v6 >= 0.01)
      {
        v19 = 0;
        v5[2](v5, &v19, 1.0);
        if (numer_low | v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v22 = 55;
            *&v22[4] = 2080;
            *&v22[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestLocationsOfInterestProcessor.m";
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
    *v22 = 48;
    *&v22[4] = 2080;
    *&v22[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestLocationsOfInterestProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_18:

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldRunWithGraphUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy isResumingFullAnalysis] & 1) != 0 || (objc_msgSend(updateCopy, "hasMomentsToInsert"))
  {
    v4 = 1;
  }

  else
  {
    momentUpdateTypes = [updateCopy momentUpdateTypes];
    v4 = ([objc_opt_class() requiredMomentUpdateTypes] & momentUpdateTypes) != 0;
  }

  return v4;
}

- (PGGraphIngestLocationsOfInterestProcessor)initWithGraphBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = PGGraphIngestLocationsOfInterestProcessor;
  v6 = [(PGGraphIngestLocationsOfInterestProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, builder);
  }

  return v7;
}

@end