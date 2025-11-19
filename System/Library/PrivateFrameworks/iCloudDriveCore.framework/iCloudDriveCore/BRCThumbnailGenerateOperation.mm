@interface BRCThumbnailGenerateOperation
- (BRCThumbnailGenerateOperation)initWithDocumentAtURL:(id)a3 targetURL:(id)a4 timeout:(id)a5 sessionContext:(id)a6;
- (void)cancel;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
@end

@implementation BRCThumbnailGenerateOperation

- (BRCThumbnailGenerateOperation)initWithDocumentAtURL:(id)a3 targetURL:(id)a4 timeout:(id)a5 sessionContext:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = MEMORY[0x277CCACA8];
  v16 = [v11 path];
  v17 = [v15 stringWithFormat:@"thumbnail-generate/%@", v16];

  v24.receiver = self;
  v24.super_class = BRCThumbnailGenerateOperation;
  v18 = [(_BRCOperation *)&v24 initWithName:v17];
  if (v18)
  {
    v19 = [MEMORY[0x277CBC4F8] br_operationGroupWithName:@"ThumbnailGenerate"];
    [(_BRCOperation *)v18 setGroup:v19];

    objc_storeStrong(&v18->_url, a3);
    objc_storeStrong(&v18->_targetURL, a4);
    v20 = [v14 tapToRadarManager];
    tapToRadarManager = v18->_tapToRadarManager;
    v18->_tapToRadarManager = v20;

    if (v13)
    {
      [v13 doubleValue];
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
  v5 = a1;
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
    v7 = [MEMORY[0x277CCA9B8] brc_errorThumbnailGenerationOperationTimedOut];
    [(BRCTapToRadarManager *)tapToRadarManager requestTapToRadarWithTitle:v5 description:@"Possible issue in QL keywords:Thumbnail generation operation was running for too long" attachments:MEMORY[0x277CBEBF8] sendFullLog:MEMORY[0x277CBEBF8] displayReason:0 triggerRootCause:@"thumbnail generation encountered an error" additionalDevices:v7, 0];
  }

  v8 = MEMORY[0x22AA4A310](self->_saveThumbnailCompletionBlock);
  if (v8)
  {
    v9 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
    (v8)[2](v8, v9);

    saveThumbnailCompletionBlock = self->_saveThumbnailCompletionBlock;
    self->_saveThumbnailCompletionBlock = 0;
  }

  v11.receiver = self;
  v11.super_class = BRCThumbnailGenerateOperation;
  [(_BRCOperation *)&v11 cancel];
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a4;
  saveThumbnailCompletionBlock = self->_saveThumbnailCompletionBlock;
  v8 = a3;
  v9 = MEMORY[0x22AA4A310](saveThumbnailCompletionBlock);
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, v6);
    v11 = self->_saveThumbnailCompletionBlock;
    self->_saveThumbnailCompletionBlock = 0;
  }

  v12.receiver = self;
  v12.super_class = BRCThumbnailGenerateOperation;
  [(_BRCOperation *)&v12 finishWithResult:v8 error:v6];
}

@end