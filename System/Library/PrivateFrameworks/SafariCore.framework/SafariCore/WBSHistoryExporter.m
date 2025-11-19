@interface WBSHistoryExporter
- (WBSHistoryExporter)initWithJSONWriter:(id)a3 error:(id *)a4;
- (void)addEntryWithURLString:(id)a3 visitTime:(double)a4 title:(id)a5 loadSuccessful:(BOOL)a6 httpGet:(BOOL)a7 redirectSourceURLString:(id)a8 redirectSourceVisitTime:(double)a9 redirectDestinationURLString:(id)a10 redirectDestinationVisitTime:(double)a11 visitCount:(unint64_t)a12;
- (void)finishWithCompletionHandler:(id)a3;
@end

@implementation WBSHistoryExporter

- (WBSHistoryExporter)initWithJSONWriter:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = WBSHistoryExporter;
  v7 = [(WBSJSONExporter *)&v10 initWithJSONWriter:v6 error:a4];
  if (v7 && [v6 beginArrayForKey:@"history" error:a4])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)addEntryWithURLString:(id)a3 visitTime:(double)a4 title:(id)a5 loadSuccessful:(BOOL)a6 httpGet:(BOOL)a7 redirectSourceURLString:(id)a8 redirectSourceVisitTime:(double)a9 redirectDestinationURLString:(id)a10 redirectDestinationVisitTime:(double)a11 visitCount:(unint64_t)a12
{
  v19 = a5;
  v20 = a8;
  v21 = a10;
  v22 = a3;
  v23 = [(WBSJSONExporter *)self jsonWriter];
  v65 = 0;
  [v23 appendAndBeginObjectWithError:&v65];
  v24 = v65;

  v25 = [(WBSJSONExporter *)self jsonWriter];
  v64 = v24;
  [v25 addEntry:v22 forKey:@"url" error:&v64];

  v26 = v64;
  v27 = [(WBSJSONExporter *)self jsonWriter];
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:WBSTimeIntervalToUnixTimeInMicroseconds(a4)];
  v63 = v26;
  [v27 addEntry:v28 forKey:@"time_usec" error:&v63];
  v29 = v63;

  v30 = [(WBSJSONExporter *)self jsonWriter];
  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a12];
  v62 = v29;
  [v30 addEntry:v31 forKey:@"visit_count" error:&v62];
  v32 = v62;

  v33 = v19;
  if ([v19 length])
  {
    v34 = [(WBSJSONExporter *)self jsonWriter];
    v61 = v32;
    [v34 addEntry:v19 forKey:@"title" error:&v61];
    v35 = v61;

    v32 = v35;
  }

  v36 = v20;
  if (!a6)
  {
    v37 = [(WBSJSONExporter *)self jsonWriter];
    v60 = v32;
    [v37 addEntry:MEMORY[0x1E695E118] forKey:@"latest_visit_was_load_failure" error:&v60];
    v38 = v60;

    v32 = v38;
  }

  if (!a7)
  {
    v39 = [(WBSJSONExporter *)self jsonWriter];
    v59 = v32;
    [v39 addEntry:MEMORY[0x1E695E110] forKey:@"latest_visit_was_http_get" error:&v59];
    v40 = v59;

    v32 = v40;
  }

  if ([v36 length])
  {
    v41 = [(WBSJSONExporter *)self jsonWriter];
    v58 = v32;
    [v41 addEntry:v36 forKey:@"source_url" error:&v58];
    v42 = v58;

    v43 = [(WBSJSONExporter *)self jsonWriter];
    v44 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:WBSTimeIntervalToUnixTimeInMicroseconds(a9)];
    v57 = v42;
    [v43 addEntry:v44 forKey:@"source_time_usec" error:&v57];
    v32 = v57;
  }

  if ([v21 length])
  {
    v45 = [(WBSJSONExporter *)self jsonWriter];
    v56 = v32;
    [v45 addEntry:v21 forKey:@"destination_url" error:&v56];
    v46 = v56;

    v47 = [(WBSJSONExporter *)self jsonWriter];
    v48 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:WBSTimeIntervalToUnixTimeInMicroseconds(a11)];
    v55 = v46;
    [v47 addEntry:v48 forKey:@"destination_time_usec" error:&v55];
    v32 = v55;
  }

  v49 = [(WBSJSONExporter *)self jsonWriter];
  v54 = v32;
  [v49 closeCurrentEntryWithError:&v54];
  v50 = v54;

  if (v50)
  {
    v51 = WBS_LOG_CHANNEL_PREFIXExport();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      [WBSHistoryExporter addEntryWithURLString:v50 visitTime:v51 title:? loadSuccessful:? httpGet:? redirectSourceURLString:? redirectSourceVisitTime:? redirectDestinationURLString:? redirectDestinationVisitTime:? visitCount:?];
    }
  }
}

- (void)finishWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__WBSHistoryExporter_finishWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CF2CC0;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = WBSHistoryExporter;
  v5 = v4;
  [(WBSJSONExporter *)&v6 finishWithCompletionHandler:v7];
}

void __50__WBSHistoryExporter_finishWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXExport();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __50__WBSHistoryExporter_finishWithCompletionHandler___block_invoke_cold_1(v3, v4);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)addEntryWithURLString:(uint64_t)a1 visitTime:(NSObject *)a2 title:loadSuccessful:httpGet:redirectSourceURLString:redirectSourceVisitTime:redirectDestinationURLString:redirectDestinationVisitTime:visitCount:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B8447000, a2, OS_LOG_TYPE_ERROR, "Failed to serialize history entry: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __50__WBSHistoryExporter_finishWithCompletionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B8447000, a2, OS_LOG_TYPE_ERROR, "Failed to finalize history export: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end