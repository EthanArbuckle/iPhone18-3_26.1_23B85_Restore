@interface BRCThumbnailGenerateOperation
- (BRCThumbnailGenerateOperation)initWithDocumentAtURL:(id)l targetURL:(id)rL timeout:(id)timeout sessionContext:(id)context;
- (void)cancel;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRCThumbnailGenerateOperation

- (BRCThumbnailGenerateOperation)initWithDocumentAtURL:(id)l targetURL:(id)rL timeout:(id)timeout sessionContext:(id)context
{
  lCopy = l;
  rLCopy = rL;
  timeoutCopy = timeout;
  contextCopy = context;
  v15 = MEMORY[0x277CCACA8];
  path = [lCopy path];
  v17 = [v15 stringWithFormat:@"thumbnail-generate/%@", path];

  v24.receiver = self;
  v24.super_class = BRCThumbnailGenerateOperation;
  v18 = [(_BRCOperation *)&v24 initWithName:v17];
  if (v18)
  {
    v19 = [MEMORY[0x277CBC4F8] br_operationGroupWithName:@"ThumbnailGenerate"];
    [(_BRCOperation *)v18 setGroup:v19];

    objc_storeStrong(&v18->_url, l);
    objc_storeStrong(&v18->_targetURL, rL);
    tapToRadarManager = [contextCopy tapToRadarManager];
    tapToRadarManager = v18->_tapToRadarManager;
    v18->_tapToRadarManager = tapToRadarManager;

    if (timeoutCopy)
    {
      [timeoutCopy doubleValue];
      [(_BRCOperation *)v18 setTimeout:?];
    }

    else
    {
      v22 = [BRCUserDefaults defaultsForMangledID:0];
      [v22 thumbnailGenerationOperationTimeout];
      [(_BRCOperation *)v18 setTimeout:?];
    }
  }

  return v18;
}

- (void)main
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  selfCopy = self;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_223E7A000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Created QLThumbnailGenerationRequest %@%@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __37__BRCThumbnailGenerateOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 504);
    v9 = *(v7 + 520);
    v10 = 138413058;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v3;
    v16 = 2112;
    v17 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] Saved the thumbnail of %@ to %@ with error %@%@", &v10, 0x2Au);
  }

  [*(a1 + 32) completedWithResult:0 error:v3];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  if ([(_BRCOperation *)self timedOut])
  {
    v3 = MEMORY[0x277CCACA8];
    [(_BRCOperation *)self timeout];
    v5 = [v3 stringWithFormat:@"Thumbnail generation operation got timeouted after %fs", v4];
    tapToRadarManager = self->_tapToRadarManager;
    brc_errorThumbnailGenerationOperationTimedOut = [MEMORY[0x277CCA9B8] brc_errorThumbnailGenerationOperationTimedOut];
    [(BRCTapToRadarManager *)tapToRadarManager requestTapToRadarWithTitle:v5 description:@"Possible issue in QL keywords:Thumbnail generation operation was running for too long" attachments:MEMORY[0x277CBEBF8] sendFullLog:MEMORY[0x277CBEBF8] displayReason:0 triggerRootCause:@"thumbnail generation encountered an error" additionalDevices:brc_errorThumbnailGenerationOperationTimedOut, 0];
  }

  v8 = MEMORY[0x22AA4A310](self->_saveThumbnailCompletionBlock);
  if (v8)
  {
    brc_errorOperationCancelled = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
    (v8)[2](v8, brc_errorOperationCancelled);

    saveThumbnailCompletionBlock = self->_saveThumbnailCompletionBlock;
    self->_saveThumbnailCompletionBlock = 0;
  }

  v11.receiver = self;
  v11.super_class = BRCThumbnailGenerateOperation;
  [(_BRCOperation *)&v11 cancel];
}

- (void)finishWithResult:(id)result error:(id)error
{
  errorCopy = error;
  saveThumbnailCompletionBlock = self->_saveThumbnailCompletionBlock;
  resultCopy = result;
  v9 = MEMORY[0x22AA4A310](saveThumbnailCompletionBlock);
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, errorCopy);
    v11 = self->_saveThumbnailCompletionBlock;
    self->_saveThumbnailCompletionBlock = 0;
  }

  v12.receiver = self;
  v12.super_class = BRCThumbnailGenerateOperation;
  [(_BRCOperation *)&v12 finishWithResult:resultCopy error:errorCopy];
}

@end