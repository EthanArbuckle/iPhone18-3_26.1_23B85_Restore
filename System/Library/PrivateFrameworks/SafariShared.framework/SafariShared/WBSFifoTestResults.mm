@interface WBSFifoTestResults
+ (BOOL)createFifoAtFileURL:(id)l error:(id *)error;
+ (id)readReportFromFifoHandle:(id)handle error:(id *)error;
- (WBSFifoTestResults)initWithFifoURL:(id)l error:(id *)error;
- (void)_writeReportToFifo:(id)fifo;
- (void)reportActualResults:(id)results expectedResults:(id)expectedResults expectedResultsName:(id)name descriptiveResultsName:(id)resultsName uniformTypeIdentifier:(id)identifier forStage:(id)stage forTest:(id)test inBundle:(id)self0;
- (void)reportError:(id)error descriptiveResultsName:(id)name forStage:(id)stage forTest:(id)test inBundle:(id)bundle;
- (void)reportPerformance:(id)performance forStage:(id)stage forTest:(id)test inBundle:(id)bundle;
- (void)reportResults:(id)results resultsName:(id)name descriptiveResultsName:(id)resultsName uniformTypeIdentifier:(id)identifier forStage:(id)stage forTest:(id)test inBundle:(id)bundle;
@end

@implementation WBSFifoTestResults

- (WBSFifoTestResults)initWithFifoURL:(id)l error:(id *)error
{
  lCopy = l;
  v19.receiver = self;
  v19.super_class = WBSFifoTestResults;
  v7 = [(WBSFifoTestResults *)&v19 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_fifoURL, l);
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.SafariShared.WBSFifoTestResults.%@.%p.internalQueue", objc_opt_class(), v8];
    v10 = dispatch_queue_create([v9 UTF8String], 0);
    internalQueue = v8->_internalQueue;
    v8->_internalQueue = v10;

    v12 = v8->_internalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__WBSFifoTestResults_initWithFifoURL_error___block_invoke;
    block[3] = &unk_1E7FB6E30;
    v13 = v8;
    v17 = v13;
    v18 = lCopy;
    dispatch_async(v12, block);
    v14 = v13;
  }

  return v8;
}

void __44__WBSFifoTestResults_initWithFifoURL_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v1 = (a1 + 40);
  v9 = 0;
  v3 = [MEMORY[0x1E696AC00] fileHandleForWritingToURL:v2 error:&v9];
  v4 = v9;
  v5 = *(v1 - 1);
  v6 = *(v5 + 24);
  *(v5 + 24) = v3;

  if (*(*(v1 - 1) + 24))
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXTest();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __44__WBSFifoTestResults_initWithFifoURL_error___block_invoke_cold_1(v1, v4, v8);
    }
  }
}

+ (BOOL)createFifoAtFileURL:(id)l error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (([lCopy isFileURL] & 1) == 0)
  {
    if (!error)
    {
LABEL_8:
      v9 = 0;
      goto LABEL_9;
    }

    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A798];
    v22 = *MEMORY[0x1E696A980];
    v23[0] = lCopy;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v14 = v17;
    v15 = v18;
    v16 = 45;
LABEL_7:
    *error = [v14 errorWithDomain:v15 code:v16 userInfo:v13];

    goto LABEL_8;
  }

  path = [lCopy path];
  fileSystemRepresentation = [path fileSystemRepresentation];

  v8 = mkfifo(fileSystemRepresentation, 0x180u);
  v9 = v8 == 0;
  if (error && v8)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A798];
    v12 = *__error();
    v20 = *MEMORY[0x1E696A980];
    v21 = lCopy;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v14 = v10;
    v15 = v11;
    v16 = v12;
    goto LABEL_7;
  }

LABEL_9:

  return v9;
}

+ (id)readReportFromFifoHandle:(id)handle error:(id *)error
{
  handleCopy = handle;
  [handleCopy fileDescriptor];
  if (WBSReadExactAmountOfBytesFromFileDescriptor() <= 0)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:57 userInfo:0];
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    [handleCopy fileDescriptor];
    v6 = WBSReadExactAmountOfBytesFromFileDescriptorAsNSData();
    if (v6)
    {
      v7 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:error];
      if (v7)
      {
        v8 = [[WBSTestResultsReport alloc] initWithDictionaryRepresentation:v7];
      }

      else
      {
        v8 = 0;
      }
    }

    else if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:57 userInfo:0];
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)_writeReportToFifo:(id)fifo
{
  if (self->_fifoHandle)
  {
    v4 = MEMORY[0x1E696AE40];
    dictionaryRepresentation = [fifo dictionaryRepresentation];
    v12 = 0;
    v6 = [v4 dataWithPropertyList:dictionaryRepresentation format:200 options:0 error:&v12];
    v7 = v12;

    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      [(NSFileHandle *)self->_fifoHandle fileDescriptor];
      v11 = [v6 length];
      WBSWriteExactAmountOfBytesToFileDescriptor();
      [v6 bytes];
      WBSWriteExactAmountOfBytesToFileDescriptor();
    }

    else
    {
      v9 = WBS_LOG_CHANNEL_PREFIXTest();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [WBSFifoTestResults _writeReportToFifo:v9];
      }
    }
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXTest();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WBSFifoTestResults _writeReportToFifo:v10];
    }
  }
}

- (void)reportResults:(id)results resultsName:(id)name descriptiveResultsName:(id)resultsName uniformTypeIdentifier:(id)identifier forStage:(id)stage forTest:(id)test inBundle:(id)bundle
{
  nameCopy = name;
  resultsNameCopy = resultsName;
  identifierCopy = identifier;
  stageCopy = stage;
  testCopy = test;
  bundleCopy = bundle;
  v21 = [results copy];
  internalQueue = self->_internalQueue;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __119__WBSFifoTestResults_reportResults_resultsName_descriptiveResultsName_uniformTypeIdentifier_forStage_forTest_inBundle___block_invoke;
  v30[3] = &unk_1E7FB7280;
  v30[4] = self;
  v31 = v21;
  v32 = nameCopy;
  v33 = resultsNameCopy;
  v34 = identifierCopy;
  v35 = stageCopy;
  v36 = testCopy;
  v37 = bundleCopy;
  v23 = bundleCopy;
  v24 = testCopy;
  v25 = stageCopy;
  v26 = identifierCopy;
  v27 = resultsNameCopy;
  v28 = nameCopy;
  v29 = v21;
  dispatch_async(internalQueue, v30);
}

void __119__WBSFifoTestResults_reportResults_resultsName_descriptiveResultsName_uniformTypeIdentifier_forStage_forTest_inBundle___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = [WBSTestResultsReport reportForActualResults:a1[5] expectedResults:0 expectedResultsName:a1[6] descriptiveResultsName:a1[7] uniformTypeIdentifier:a1[8] forStage:a1[9] forTest:a1[10] inBundle:a1[11]];
  [v1 _writeReportToFifo:v2];
}

- (void)reportActualResults:(id)results expectedResults:(id)expectedResults expectedResultsName:(id)name descriptiveResultsName:(id)resultsName uniformTypeIdentifier:(id)identifier forStage:(id)stage forTest:(id)test inBundle:(id)self0
{
  nameCopy = name;
  resultsNameCopy = resultsName;
  identifierCopy = identifier;
  stageCopy = stage;
  testCopy = test;
  bundleCopy = bundle;
  expectedResultsCopy = expectedResults;
  v23 = [results copy];
  v24 = [expectedResultsCopy copy];

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __149__WBSFifoTestResults_reportActualResults_expectedResults_expectedResultsName_descriptiveResultsName_uniformTypeIdentifier_forStage_forTest_inBundle___block_invoke;
  block[3] = &unk_1E7FB72A8;
  block[4] = self;
  v35 = v23;
  v36 = v24;
  v37 = nameCopy;
  v38 = resultsNameCopy;
  v39 = identifierCopy;
  v40 = stageCopy;
  v41 = testCopy;
  v42 = bundleCopy;
  v26 = bundleCopy;
  v27 = testCopy;
  v28 = stageCopy;
  v29 = identifierCopy;
  v30 = resultsNameCopy;
  v31 = nameCopy;
  v32 = v24;
  v33 = v23;
  dispatch_async(internalQueue, block);
}

void __149__WBSFifoTestResults_reportActualResults_expectedResults_expectedResultsName_descriptiveResultsName_uniformTypeIdentifier_forStage_forTest_inBundle___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = [WBSTestResultsReport reportForActualResults:a1[5] expectedResults:a1[6] expectedResultsName:a1[7] descriptiveResultsName:a1[8] uniformTypeIdentifier:a1[9] forStage:a1[10] forTest:a1[11] inBundle:a1[12]];
  [v1 _writeReportToFifo:v2];
}

- (void)reportPerformance:(id)performance forStage:(id)stage forTest:(id)test inBundle:(id)bundle
{
  stageCopy = stage;
  testCopy = test;
  bundleCopy = bundle;
  v13 = [performance copy];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__WBSFifoTestResults_reportPerformance_forStage_forTest_inBundle___block_invoke;
  block[3] = &unk_1E7FB72D0;
  block[4] = self;
  v20 = v13;
  v21 = stageCopy;
  v22 = testCopy;
  v23 = bundleCopy;
  v15 = bundleCopy;
  v16 = testCopy;
  v17 = stageCopy;
  v18 = v13;
  dispatch_async(internalQueue, block);
}

void __66__WBSFifoTestResults_reportPerformance_forStage_forTest_inBundle___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = [WBSTestResultsReport reportForPerformance:a1[5] forStage:a1[6] forTest:a1[7] inBundle:a1[8]];
  [v1 _writeReportToFifo:v2];
}

- (void)reportError:(id)error descriptiveResultsName:(id)name forStage:(id)stage forTest:(id)test inBundle:(id)bundle
{
  errorCopy = error;
  nameCopy = name;
  stageCopy = stage;
  testCopy = test;
  bundleCopy = bundle;
  internalQueue = self->_internalQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __83__WBSFifoTestResults_reportError_descriptiveResultsName_forStage_forTest_inBundle___block_invoke;
  v23[3] = &unk_1E7FB72F8;
  v23[4] = self;
  v24 = errorCopy;
  v25 = nameCopy;
  v26 = stageCopy;
  v27 = testCopy;
  v28 = bundleCopy;
  v18 = bundleCopy;
  v19 = testCopy;
  v20 = stageCopy;
  v21 = nameCopy;
  v22 = errorCopy;
  dispatch_async(internalQueue, v23);
}

void __83__WBSFifoTestResults_reportError_descriptiveResultsName_forStage_forTest_inBundle___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = [WBSTestResultsReport reportForError:a1[5] descriptiveResultsName:a1[6] forStage:a1[7] forTest:a1[8] inBundle:a1[9]];
  [v1 _writeReportToFifo:v2];
}

void __44__WBSFifoTestResults_initWithFifoURL_error___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Can't open fifo %{public}@: %{public}@", &v4, 0x16u);
}

@end