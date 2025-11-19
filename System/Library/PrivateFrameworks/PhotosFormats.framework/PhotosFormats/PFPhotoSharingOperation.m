@interface PFPhotoSharingOperation
+ (BOOL)outputSupportedForTypeIdentifier:(id)a3;
+ (id)operationErrorWithCode:(int64_t)a3 withDescription:(id)a4;
- (BOOL)shouldConvertToSRGB;
- (BOOL)shouldStripAccessibilityDescription;
- (BOOL)shouldStripCaption;
- (BOOL)shouldStripLocation;
- (BOOL)success;
- (CLLocation)customLocation;
- (NSError)operationError;
- (NSString)customAccessibilityLabel;
- (NSString)customCaption;
- (NSString)outputFilename;
- (NSURL)outputDirectoryURL;
- (PFPhotoSharingOperation)initWithImageURL:(id)a3 adjustmentData:(id)a4;
- (float)progress;
- (void)main;
- (void)setCustomAccessibilityLabel:(id)a3;
- (void)setCustomCaption:(id)a3;
- (void)setCustomLocation:(id)a3;
- (void)setOutputDirectoryURL:(id)a3;
- (void)setOutputFilename:(id)a3;
- (void)setShouldConvertToSRGB:(BOOL)a3;
- (void)setShouldStripAccessibilityDescription:(BOOL)a3;
- (void)setShouldStripCaption:(BOOL)a3;
- (void)setShouldStripLocation:(BOOL)a3;
@end

@implementation PFPhotoSharingOperation

- (BOOL)shouldConvertToSRGB
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  externalIsolation = self->_externalIsolation;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__PFPhotoSharingOperation_shouldConvertToSRGB__block_invoke;
  v5[3] = &unk_1E7B66DC0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(externalIsolation, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setShouldConvertToSRGB:(BOOL)a3
{
  externalIsolation = self->_externalIsolation;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__PFPhotoSharingOperation_setShouldConvertToSRGB___block_invoke;
  v4[3] = &unk_1E7B66D70;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(externalIsolation, v4);
}

uint64_t __50__PFPhotoSharingOperation_setShouldConvertToSRGB___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 269) != v2)
  {
    *(v1 + 269) = v2;
  }

  return result;
}

- (BOOL)shouldStripLocation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  externalIsolation = self->_externalIsolation;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__PFPhotoSharingOperation_shouldStripLocation__block_invoke;
  v5[3] = &unk_1E7B66DC0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(externalIsolation, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setShouldStripLocation:(BOOL)a3
{
  externalIsolation = self->_externalIsolation;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__PFPhotoSharingOperation_setShouldStripLocation___block_invoke;
  v4[3] = &unk_1E7B66D70;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(externalIsolation, v4);
}

uint64_t __50__PFPhotoSharingOperation_setShouldStripLocation___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 266) != v2)
  {
    *(v1 + 266) = v2;
  }

  return result;
}

- (BOOL)shouldStripAccessibilityDescription
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  externalIsolation = self->_externalIsolation;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__PFPhotoSharingOperation_shouldStripAccessibilityDescription__block_invoke;
  v5[3] = &unk_1E7B66DC0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(externalIsolation, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setShouldStripAccessibilityDescription:(BOOL)a3
{
  externalIsolation = self->_externalIsolation;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__PFPhotoSharingOperation_setShouldStripAccessibilityDescription___block_invoke;
  v4[3] = &unk_1E7B66D70;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(externalIsolation, v4);
}

uint64_t __66__PFPhotoSharingOperation_setShouldStripAccessibilityDescription___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 268) != v2)
  {
    *(v1 + 268) = v2;
  }

  return result;
}

- (BOOL)shouldStripCaption
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  externalIsolation = self->_externalIsolation;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__PFPhotoSharingOperation_shouldStripCaption__block_invoke;
  v5[3] = &unk_1E7B66DC0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(externalIsolation, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setShouldStripCaption:(BOOL)a3
{
  externalIsolation = self->_externalIsolation;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__PFPhotoSharingOperation_setShouldStripCaption___block_invoke;
  v4[3] = &unk_1E7B66D70;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(externalIsolation, v4);
}

uint64_t __49__PFPhotoSharingOperation_setShouldStripCaption___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 267) != v2)
  {
    *(v1 + 267) = v2;
  }

  return result;
}

- (NSString)customAccessibilityLabel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5140;
  v10 = __Block_byref_object_dispose__5141;
  v11 = 0;
  externalIsolation = self->_externalIsolation;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__PFPhotoSharingOperation_customAccessibilityLabel__block_invoke;
  v5[3] = &unk_1E7B66DC0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(externalIsolation, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setCustomAccessibilityLabel:(id)a3
{
  v4 = a3;
  externalIsolation = self->_externalIsolation;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__PFPhotoSharingOperation_setCustomAccessibilityLabel___block_invoke;
  v7[3] = &unk_1E7B66D98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(externalIsolation, v7);
}

uint64_t __55__PFPhotoSharingOperation_setCustomAccessibilityLabel___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 312) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    *(*(a1 + 32) + 312) = [*(a1 + 40) copy];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (NSString)customCaption
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5140;
  v10 = __Block_byref_object_dispose__5141;
  v11 = 0;
  externalIsolation = self->_externalIsolation;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__PFPhotoSharingOperation_customCaption__block_invoke;
  v5[3] = &unk_1E7B66DC0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(externalIsolation, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setCustomCaption:(id)a3
{
  v4 = a3;
  externalIsolation = self->_externalIsolation;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__PFPhotoSharingOperation_setCustomCaption___block_invoke;
  v7[3] = &unk_1E7B66D98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(externalIsolation, v7);
}

uint64_t __44__PFPhotoSharingOperation_setCustomCaption___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 304) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    *(*(a1 + 32) + 304) = [*(a1 + 40) copy];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (CLLocation)customLocation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5140;
  v10 = __Block_byref_object_dispose__5141;
  v11 = 0;
  externalIsolation = self->_externalIsolation;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__PFPhotoSharingOperation_customLocation__block_invoke;
  v5[3] = &unk_1E7B66DC0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(externalIsolation, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setCustomLocation:(id)a3
{
  v4 = a3;
  externalIsolation = self->_externalIsolation;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__PFPhotoSharingOperation_setCustomLocation___block_invoke;
  v7[3] = &unk_1E7B66D98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(externalIsolation, v7);
}

uint64_t __45__PFPhotoSharingOperation_setCustomLocation___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 288) isEqual:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    *(*(a1 + 32) + 288) = [*(a1 + 40) copy];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (NSString)outputFilename
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5140;
  v10 = __Block_byref_object_dispose__5141;
  v11 = 0;
  externalIsolation = self->_externalIsolation;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__PFPhotoSharingOperation_outputFilename__block_invoke;
  v5[3] = &unk_1E7B66DC0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(externalIsolation, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setOutputFilename:(id)a3
{
  v4 = a3;
  externalIsolation = self->_externalIsolation;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__PFPhotoSharingOperation_setOutputFilename___block_invoke;
  v7[3] = &unk_1E7B66D98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(externalIsolation, v7);
}

uint64_t __45__PFPhotoSharingOperation_setOutputFilename___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = *(*(a1 + 32) + 280);
  if (result != v2)
  {
    result = [result isEqualToString:?];
    if ((result & 1) == 0)
    {
      *(*(a1 + 32) + 280) = [*(a1 + 40) copy];

      return MEMORY[0x1EEE66BB8]();
    }
  }

  return result;
}

- (NSURL)outputDirectoryURL
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5140;
  v10 = __Block_byref_object_dispose__5141;
  v11 = 0;
  externalIsolation = self->_externalIsolation;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__PFPhotoSharingOperation_outputDirectoryURL__block_invoke;
  v5[3] = &unk_1E7B66DC0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(externalIsolation, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setOutputDirectoryURL:(id)a3
{
  v4 = a3;
  externalIsolation = self->_externalIsolation;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PFPhotoSharingOperation_setOutputDirectoryURL___block_invoke;
  v7[3] = &unk_1E7B66D98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(externalIsolation, v7);
}

uint64_t __49__PFPhotoSharingOperation_setOutputDirectoryURL___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = *(*(a1 + 32) + 272);
  if (result != v2)
  {
    result = [result isEqual:?];
    if ((result & 1) == 0)
    {
      *(*(a1 + 32) + 272) = [*(a1 + 40) copy];

      return MEMORY[0x1EEE66BB8]();
    }
  }

  return result;
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
  v5[2] = __34__PFPhotoSharingOperation_success__block_invoke;
  v5[3] = &unk_1E7B66DC0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(externalIsolation, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
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
  v5[2] = __35__PFPhotoSharingOperation_progress__block_invoke;
  v5[3] = &unk_1E7B66DC0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(externalIsolation, v5);
  if (*(v7 + 24))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSError)operationError
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5140;
  v10 = __Block_byref_object_dispose__5141;
  v11 = 0;
  externalIsolation = self->_externalIsolation;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__PFPhotoSharingOperation_operationError__block_invoke;
  v5[3] = &unk_1E7B66DC0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(externalIsolation, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)main
{
  v118 = *MEMORY[0x1E69E9840];
  v3 = [(PFPhotoSharingOperation *)self imageURL];
  v106 = 0;
  v107 = &v106;
  v108 = 0x3032000000;
  v109 = __Block_byref_object_copy__5140;
  v110 = __Block_byref_object_dispose__5141;
  v111 = 0;
  v100 = 0;
  v101 = &v100;
  v102 = 0x3032000000;
  v103 = __Block_byref_object_copy__5140;
  v104 = __Block_byref_object_dispose__5141;
  v105 = 0;
  v94 = 0;
  v95 = &v94;
  v96 = 0x3032000000;
  v97 = __Block_byref_object_copy__5140;
  v98 = __Block_byref_object_dispose__5141;
  v99 = 0;
  v88 = 0;
  v89 = &v88;
  v90 = 0x3032000000;
  v91 = __Block_byref_object_copy__5140;
  v92 = __Block_byref_object_dispose__5141;
  v93 = 0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = __Block_byref_object_copy__5140;
  v86 = __Block_byref_object_dispose__5141;
  v87 = 0;
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__5140;
  v80 = __Block_byref_object_dispose__5141;
  v81 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  externalIsolation = self->_externalIsolation;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__PFPhotoSharingOperation_main__block_invoke;
  block[3] = &unk_1E7B653A8;
  block[4] = self;
  block[5] = &v106;
  block[6] = &v100;
  block[7] = &v94;
  block[8] = &v88;
  block[9] = &v82;
  block[10] = &v76;
  block[11] = &v72;
  block[12] = &v68;
  block[13] = &v64;
  block[14] = &v60;
  block[15] = &v56;
  dispatch_sync(externalIsolation, block);
  if (!v3 || !v107[5] || !v77[5])
  {
    v21 = [objc_opt_class() operationErrorWithCode:2 withDescription:{@"Image URL, filename or output directory is missing. ImageURL: %@, filename: %@, outputDirectory: %@", v3, v107[5], v77[5]}];
LABEL_26:
    v20 = v21;
    v7 = 0;
    v6 = 0;
    v16 = 0;
    v22 = 0;
    goto LABEL_27;
  }

  v5 = CGImageSourceCreateWithURL(v3, 0);
  isrc = v5;
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v113 = v3;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PFPhotoSharingOperation] Could not create imageSource from image URL: %@", buf, 0xCu);
    }

    v21 = [objc_opt_class() operationErrorWithCode:3 withDescription:{@"Could not create imageSource from image URL: %@", v3}];
    goto LABEL_26;
  }

  v6 = [PFUniformTypeUtilities typeWithIdentifier:CGImageSourceGetType(v5)];
  v7 = v6;
  if (!v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v113 = v3;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFPhotoSharingOperation] Could not determine the UTI type for file: %{public}@. Falling back to JPG.", buf, 0xCu);
    }

    v7 = *MEMORY[0x1E6982E58];
  }

  v8 = objc_opt_class();
  v9 = [v7 identifier];
  LOBYTE(v8) = [v8 outputSupportedForTypeIdentifier:v9];

  if ((v8 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v113 = v7;
      v114 = 2114;
      v115 = v3;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFPhotoSharingOperation] Output to file type: %{public}@ is not supported when performing metadata changes for file: %{public}@. Falling back to JPG.", buf, 0x16u);
    }

    v10 = *MEMORY[0x1E6982E58];

    v7 = v10;
  }

  idst = [(__CFURL *)v3 pathExtension];
  v11 = [v7 preferredFilenameExtension];
  if (!v11)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v113 = v7;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFPhotoSharingOperation] Could not determine the extension from type: %{public}@.", buf, 0xCu);
    }

    v11 = idst;
  }

  v12 = [(__CFString *)v11 uppercaseString];
  v13 = [v12 isEqualToString:@"JPEG"];

  if (v13)
  {

    v11 = @"JPG";
  }

  v14 = [(__CFString *)v11 uppercaseString];

  v15 = [v107[5] stringByAppendingPathExtension:v14];
  v16 = [v77[5] URLByAppendingPathComponent:v15];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v113 = v16;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFPhotoSharingOperation] Output file URL will be %{public}@", buf, 0xCu);
  }

  v17 = [(__CFURL *)v16 path];
  v18 = [MEMORY[0x1E696AC08] defaultManager];
  v19 = [v18 fileExistsAtPath:v17];

  if (v19)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v113 = v17;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PFPhotoSharingOperation] Output file already exists at path: %{public}@. Aborting photo remaking.", buf, 0xCu);
    }

    v20 = [objc_opt_class() operationErrorWithCode:4 withDescription:{@"Output file already exists at path: %@", v17}];
  }

  else
  {
    v20 = 0;
  }

  if (v19)
  {
    v22 = 0;
    idsta = 0;
    goto LABEL_100;
  }

  v26 = [v7 identifier];
  idsta = CGImageDestinationCreateWithURL(v16, v26, 1uLL, 0);

  if (!idsta)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v113 = v7;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PFPhotoSharingOperation] Could not create image destination for file type: %{public}@. Aborting photo remaking.", buf, 0xCu);
    }

    v38 = [objc_opt_class() operationErrorWithCode:5 withDescription:{@"Could not create image destination for file type: %@, file URL: %@", v7, v16}];
    v22 = 0;
    idsta = 0;
    goto LABEL_99;
  }

  v47 = [MEMORY[0x1E695DF90] dictionary];
  if (*(v65 + 24) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFPhotoSharingOperation] Stripping location", buf, 2u);
    }

    [v47 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E696D3A0]];
  }

  if (*(v57 + 24) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFPhotoSharingOperation] Converting to SRGB", buf, 2u);
    }

    [v47 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E696D350]];
  }

  v45 = *(v61 + 24);
  if ((v65[3] & 1) == 0)
  {
    v27 = v101[5];
    if (v27)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        v113 = v27;
        _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFPhotoSharingOperation] Applying custom location: %{private}@", buf, 0xCu);
        v27 = v101[5];
      }

      v28 = [PFSharingUtilities gpsDictionaryForLocation:v27];
      if (v28)
      {
        [v47 setObject:v28 forKeyedSubscript:*MEMORY[0x1E696DBF0]];
        [v47 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E696D340]];
      }
    }
  }

  v46 = CGImageSourceCopyPropertiesAtIndex(isrc, 0, 0);
  v29 = v95[5];
  if (v29)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v113 = v29;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFPhotoSharingOperation] Applying custom date: %{private}@", buf, 0xCu);
    }

    v30 = *MEMORY[0x1E696D9B0];
    v31 = [(__CFDictionary *)v46 objectForKeyedSubscript:*MEMORY[0x1E696D9B0]];
    v44 = [PFSharingUtilities addCreationDate:v95[5] toExifDictionary:v31];

    v32 = *MEMORY[0x1E696DF28];
    v33 = [(__CFDictionary *)v46 objectForKeyedSubscript:*MEMORY[0x1E696DF28]];
    v34 = [PFSharingUtilities addCreationDate:v95[5] toTIFFDictionary:v33];

    [v47 setObject:v44 forKeyedSubscript:v30];
    [v47 setObject:v34 forKeyedSubscript:v32];
    [v47 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E696D340]];
  }

  if ((v73[3] & 1) != 0 || v89[5] || v83[5])
  {
    v35 = *MEMORY[0x1E696DD90];
    v36 = [(__CFDictionary *)v46 objectForKeyedSubscript:*MEMORY[0x1E696DD90]];
    v37 = [v36 mutableCopy];

    if (*(v73 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFPhotoSharingOperation] Removing Caption from IPTC", buf, 2u);
      }

      [v37 removeObjectForKey:*MEMORY[0x1E696DD68]];
    }

    else
    {
      v39 = v89[5];
      if (v39)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 138477827;
          v113 = v39;
          _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFPhotoSharingOperation] Applying Caption %{private}@ to IPTC", buf, 0xCu);
        }

        if (!v37)
        {
          v37 = [MEMORY[0x1E695DF90] dictionary];
        }

        [v37 setObject:v89[5] forKeyedSubscript:*MEMORY[0x1E696DD68]];
      }
    }

    if (*(v69 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFPhotoSharingOperation] Removing Artwork Content Description from IPTC", buf, 2u);
      }

      [v37 removeObjectForKey:*MEMORY[0x1E696DDA8]];
    }

    else
    {
      v40 = v83[5];
      if (v40)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 138477827;
          v113 = v40;
          _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFPhotoSharingOperation] Applying Artwork Content Descrption %{private}@ to IPTC", buf, 0xCu);
        }

        if (!v37)
        {
          v37 = [MEMORY[0x1E695DF90] dictionary];
        }

        [v37 setObject:v83[5] forKey:*MEMORY[0x1E696DDA8]];
      }
    }

    if (v37)
    {
      [v47 setObject:v37 forKeyedSubscript:v35];
      [v47 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E696D340]];
    }
  }

  if ((v45 & 1) == 0)
  {
    PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(isrc);
    CGImageDestinationAddImageFromSource(idsta, isrc, PrimaryImageIndex, v47);
    goto LABEL_87;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(isrc, 0, 0);
  if (ImageAtIndex)
  {
    CGImageDestinationAddImage(idsta, ImageAtIndex, v47);
    CGImageRelease(ImageAtIndex);
LABEL_87:
    LODWORD(ImageAtIndex) = 1;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138543875;
    v113 = v3;
    v114 = 2114;
    v115 = v16;
    v116 = 2113;
    v117 = v47;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFPhotoSharingOperation] Finalizing image from source URL: %{public}@, Out URL: %{public}@. Applying destination options: %{private}@", buf, 0x20u);
  }

  if (ImageAtIndex && CGImageDestinationFinalize(idsta))
  {
    v22 = 1;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFPhotoSharingOperation] Operation complete.", buf, 2u);
    }

    v38 = v20;
  }

  else
  {
    v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Source URL: %@ (Source type: %@), output Type: %@, output URL: %@", v3, v6, v7, v16];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543619;
      v113 = v43;
      v114 = 2113;
      v115 = v47;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PFPhotoSharingOperation] Unable to finalize image destination. %{public}@. Destination options: %{private}@", buf, 0x16u);
    }

    v38 = [objc_opt_class() operationErrorWithCode:6 withDescription:{@"Unable to finalize image destination. %@", v43}];

    v22 = 0;
  }

  v20 = v47;
LABEL_99:

  v20 = v38;
LABEL_100:
  CFRelease(isrc);
  if (idsta)
  {
    CFRelease(idsta);
  }

LABEL_27:
  v23 = self->_externalIsolation;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __31__PFPhotoSharingOperation_main__block_invoke_31;
  v51[3] = &unk_1E7B66D48;
  v54 = v22;
  v51[4] = self;
  v52 = v20;
  v53 = v16;
  v24 = v16;
  v25 = v20;
  dispatch_sync(v23, v51);

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v76, 8);

  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v88, 8);

  _Block_object_dispose(&v94, 8);
  _Block_object_dispose(&v100, 8);

  _Block_object_dispose(&v106, 8);
}

void __31__PFPhotoSharingOperation_main__block_invoke(void *a1)
{
  v2 = [*(a1[4] + 280) copy];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1[4] + 288) copy];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1[4] + 296) copy];
  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [*(a1[4] + 304) copy];
  v12 = *(a1[8] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [*(a1[4] + 312) copy];
  v15 = *(a1[9] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = [*(a1[4] + 272) copy];
  v18 = *(a1[10] + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  *(*(a1[11] + 8) + 24) = *(a1[4] + 267);
  *(*(a1[12] + 8) + 24) = *(a1[4] + 268);
  *(*(a1[13] + 8) + 24) = *(a1[4] + 266);
  *(*(a1[14] + 8) + 24) = *(a1[4] + 270);
  *(*(a1[15] + 8) + 24) = *(a1[4] + 269);
}

void __31__PFPhotoSharingOperation_main__block_invoke_31(uint64_t a1)
{
  *(*(a1 + 32) + 264) = 1;
  *(*(a1 + 32) + 265) = *(a1 + 56);
  objc_storeStrong((*(a1 + 32) + 256), *(a1 + 40));
  v2 = *(a1 + 32);
  if (*(v2 + 265) == 1)
  {
    v3 = *(a1 + 48);

    objc_storeStrong((v2 + 328), v3);
  }
}

- (PFPhotoSharingOperation)initWithImageURL:(id)a3 adjustmentData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PFPhotoSharingOperation;
  v8 = [(PFPhotoSharingOperation *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(PFPhotoSharingOperation *)v8 _setImageURL:v6];
    [(PFPhotoSharingOperation *)v9 _setAdjustments:v7];
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v11 = dispatch_queue_create("com.apple.PFPhotoSharingOperation.isolationQueue", v10);
    externalIsolation = v9->_externalIsolation;
    v9->_externalIsolation = v11;
  }

  return v9;
}

+ (id)operationErrorWithCode:(int64_t)a3 withDescription:(id)a4
{
  if (a4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = a4;
    v7 = [[v5 alloc] initWithFormat:v6 arguments:&v12];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E695DF90] dictionary];
  [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A578]];
  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PFPhotoSharingOperationErrorDomain" code:a3 userInfo:v8];

  return v9;
}

+ (BOOL)outputSupportedForTypeIdentifier:(id)a3
{
  v3 = outputSupportedForTypeIdentifier__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&outputSupportedForTypeIdentifier__onceToken, &__block_literal_global_5193);
  }

  v5 = [outputSupportedForTypeIdentifier__supportedImageDestinationTypeIdentifiers containsObject:v4];

  return v5;
}

uint64_t __60__PFPhotoSharingOperation_outputSupportedForTypeIdentifier___block_invoke()
{
  outputSupportedForTypeIdentifier__supportedImageDestinationTypeIdentifiers = CGImageDestinationCopyTypeIdentifiers();

  return MEMORY[0x1EEE66BB8]();
}

@end