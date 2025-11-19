@interface PFVideoSharingOperation
+ (id)operationErrorWithCode:(int64_t)a3 underlyingError:(id)a4 withDescription:(id)a5;
- (BOOL)_ensureVideoProperties;
- (BOOL)_runExport;
- (BOOL)success;
- (NSError)operationError;
- (PFVideoSharingOperation)initWithVideoURL:(id)a3 adjustmentData:(id)a4;
- (float)progress;
- (void)_setOperationError:(id)a3;
- (void)_setSuccess:(BOOL)a3;
- (void)_validateMetadata;
- (void)cancel;
- (void)main;
- (void)setCustomAccessibilityLabel:(id)a3;
- (void)setCustomCaption:(id)a3;
- (void)setCustomLocation:(id)a3;
- (void)setExportFileType:(id)a3;
- (void)setExportPreset:(id)a3;
- (void)setOutputDirectoryURL:(id)a3;
- (void)setOutputFilename:(id)a3;
- (void)setShouldStripAccessibilityDescription:(BOOL)a3;
- (void)setShouldStripCaption:(BOOL)a3;
- (void)setShouldStripLocation:(BOOL)a3;
- (void)setShouldStripMetadata:(BOOL)a3;
@end

@implementation PFVideoSharingOperation

- (NSError)operationError
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__13549;
  v10 = __Block_byref_object_dispose__13550;
  v11 = 0;
  externalIsolation = self->_externalIsolation;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__PFVideoSharingOperation_operationError__block_invoke;
  v5[3] = &unk_1E7B66DC0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(externalIsolation, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_setOperationError:(id)a3
{
  v4 = a3;
  externalIsolation = self->_externalIsolation;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__PFVideoSharingOperation__setOperationError___block_invoke;
  v7[3] = &unk_1E7B66D98;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(externalIsolation, v7);
}

void __46__PFVideoSharingOperation__setOperationError___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1 != *(v2 + 304))
  {
    objc_storeStrong((v2 + 304), v1);
  }
}

- (BOOL)success
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  externalIsolation = self->_externalIsolation;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__PFVideoSharingOperation_success__block_invoke;
  v5[3] = &unk_1E7B66DC0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(externalIsolation, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setSuccess:(BOOL)a3
{
  externalIsolation = self->_externalIsolation;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__PFVideoSharingOperation__setSuccess___block_invoke;
  v4[3] = &unk_1E7B66D70;
  v5 = a3;
  v4[4] = self;
  dispatch_sync(externalIsolation, v4);
}

uint64_t __39__PFVideoSharingOperation__setSuccess___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 297))
  {
    *(v2 + 297) = v1;
  }

  return result;
}

- (void)setExportFileType:(id)a3
{
  v4 = a3;
  externalIsolation = self->_externalIsolation;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__PFVideoSharingOperation_setExportFileType___block_invoke;
  v7[3] = &unk_1E7B66D98;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(externalIsolation, v7);
}

uint64_t __45__PFVideoSharingOperation_setExportFileType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(*(a1 + 40) + 376);
  if (v2 != result)
  {
    result = [result isEqualToString:?];
    if ((result & 1) == 0)
    {
      v4 = [*(a1 + 32) copy];
      v5 = *(a1 + 40);
      v6 = *(v5 + 376);
      *(v5 + 376) = v4;

      return MEMORY[0x1EEE66BB8](v4, v6);
    }
  }

  return result;
}

- (void)setExportPreset:(id)a3
{
  v4 = a3;
  externalIsolation = self->_externalIsolation;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__PFVideoSharingOperation_setExportPreset___block_invoke;
  v7[3] = &unk_1E7B66D98;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(externalIsolation, v7);
}

uint64_t __43__PFVideoSharingOperation_setExportPreset___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(*(a1 + 40) + 368);
  if (v2 != result)
  {
    result = [result isEqualToString:?];
    if ((result & 1) == 0)
    {
      v4 = [*(a1 + 32) copy];
      v5 = *(a1 + 40);
      v6 = *(v5 + 368);
      *(v5 + 368) = v4;

      return MEMORY[0x1EEE66BB8](v4, v6);
    }
  }

  return result;
}

- (void)setOutputDirectoryURL:(id)a3
{
  v4 = a3;
  externalIsolation = self->_externalIsolation;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PFVideoSharingOperation_setOutputDirectoryURL___block_invoke;
  v7[3] = &unk_1E7B66D98;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(externalIsolation, v7);
}

uint64_t __49__PFVideoSharingOperation_setOutputDirectoryURL___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(*(a1 + 40) + 320);
  if (v2 != result)
  {
    result = [result isEqual:?];
    if ((result & 1) == 0)
    {
      v4 = [*(a1 + 32) copy];
      v5 = *(a1 + 40);
      v6 = *(v5 + 320);
      *(v5 + 320) = v4;

      return MEMORY[0x1EEE66BB8](v4, v6);
    }
  }

  return result;
}

- (void)setOutputFilename:(id)a3
{
  v4 = a3;
  externalIsolation = self->_externalIsolation;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__PFVideoSharingOperation_setOutputFilename___block_invoke;
  v7[3] = &unk_1E7B66D98;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(externalIsolation, v7);
}

uint64_t __45__PFVideoSharingOperation_setOutputFilename___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(*(a1 + 40) + 328);
  if (v2 != result)
  {
    result = [result isEqualToString:?];
    if ((result & 1) == 0)
    {
      v4 = [*(a1 + 32) copy];
      v5 = *(a1 + 40);
      v6 = *(v5 + 328);
      *(v5 + 328) = v4;

      return MEMORY[0x1EEE66BB8](v4, v6);
    }
  }

  return result;
}

- (void)setCustomAccessibilityLabel:(id)a3
{
  v4 = a3;
  externalIsolation = self->_externalIsolation;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__PFVideoSharingOperation_setCustomAccessibilityLabel___block_invoke;
  v7[3] = &unk_1E7B66D98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(externalIsolation, v7);
}

uint64_t __55__PFVideoSharingOperation_setCustomAccessibilityLabel___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 360) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 40) copy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 360);
    *(v4 + 360) = v3;

    return MEMORY[0x1EEE66BB8](v3, v5);
  }

  return result;
}

- (void)setShouldStripAccessibilityDescription:(BOOL)a3
{
  externalIsolation = self->_externalIsolation;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__PFVideoSharingOperation_setShouldStripAccessibilityDescription___block_invoke;
  v4[3] = &unk_1E7B66D70;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(externalIsolation, v4);
}

uint64_t __66__PFVideoSharingOperation_setShouldStripAccessibilityDescription___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 315) != v2)
  {
    *(v1 + 315) = v2;
  }

  return result;
}

- (void)setCustomCaption:(id)a3
{
  v4 = a3;
  externalIsolation = self->_externalIsolation;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__PFVideoSharingOperation_setCustomCaption___block_invoke;
  v7[3] = &unk_1E7B66D98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(externalIsolation, v7);
}

uint64_t __44__PFVideoSharingOperation_setCustomCaption___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 352) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 40) copy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 352);
    *(v4 + 352) = v3;

    return MEMORY[0x1EEE66BB8](v3, v5);
  }

  return result;
}

- (void)setShouldStripCaption:(BOOL)a3
{
  externalIsolation = self->_externalIsolation;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__PFVideoSharingOperation_setShouldStripCaption___block_invoke;
  v4[3] = &unk_1E7B66D70;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(externalIsolation, v4);
}

uint64_t __49__PFVideoSharingOperation_setShouldStripCaption___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 314) != v2)
  {
    *(v1 + 314) = v2;
  }

  return result;
}

- (void)setCustomLocation:(id)a3
{
  v4 = a3;
  externalIsolation = self->_externalIsolation;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__PFVideoSharingOperation_setCustomLocation___block_invoke;
  v7[3] = &unk_1E7B66D98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(externalIsolation, v7);
}

uint64_t __45__PFVideoSharingOperation_setCustomLocation___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 336) isEqual:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 40) copy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 336);
    *(v4 + 336) = v3;

    return MEMORY[0x1EEE66BB8](v3, v5);
  }

  return result;
}

- (void)setShouldStripLocation:(BOOL)a3
{
  externalIsolation = self->_externalIsolation;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__PFVideoSharingOperation_setShouldStripLocation___block_invoke;
  v4[3] = &unk_1E7B66D70;
  v5 = a3;
  v4[4] = self;
  dispatch_sync(externalIsolation, v4);
}

uint64_t __50__PFVideoSharingOperation_setShouldStripLocation___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 313))
  {
    *(v2 + 313) = v1;
  }

  return result;
}

- (void)setShouldStripMetadata:(BOOL)a3
{
  externalIsolation = self->_externalIsolation;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__PFVideoSharingOperation_setShouldStripMetadata___block_invoke;
  v4[3] = &unk_1E7B66D70;
  v5 = a3;
  v4[4] = self;
  dispatch_sync(externalIsolation, v4);
}

uint64_t __50__PFVideoSharingOperation_setShouldStripMetadata___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 312))
  {
    *(v2 + 312) = v1;
  }

  return result;
}

- (void)cancel
{
  v5.receiver = self;
  v5.super_class = PFVideoSharingOperation;
  [(PFVideoSharingOperation *)&v5 cancel];
  externalIsolation = self->_externalIsolation;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__PFVideoSharingOperation_cancel__block_invoke;
  block[3] = &unk_1E7B66D20;
  block[4] = self;
  dispatch_sync(externalIsolation, block);
}

- (float)progress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  externalIsolation = self->_externalIsolation;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__PFVideoSharingOperation_progress__block_invoke;
  v5[3] = &unk_1E7B66DC0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(externalIsolation, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__35__PFVideoSharingOperation_progress__block_invoke(void *result)
{
  v1 = result;
  v2 = result[4];
  v3 = 0.0;
  if (*(v2 + 296) == 1)
  {
    result = *(v2 + 288);
    if (result)
    {
      result = [result progress];
    }

    else
    {
      v3 = 1.0;
    }
  }

  *(*(v1[5] + 8) + 24) = v3;
  return result;
}

- (BOOL)_runExport
{
  v119 = *MEMORY[0x1E69E9840];
  v51 = [(PFVideoSharingOperation *)self videoURL];
  v102 = 0;
  v103 = &v102;
  v104 = 0x3032000000;
  v105 = __Block_byref_object_copy__13549;
  v106 = __Block_byref_object_dispose__13550;
  v107 = 0;
  v96 = 0;
  v97 = &v96;
  v98 = 0x3032000000;
  v99 = __Block_byref_object_copy__13549;
  v100 = __Block_byref_object_dispose__13550;
  v101 = 0;
  v90 = 0;
  v91 = &v90;
  v92 = 0x3032000000;
  v93 = __Block_byref_object_copy__13549;
  v94 = __Block_byref_object_dispose__13550;
  v95 = 0;
  v84 = 0;
  v85 = &v84;
  v86 = 0x3032000000;
  v87 = __Block_byref_object_copy__13549;
  v88 = __Block_byref_object_dispose__13550;
  v89 = 0;
  externalIsolation = self->_externalIsolation;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__PFVideoSharingOperation__runExport__block_invoke;
  block[3] = &unk_1E7B66CA8;
  block[4] = self;
  block[5] = &v102;
  block[6] = &v96;
  block[7] = &v90;
  block[8] = &v84;
  dispatch_sync(externalIsolation, block);
  v50 = [v51 pathExtension];
  v4 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:?];
  v5 = [v4 identifier];

  v52 = v5;
  v6 = [(PFVideoSharingOperation *)self _adjustments];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [[PFVideoAVObjectBuilder alloc] initWithVideoAsset:self->_videoAsset videoAdjustments:v8];
  v48 = v8;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__13549;
  v81 = __Block_byref_object_dispose__13550;
  v82 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__13549;
  v75 = __Block_byref_object_dispose__13550;
  v76 = 0;
  v10 = v91[5];
  v11 = *MEMORY[0x1E6987338];
  if (!v10)
  {
    v10 = *MEMORY[0x1E6987338];
  }

  v12 = v10;
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __37__PFVideoSharingOperation__runExport__block_invoke_2;
  v70[3] = &unk_1E7B66CD0;
  v70[4] = &v77;
  v70[5] = &v71;
  v49 = v9;
  [(PFVideoAVObjectBuilder *)v9 requestExportSessionWithExportPreset:v12 resultHandler:v70];
  if (v72[5])
  {
    v13 = [objc_opt_class() operationErrorWithCode:4 underlyingError:v72[5] withDescription:{@"AVAssetExportSession could not create session for video asset: %@ with preset %@", self->_videoAsset, v12}];
  }

  else
  {
    v13 = 0;
  }

  v14 = v78;
  if (v78[5])
  {
    *&v114 = 0;
    *(&v114 + 1) = &v114;
    v115 = 0x3032000000;
    v116 = __Block_byref_object_copy__13549;
    v117 = __Block_byref_object_dispose__13550;
    v15 = v85[5];
    if (!v15)
    {
      v15 = v52;
    }

    v16 = v15;
    v118 = v16;
    v64 = 0;
    v65 = &v64;
    v66 = 0x3032000000;
    v67 = __Block_byref_object_copy__13549;
    v68 = __Block_byref_object_dispose__13550;
    v17 = v50;
    v69 = v17;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v109 = v16;
      v110 = 2114;
      v111 = v17;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFVideoSharingOperation] Preferred outputFileType is %{public}@, file extension: %{public}@", buf, 0x16u);
      v14 = v78;
    }

    v18 = [v14[5] supportedFileTypes];
    v19 = [v18 containsObject:*(*(&v114 + 1) + 40)];

    if (([v12 isEqualToString:v11] & v19 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v20 = *(*(&v114 + 1) + 40);
        v21 = @"Incompatible";
        if (v19)
        {
          v21 = @"Compatible";
        }

        *buf = 138543874;
        v109 = v12;
        v110 = 2114;
        v111 = v20;
        v112 = 2114;
        v113 = v21;
        _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFVideoSharingOperation] Preset is either not passthrough (%{public}@), or outputFileType (%{public}@) is unsupported (%{public}@), so determining compatible file types...", buf, 0x20u);
      }

      v22 = dispatch_semaphore_create(0);
      v23 = v78[5];
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __37__PFVideoSharingOperation__runExport__block_invoke_31;
      v60[3] = &unk_1E7B66CF8;
      v62 = &v114;
      v63 = &v64;
      v24 = v22;
      v61 = v24;
      [v23 determineCompatibleFileTypesWithCompletionHandler:v60];
      dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
    }

    v25 = [v97[5] URLByAppendingPathComponent:v103[5]];
    v26 = [v25 URLByAppendingPathExtension:v65[5]];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v109 = v26;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFVideoSharingOperation] Output file URL will be %{public}@.", buf, 0xCu);
    }

    v27 = [MEMORY[0x1E696AC08] defaultManager];
    v28 = [v26 path];
    v29 = [v27 fileExistsAtPath:v28];

    if (v29)
    {
      v30 = MEMORY[0x1E69E9C10];
      v31 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v47 = [v26 path];
        *buf = 138543362;
        v109 = v47;
        _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PFVideoSharingOperation] Output file already exists at path: %{public}@. Aborting video remaking.", buf, 0xCu);
      }

      v32 = objc_opt_class();
      v33 = [v26 path];
      v34 = [v32 operationErrorWithCode:3 underlyingError:0 withDescription:{@"Output file already exists at path: %@", v33}];

      v35 = 0;
      v13 = v34;
    }

    else
    {
      [v78[5] setOutputFileType:*(*(&v114 + 1) + 40)];
      [v78[5] setOutputURL:v26];
      [v78[5] setMetadata:self->_videoMetadata];
      v36 = self->_externalIsolation;
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __37__PFVideoSharingOperation__runExport__block_invoke_37;
      v59[3] = &unk_1E7B66DC0;
      v59[4] = self;
      v59[5] = &v77;
      dispatch_sync(v36, v59);
      v37 = dispatch_semaphore_create(0);
      v38 = v78[5];
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __37__PFVideoSharingOperation__runExport__block_invoke_2_38;
      v57[3] = &unk_1E7B66D20;
      v39 = v37;
      v58 = v39;
      [v38 exportAsynchronouslyWithCompletionHandler:v57];
      dispatch_semaphore_wait(v39, 0xFFFFFFFFFFFFFFFFLL);
      v40 = [v78[5] status];
      v35 = v40 == 3;
      if (v40 == 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFVideoSharingOperation] Operation complete.", buf, 2u);
        }
      }

      else
      {
        v41 = [v78[5] error];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v109 = v41;
          _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PFVideoSharingOperation] Encountered error in export session %@.", buf, 0xCu);
        }

        v43 = [objc_opt_class() operationErrorWithCode:5 underlyingError:v41 withDescription:@"Error in export session"];

        v13 = v43;
      }

      v44 = self->_externalIsolation;
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __37__PFVideoSharingOperation__runExport__block_invoke_42;
      v53[3] = &unk_1E7B66D48;
      v53[4] = self;
      v13 = v13;
      v54 = v13;
      v56 = v40 == 3;
      v55 = v26;
      dispatch_sync(v44, v53);
    }

    _Block_object_dispose(&v64, 8);
    _Block_object_dispose(&v114, 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      videoAsset = self->_videoAsset;
      LODWORD(v114) = 138412290;
      *(&v114 + 4) = videoAsset;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PFVideoSharingOperation] Could not create export session from video asset: %@", &v114, 0xCu);
    }

    [(PFVideoSharingOperation *)self _setOperationError:v13];
    v35 = 0;
  }

  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v77, 8);

  _Block_object_dispose(&v84, 8);
  _Block_object_dispose(&v90, 8);

  _Block_object_dispose(&v96, 8);
  _Block_object_dispose(&v102, 8);

  return v35;
}

void __37__PFVideoSharingOperation__runExport__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) outputFilename];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) outputDirectoryURL];
  v7 = [v6 copy];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [*(a1 + 32) exportPreset];
  v11 = [v10 copy];
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v17 = [*(a1 + 32) exportFileType];
  v14 = [v17 copy];
  v15 = *(*(a1 + 64) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;
}

void __37__PFVideoSharingOperation__runExport__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __37__PFVideoSharingOperation__runExport__block_invoke_31(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 containsObject:*(*(*(a1 + 40) + 8) + 40)])
  {
    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFVideoSharingOperation] Preferred outputFileType is not among the compatible file types", &v18, 2u);
  }

  v4 = *MEMORY[0x1E69874B8];
  if ([v3 containsObject:*MEMORY[0x1E69874B8]])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "[PFVideoSharingOperation] Found MP4, choosing that.";
LABEL_10:
      _os_log_impl(&dword_1B35C1000, v5, OS_LOG_TYPE_INFO, v6, &v18, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v4 = *MEMORY[0x1E69874C0];
  if ([v3 containsObject:*MEMORY[0x1E69874C0]])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "[PFVideoSharingOperation] Found MOV, choosing that.";
      goto LABEL_10;
    }

LABEL_11:
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
    goto LABEL_12;
  }

  v14 = [v3 firstObject];
  v15 = *(*(a1 + 40) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v17 = *(*(*(a1 + 40) + 8) + 40);
    v18 = 138412290;
    v19 = v17;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFVideoSharingOperation] Picking %@, which is the first of the available types.", &v18, 0xCu);
  }

LABEL_12:
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = [MEMORY[0x1E6982C40] typeWithIdentifier:?];
    v8 = [v7 preferredFilenameExtension];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = [*(*(*(a1 + 48) + 8) + 40) uppercaseString];
  }

  else
  {
    v11 = 0;
  }

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __37__PFVideoSharingOperation__runExport__block_invoke_42(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 288);
  *(v2 + 288) = 0;

  objc_storeStrong((*(a1 + 32) + 304), *(a1 + 40));
  if (*(a1 + 56) == 1)
  {
    v4 = *(a1 + 48);
    v5 = (*(a1 + 32) + 392);

    objc_storeStrong(v5, v4);
  }
}

- (void)_validateMetadata
{
  v56 = *MEMORY[0x1E69E9840];
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__13549;
  v35 = __Block_byref_object_dispose__13550;
  v36 = 0;
  externalIsolation = self->_externalIsolation;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__PFVideoSharingOperation__validateMetadata__block_invoke;
  block[3] = &unk_1E7B66C80;
  block[4] = self;
  block[5] = &v49;
  block[6] = &v45;
  block[7] = &v41;
  block[8] = &v37;
  block[9] = &v31;
  dispatch_sync(externalIsolation, block);
  if (*(v50 + 24) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFVideoSharingOperation] Stripping all metadata", buf, 2u);
    }

    v4 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v5 = [(AVAsset *)self->_videoAsset metadata];
    v6 = v5;
    if ((v46[3] & 1) != 0 || (v42[3] & 1) != 0 || *(v38 + 24) == 1)
    {
      v7 = [MEMORY[0x1E695DFA8] set];
      if (*(v46 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFVideoSharingOperation] Stripping location from metadata", buf, 2u);
        }

        [v7 addObject:*MEMORY[0x1E6987698]];
      }

      if (*(v42 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFVideoSharingOperation] Stripping caption from metadata", buf, 2u);
        }

        [v7 addObject:*MEMORY[0x1E6987690]];
      }

      if (*(v38 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFVideoSharingOperation] Stripping accessibility description from metadata", buf, 2u);
        }

        [v7 addObject:*MEMORY[0x1E6987670]];
      }

      v4 = [MEMORY[0x1E695DF70] array];
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v26 objects:v55 count:16];
      if (v9)
      {
        v10 = *v27;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v27 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v26 + 1) + 8 * i);
            v13 = [v12 commonKey];
            v14 = [v7 member:v13];
            v15 = v14 == 0;

            if (v15)
            {
              [(NSArray *)v4 addObject:v12];
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v26 objects:v55 count:16];
        }

        while (v9);
      }
    }

    else
    {
      v4 = v5;
    }
  }

  if ((v38[3] & 1) == 0)
  {
    customAccessibilityLabel = self->_customAccessibilityLabel;
    if (customAccessibilityLabel)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        v54 = customAccessibilityLabel;
        _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFVideoSharingOperation] Applying custom accessibility label to metadata: %{private}@", buf, 0xCu);
        customAccessibilityLabel = self->_customAccessibilityLabel;
      }

      v17 = [PFSharingUtilities addAccessibilityDescription:customAccessibilityLabel toAVMetadata:v4, v26];

      v4 = v17;
    }
  }

  if ((v42[3] & 1) == 0)
  {
    customCaption = self->_customCaption;
    if (customCaption)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v19 = self->_customAccessibilityLabel;
        *buf = 138477827;
        v54 = v19;
        _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFVideoSharingOperation] Applying custom caption label to metadata: %{private}@", buf, 0xCu);
        customCaption = self->_customCaption;
      }

      v20 = [PFSharingUtilities addDescription:customCaption toAVMetadata:v4, v26];

      v4 = v20;
    }
  }

  customDate = self->_customDate;
  if (customDate)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v54 = customDate;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFVideoSharingOperation] Applying custom date to metadata: %{private}@", buf, 0xCu);
      customDate = self->_customDate;
    }

    v22 = [PFSharingUtilities addCustomDate:customDate toAVMetadata:v4, v26];

    v4 = v22;
  }

  if ((v46[3] & 1) == 0)
  {
    v23 = v32[5];
    if (v23)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        v54 = v23;
        _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFVideoSharingOperation] Applying custom location to metadata: %{private}@", buf, 0xCu);
        v23 = v32[5];
      }

      v24 = [PFSharingUtilities addCustomLocation:v23 toAVMetadata:v4, v26];

      v4 = v24;
    }
  }

  videoMetadata = self->_videoMetadata;
  self->_videoMetadata = v4;

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
}

uint64_t __44__PFVideoSharingOperation__validateMetadata__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) shouldStripMetadata];
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) shouldStripLocation];
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) shouldStripCaption];
  *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) shouldStripAccessibilityDescription];
  v2 = [*(a1 + 32) customLocation];
  v3 = *(*(a1 + 72) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (BOOL)_ensureVideoProperties
{
  v4 = [(PFVideoSharingOperation *)self videoURL];
  if (v4)
  {
    v5 = MEMORY[0x1E6988168];
    v2 = [(PFVideoSharingOperation *)self videoURL];
    v6 = [v5 assetWithURL:v2];
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(&self->_videoAsset, v6);
  if (v4)
  {
  }

  v7 = dispatch_semaphore_create(0);
  v8 = v7;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__13549;
  v25 = __Block_byref_object_dispose__13550;
  v26 = 0;
  videoAsset = self->_videoAsset;
  if (videoAsset && (v30 = 1, v15[0] = MEMORY[0x1E69E9820], v15[1] = 3221225472, v15[2] = __49__PFVideoSharingOperation__ensureVideoProperties__block_invoke, v15[3] = &unk_1E7B66C58, v16 = &unk_1F2AAB9C8, v17 = self, v19 = &v27, v20 = &v21, v10 = v7, v18 = v10, [(AVAsset *)videoAsset loadValuesAsynchronouslyForKeys:&unk_1F2AAB9C8 completionHandler:v15], v11 = dispatch_time(0, 10000000000), dispatch_semaphore_wait(v10, v11), v18, v16, (v28[3] & 1) != 0))
  {
    v12 = 1;
  }

  else
  {
    v13 = [objc_opt_class() operationErrorWithCode:2 underlyingError:v22[5] withDescription:@"Unable to ensure video properties."];
    [(PFVideoSharingOperation *)self _setOperationError:v13];

    v12 = *(v28 + 24);
  }

  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  return v12 & 1;
}

intptr_t __49__PFVideoSharingOperation__ensureVideoProperties__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = *(*(a1 + 40) + 248);
        v14 = 0;
        v9 = [v8 statusOfValueForKey:v7 error:&v14];
        v10 = v14;
        if (v9 != 2)
        {
          *(*(*(a1 + 56) + 8) + 24) = 0;
          v11 = *(*(a1 + 64) + 8);
          v12 = *(v11 + 40);
          *(v11 + 40) = v10;

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return dispatch_semaphore_signal(*(a1 + 48));
}

- (void)main
{
  if ([(PFVideoSharingOperation *)self _ensureVideoProperties])
  {
    [(PFVideoSharingOperation *)self _validateMetadata];
    v3 = [(PFVideoSharingOperation *)self _runExport];
  }

  else
  {
    v3 = 0;
  }

  [(PFVideoSharingOperation *)self _setSuccess:v3];
}

- (PFVideoSharingOperation)initWithVideoURL:(id)a3 adjustmentData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PFVideoSharingOperation;
  v8 = [(PFVideoSharingOperation *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(PFVideoSharingOperation *)v8 _setVideoURL:v6];
    [(PFVideoSharingOperation *)v9 _setAdjustments:v7];
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v11 = dispatch_queue_create("com.apple.PFVideoSharingOperation.isolationQueue", v10);
    externalIsolation = v9->_externalIsolation;
    v9->_externalIsolation = v11;
  }

  return v9;
}

+ (id)operationErrorWithCode:(int64_t)a3 underlyingError:(id)a4 withDescription:(id)a5
{
  v7 = a4;
  if (a5)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = a5;
    a5 = [[v8 alloc] initWithFormat:v9 arguments:&v14];
  }

  v10 = [MEMORY[0x1E695DF90] dictionary];
  [v10 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  [v10 setObject:a5 forKeyedSubscript:*MEMORY[0x1E696A578]];
  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PFVideoSharingOperationErrorDomain" code:a3 userInfo:v10];

  return v11;
}

@end