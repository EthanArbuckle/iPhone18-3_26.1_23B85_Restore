@interface BRCCollaborationUploadOperation
- (BRCCollaborationUploadOperation)initWithRecord:(id)record progress:(id)progress syncContext:(id)context sessionContext:(id)sessionContext options:(unint64_t)options;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRCCollaborationUploadOperation

- (BRCCollaborationUploadOperation)initWithRecord:(id)record progress:(id)progress syncContext:(id)context sessionContext:(id)sessionContext options:(unint64_t)options
{
  recordCopy = record;
  progressCopy = progress;
  sessionContextCopy = sessionContext;
  contextCopy = context;
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  v18 = [@"upload-" stringByAppendingString:recordName];

  v23.receiver = self;
  v23.super_class = BRCCollaborationUploadOperation;
  v19 = [(_BRCOperation *)&v23 initWithName:v18 syncContext:contextCopy sessionContext:sessionContextCopy];

  if (v19)
  {
    objc_storeStrong(&v19->_record, record);
    objc_storeStrong(&v19->_progress, progress);
    v19->_options = options;
    [(_BRCOperation *)v19 setNonDiscretionary:1];
    br_collaborationUpload = [MEMORY[0x277CBC4F8] br_collaborationUpload];
    [(_BRCOperation *)v19 setGroup:br_collaborationUpload];
  }

  return v19;
}

- (void)main
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __39__BRCCollaborationUploadOperation_main__block_invoke(uint64_t a1, void *a2, double a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3 < 0.0)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218242;
      v11 = a3;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] Upload: Received negative progress from CK. progress [%f]%@", &v10, 0x16u);
    }
  }

  v8 = [*(*(a1 + 32) + 512) totalUnitCount] * (a3 * 1000.0) / 1000;
  if ([*(*(a1 + 32) + 512) completedUnitCount] <= v8)
  {
    [*(*(a1 + 32) + 512) setCompletedUnitCount:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __39__BRCCollaborationUploadOperation_main__block_invoke_166(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v6 = a4;
  if (v6 || [v8 count] != 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v8 objectAtIndexedSubscript:0];
  }

  [*(a1 + 32) completedWithResult:v7 error:v6];
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  uploadCompletionBlock = self->_uploadCompletionBlock;
  if (uploadCompletionBlock)
  {
    uploadCompletionBlock[2](uploadCompletionBlock, resultCopy, errorCopy);
  }

  v9.receiver = self;
  v9.super_class = BRCCollaborationUploadOperation;
  [(_BRCOperation *)&v9 finishWithResult:resultCopy error:errorCopy];
}

@end