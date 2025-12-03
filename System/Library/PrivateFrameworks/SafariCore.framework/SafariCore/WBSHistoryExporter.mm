@interface WBSHistoryExporter
- (WBSHistoryExporter)initWithJSONWriter:(id)writer error:(id *)error;
- (void)addEntryWithURLString:(id)string visitTime:(double)time title:(id)title loadSuccessful:(BOOL)successful httpGet:(BOOL)get redirectSourceURLString:(id)lString redirectSourceVisitTime:(double)visitTime redirectDestinationURLString:(id)self0 redirectDestinationVisitTime:(double)self1 visitCount:(unint64_t)self2;
- (void)finishWithCompletionHandler:(id)handler;
@end

@implementation WBSHistoryExporter

- (WBSHistoryExporter)initWithJSONWriter:(id)writer error:(id *)error
{
  writerCopy = writer;
  v10.receiver = self;
  v10.super_class = WBSHistoryExporter;
  v7 = [(WBSJSONExporter *)&v10 initWithJSONWriter:writerCopy error:error];
  if (v7 && [writerCopy beginArrayForKey:@"history" error:error])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)addEntryWithURLString:(id)string visitTime:(double)time title:(id)title loadSuccessful:(BOOL)successful httpGet:(BOOL)get redirectSourceURLString:(id)lString redirectSourceVisitTime:(double)visitTime redirectDestinationURLString:(id)self0 redirectDestinationVisitTime:(double)self1 visitCount:(unint64_t)self2
{
  titleCopy = title;
  lStringCopy = lString;
  rLStringCopy = rLString;
  stringCopy = string;
  jsonWriter = [(WBSJSONExporter *)self jsonWriter];
  v65 = 0;
  [jsonWriter appendAndBeginObjectWithError:&v65];
  v24 = v65;

  jsonWriter2 = [(WBSJSONExporter *)self jsonWriter];
  v64 = v24;
  [jsonWriter2 addEntry:stringCopy forKey:@"url" error:&v64];

  v26 = v64;
  jsonWriter3 = [(WBSJSONExporter *)self jsonWriter];
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:WBSTimeIntervalToUnixTimeInMicroseconds(time)];
  v63 = v26;
  [jsonWriter3 addEntry:v28 forKey:@"time_usec" error:&v63];
  v29 = v63;

  jsonWriter4 = [(WBSJSONExporter *)self jsonWriter];
  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
  v62 = v29;
  [jsonWriter4 addEntry:v31 forKey:@"visit_count" error:&v62];
  v32 = v62;

  v33 = titleCopy;
  if ([titleCopy length])
  {
    jsonWriter5 = [(WBSJSONExporter *)self jsonWriter];
    v61 = v32;
    [jsonWriter5 addEntry:titleCopy forKey:@"title" error:&v61];
    v35 = v61;

    v32 = v35;
  }

  v36 = lStringCopy;
  if (!successful)
  {
    jsonWriter6 = [(WBSJSONExporter *)self jsonWriter];
    v60 = v32;
    [jsonWriter6 addEntry:MEMORY[0x1E695E118] forKey:@"latest_visit_was_load_failure" error:&v60];
    v38 = v60;

    v32 = v38;
  }

  if (!get)
  {
    jsonWriter7 = [(WBSJSONExporter *)self jsonWriter];
    v59 = v32;
    [jsonWriter7 addEntry:MEMORY[0x1E695E110] forKey:@"latest_visit_was_http_get" error:&v59];
    v40 = v59;

    v32 = v40;
  }

  if ([v36 length])
  {
    jsonWriter8 = [(WBSJSONExporter *)self jsonWriter];
    v58 = v32;
    [jsonWriter8 addEntry:v36 forKey:@"source_url" error:&v58];
    v42 = v58;

    jsonWriter9 = [(WBSJSONExporter *)self jsonWriter];
    v44 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:WBSTimeIntervalToUnixTimeInMicroseconds(visitTime)];
    v57 = v42;
    [jsonWriter9 addEntry:v44 forKey:@"source_time_usec" error:&v57];
    v32 = v57;
  }

  if ([rLStringCopy length])
  {
    jsonWriter10 = [(WBSJSONExporter *)self jsonWriter];
    v56 = v32;
    [jsonWriter10 addEntry:rLStringCopy forKey:@"destination_url" error:&v56];
    v46 = v56;

    jsonWriter11 = [(WBSJSONExporter *)self jsonWriter];
    v48 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:WBSTimeIntervalToUnixTimeInMicroseconds(destinationVisitTime)];
    v55 = v46;
    [jsonWriter11 addEntry:v48 forKey:@"destination_time_usec" error:&v55];
    v32 = v55;
  }

  jsonWriter12 = [(WBSJSONExporter *)self jsonWriter];
  v54 = v32;
  [jsonWriter12 closeCurrentEntryWithError:&v54];
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

- (void)finishWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__WBSHistoryExporter_finishWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CF2CC0;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WBSHistoryExporter;
  v5 = handlerCopy;
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