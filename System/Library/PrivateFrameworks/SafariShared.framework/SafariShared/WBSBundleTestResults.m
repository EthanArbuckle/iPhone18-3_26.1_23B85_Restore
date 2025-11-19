@interface WBSBundleTestResults
- (WBSBundleTestResults)initWithFileURL:(id)a3 error:(id *)a4;
- (void)endTest:(id)a3 inBundle:(id)a4;
- (void)reportActualResults:(id)a3 expectedResults:(id)a4 expectedResultsName:(id)a5 descriptiveResultsName:(id)a6 uniformTypeIdentifier:(id)a7 forStage:(id)a8 forTest:(id)a9 inBundle:(id)a10;
- (void)reportError:(id)a3 descriptiveResultsName:(id)a4 forStage:(id)a5 forTest:(id)a6 inBundle:(id)a7;
- (void)reportPerformance:(id)a3 forStage:(id)a4 forTest:(id)a5 inBundle:(id)a6;
- (void)reportResults:(id)a3 resultsName:(id)a4 descriptiveResultsName:(id)a5 uniformTypeIdentifier:(id)a6 forStage:(id)a7 forTest:(id)a8 inBundle:(id)a9;
@end

@implementation WBSBundleTestResults

- (WBSBundleTestResults)initWithFileURL:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (([v7 isFileURL] & 1) == 0)
  {
    if (a4)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      *a4 = v16 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  v18.receiver = self;
  v18.super_class = WBSBundleTestResults;
  self = [(WBSBundleTestResults *)&v18 init];
  if (!self)
  {
    goto LABEL_7;
  }

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [v7 path];
  v10 = [v8 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:a4];

  if (!v10)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&self->_fileURL, a3);
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.SafariShared.WBSFileTestsResults.%@.%p.internalQueue", objc_opt_class(), self];
  v12 = dispatch_queue_create([v11 UTF8String], 0);
  internalQueue = self->_internalQueue;
  self->_internalQueue = v12;

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  pendingReports = self->_pendingReports;
  self->_pendingReports = v14;

  self = self;
  v16 = self;
LABEL_8:

  return v16;
}

- (void)endTest:(id)a3 inBundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__WBSBundleTestResults_endTest_inBundle___block_invoke;
  block[3] = &unk_1E7FB7258;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(internalQueue, block);
}

void __41__WBSBundleTestResults_endTest_inBundle___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) safari_mapObjectsUsingBlock:&__block_literal_global_8];
  v17 = 0;
  v3 = [MEMORY[0x1E696AE40] dataWithPropertyList:v2 format:200 options:0 error:&v17];
  v4 = v17;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    goto LABEL_7;
  }

  v7 = WBS_LOG_CHANNEL_PREFIXTest();
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_13:
    v14 = v5;
    goto LABEL_11;
  }

  __41__WBSBundleTestResults_endTest_inBundle___block_invoke_cold_1(v5, v7);
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_7:
  v8 = *(*(a1 + 32) + 24);
  v9 = MEMORY[0x1E696AEC0];
  v10 = [*(a1 + 40) identifier];
  v11 = [*(a1 + 48) identifier];
  v12 = [v9 stringWithFormat:@"%@_%@.plist", v10, v11];
  v13 = [v8 URLByAppendingPathComponent:v12];

  v16 = v5;
  LOBYTE(v10) = [v3 writeToURL:v13 options:0 error:&v16];
  v14 = v16;

  if ((v10 & 1) == 0)
  {
    v15 = WBS_LOG_CHANNEL_PREFIXTest();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __41__WBSBundleTestResults_endTest_inBundle___block_invoke_cold_2(v14, v15);
    }
  }

LABEL_11:
  [*(*(a1 + 32) + 16) removeAllObjects];
}

- (void)reportResults:(id)a3 resultsName:(id)a4 descriptiveResultsName:(id)a5 uniformTypeIdentifier:(id)a6 forStage:(id)a7 forTest:(id)a8 inBundle:(id)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = [a3 copy];
  internalQueue = self->_internalQueue;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __121__WBSBundleTestResults_reportResults_resultsName_descriptiveResultsName_uniformTypeIdentifier_forStage_forTest_inBundle___block_invoke;
  v30[3] = &unk_1E7FB7280;
  v30[4] = self;
  v31 = v21;
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = v19;
  v37 = v20;
  v23 = v20;
  v24 = v19;
  v25 = v18;
  v26 = v17;
  v27 = v16;
  v28 = v15;
  v29 = v21;
  dispatch_async(internalQueue, v30);
}

void __121__WBSBundleTestResults_reportResults_resultsName_descriptiveResultsName_uniformTypeIdentifier_forStage_forTest_inBundle___block_invoke(void *a1)
{
  v1 = *(a1[4] + 16);
  v2 = [WBSTestResultsReport reportForActualResults:a1[5] expectedResults:0 expectedResultsName:a1[6] descriptiveResultsName:a1[7] uniformTypeIdentifier:a1[8] forStage:a1[9] forTest:a1[10] inBundle:a1[11]];
  [v1 addObject:v2];
}

- (void)reportActualResults:(id)a3 expectedResults:(id)a4 expectedResultsName:(id)a5 descriptiveResultsName:(id)a6 uniformTypeIdentifier:(id)a7 forStage:(id)a8 forTest:(id)a9 inBundle:(id)a10
{
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a4;
  v23 = [a3 copy];
  v24 = [v22 copy];

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __151__WBSBundleTestResults_reportActualResults_expectedResults_expectedResultsName_descriptiveResultsName_uniformTypeIdentifier_forStage_forTest_inBundle___block_invoke;
  block[3] = &unk_1E7FB72A8;
  block[4] = self;
  v35 = v23;
  v36 = v24;
  v37 = v16;
  v38 = v17;
  v39 = v18;
  v40 = v19;
  v41 = v20;
  v42 = v21;
  v26 = v21;
  v27 = v20;
  v28 = v19;
  v29 = v18;
  v30 = v17;
  v31 = v16;
  v32 = v24;
  v33 = v23;
  dispatch_async(internalQueue, block);
}

void __151__WBSBundleTestResults_reportActualResults_expectedResults_expectedResultsName_descriptiveResultsName_uniformTypeIdentifier_forStage_forTest_inBundle___block_invoke(void *a1)
{
  v1 = *(a1[4] + 16);
  v2 = [WBSTestResultsReport reportForActualResults:a1[5] expectedResults:a1[6] expectedResultsName:a1[7] descriptiveResultsName:a1[8] uniformTypeIdentifier:a1[9] forStage:a1[10] forTest:a1[11] inBundle:a1[12]];
  [v1 addObject:v2];
}

- (void)reportPerformance:(id)a3 forStage:(id)a4 forTest:(id)a5 inBundle:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [a3 copy];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__WBSBundleTestResults_reportPerformance_forStage_forTest_inBundle___block_invoke;
  block[3] = &unk_1E7FB72D0;
  block[4] = self;
  v20 = v13;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v13;
  dispatch_async(internalQueue, block);
}

void __68__WBSBundleTestResults_reportPerformance_forStage_forTest_inBundle___block_invoke(void *a1)
{
  v1 = *(a1[4] + 16);
  v2 = [WBSTestResultsReport reportForPerformance:a1[5] forStage:a1[6] forTest:a1[7] inBundle:a1[8]];
  [v1 addObject:v2];
}

- (void)reportError:(id)a3 descriptiveResultsName:(id)a4 forStage:(id)a5 forTest:(id)a6 inBundle:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12)
  {
    internalQueue = self->_internalQueue;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __85__WBSBundleTestResults_reportError_descriptiveResultsName_forStage_forTest_inBundle___block_invoke;
    v18[3] = &unk_1E7FB72F8;
    v18[4] = self;
    v19 = v12;
    v20 = v13;
    v21 = v14;
    v22 = v15;
    v23 = v16;
    dispatch_async(internalQueue, v18);
  }
}

void __85__WBSBundleTestResults_reportError_descriptiveResultsName_forStage_forTest_inBundle___block_invoke(void *a1)
{
  v1 = *(a1[4] + 16);
  v2 = [WBSTestResultsReport reportForError:a1[5] descriptiveResultsName:a1[6] forStage:a1[7] forTest:a1[8] inBundle:a1[9]];
  [v1 addObject:v2];
}

void __41__WBSBundleTestResults_endTest_inBundle___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Failed to serialize reports: %{private}@", &v2, 0xCu);
}

void __41__WBSBundleTestResults_endTest_inBundle___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Failed to write reports: %{private}@", &v2, 0xCu);
}

@end