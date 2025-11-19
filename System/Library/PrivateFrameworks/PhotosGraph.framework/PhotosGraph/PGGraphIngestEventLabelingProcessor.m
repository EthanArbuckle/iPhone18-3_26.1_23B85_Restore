@interface PGGraphIngestEventLabelingProcessor
- (BOOL)shouldRunWithGraphUpdate:(id)a3;
- (PGGraphIngestEventLabelingProcessor)initWithGraphBuilder:(id)a3;
- (void)runWithGraphUpdate:(id)a3 progressBlock:(id)a4;
@end

@implementation PGGraphIngestEventLabelingProcessor

- (void)runWithGraphUpdate:(id)a3 progressBlock:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  graphBuilder = self->_graphBuilder;
  v7 = a4;
  v8 = a3;
  v9 = [(PGGraphBuilder *)graphBuilder loggingConnection];
  v10 = os_signpost_id_generate(v9);
  v11 = v9;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PGGraphIngestEventLabelingProcessor", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v13 = mach_absolute_time();
  v14 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:v7];

  v15 = [(PGGraphBuilder *)self->_graphBuilder graph];
  v16 = [v8 momentNodesToProcessInGraph:v15 forMomentUpdateTypes:objc_msgSend(objc_opt_class() includeInsertedNodes:{"requiredMomentUpdateTypes"), 1}];

  v17 = self->_graphBuilder;
  v28 = 0;
  v18 = [PGEventProcessor processPGGraphForMomentNodes:v16 graphBuilder:v17 progressReporter:v14 error:&v28];
  v19 = v28;
  if (!v18)
  {
    v20 = +[PGLogging sharedLogging];
    v21 = [v20 loggingConnection];

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v19;
      _os_log_error_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_ERROR, "[PGGraphIngestEventLabelingProcessor] Error processing events: %@", buf, 0xCu);
    }
  }

  v22 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v25 = v12;
  v26 = v25;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v26, OS_SIGNPOST_INTERVAL_END, v10, "PGGraphIngestEventLabelingProcessor", "", buf, 2u);
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v31 = "PGGraphIngestEventLabelingProcessor";
    v32 = 2048;
    v33 = ((((v22 - v13) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v26, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldRunWithGraphUpdate:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (+[PGEventLabelingConfiguration isEventLabelingEnabled])
  {
    v5 = [(PGGraphBuilder *)self->_graphBuilder photoLibrary];
    v20 = 0;
    v6 = [v5 urlForApplicationDataFolderIdentifier:1 error:&v20];
    v7 = v20;

    if (v6)
    {
      v8 = [(PGGraphBuilder *)self->_graphBuilder eventLabelingFeaturesCache];
      v9 = [v8 isCacheEmptyAtGraphServiceURL:v6];

      if ([v4 hasMomentsToInsert])
      {
        v10 = 1;
      }

      else
      {
        v10 = [v4 hasMomentsToUpdate];
      }

      if ((v9 & v10) == 1)
      {
        v16 = +[PGLogging sharedLogging];
        v12 = [v16 loggingConnection];

        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_ERROR, "[PGGraphIngestEventLabelingProcessor] GraphUpdate has moments to insert or update, but processor will not run due to missing feature cache.", buf, 2u);
        }

        LOBYTE(v10) = 1;
        goto LABEL_16;
      }

      if ((v9 | v10))
      {
LABEL_17:

        goto LABEL_18;
      }

      v17 = +[PGLogging sharedLogging];
      v12 = [v17 loggingConnection];

      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_15:
        LOBYTE(v10) = 0;
LABEL_16:

        goto LABEL_17;
      }

      *buf = 0;
      v13 = "[PGGraphIngestEventLabelingProcessor] Found features in the event labeling cache, but processor will not run because the GraphUpdate does not have moments to insert or update.";
      v14 = v12;
      v15 = 2;
    }

    else
    {
      v11 = +[PGLogging sharedLogging];
      v12 = [v11 loggingConnection];

      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *buf = 138412290;
      v22 = v7;
      v13 = "Failed to access the graph service URL. Error: %@";
      v14 = v12;
      v15 = 12;
    }

    _os_log_error_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
    goto LABEL_15;
  }

  LOBYTE(v10) = 0;
LABEL_18:

  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

- (PGGraphIngestEventLabelingProcessor)initWithGraphBuilder:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGGraphIngestEventLabelingProcessor;
  v6 = [(PGGraphIngestEventLabelingProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, a3);
  }

  return v7;
}

@end