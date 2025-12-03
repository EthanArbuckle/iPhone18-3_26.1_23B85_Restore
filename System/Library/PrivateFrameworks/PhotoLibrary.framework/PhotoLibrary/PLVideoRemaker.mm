@interface PLVideoRemaker
+ (double)maximumDurationForTrimMode:(int)mode;
+ (int)getHDRemakerModeForMode:(int)mode;
+ (int64_t)approximateByteSizeForMode:(int)mode duration:(double)duration;
+ (int64_t)fileLengthLimitForRemakerMode:(int)mode;
- (NSString)exportPreset;
- (PLVideoRemaker)initWithAVAsset:(id)asset;
- (PLVideoRemaker)initWithManagedAsset:(id)asset applyVideoAdjustments:(BOOL)adjustments;
- (PLVideoRemaker)initWithPublishingMedia:(id)media;
- (id)_fileFormatForURL:(id)l;
- (id)_metadata;
- (id)progressView;
- (void)_didEndRemakingWithTemporaryPath:(id)path;
- (void)_exportCompletedWithSuccess:(BOOL)success;
- (void)_removeProgressTimer;
- (void)_resetProgressTimer;
- (void)_updateProgress;
- (void)cancel;
- (void)dealloc;
- (void)remake;
@end

@implementation PLVideoRemaker

- (void)_exportCompletedWithSuccess:(BOOL)success
{
  successCopy = success;
  [(PLVideoRemaker *)self _removeProgressTimer];
  [(PLProgressView *)self->_progressView removeFromSuperview];

  self->_progressView = 0;
  selfCopy = self;
  if (successCopy)
  {
    [(PLVideoRemaker *)self _didEndRemakingWithTemporaryPath:self->_trimmedPath];
  }

  else
  {
    [(PLVideoRemaker *)self _didEndRemakingWithTemporaryPath:0];
    [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  }

  self->_trimmedPath = 0;
  self->_exportSession = 0;
}

- (void)cancel
{
  if (self->_exportSession)
  {
    [(AVAssetExportSession *)self->_exportSession cancelExport];
  }

  else
  {
    [(PLVideoRemaker *)self _exportCompletedWithSuccess:0];
  }
}

- (void)_didEndRemakingWithTemporaryPath:(id)path
{
  if (objc_loadWeak(&self->_delegate))
  {
    objc_loadWeak(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      Weak = objc_loadWeak(&self->_delegate);

      [Weak videoRemakerDidEndRemaking:self temporaryPath:path];
    }
  }
}

- (id)_fileFormatForURL:(id)l
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = [objc_msgSend(objc_msgSend(l "absoluteString")];
  if ([v4 length])
  {
    v32 = MEMORY[0x277CBEAC0];
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"mov", 0}];
    v30 = *MEMORY[0x277CE5DA8];
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"m4a", @"m4p", @"m4b", @"m4r", 0}];
    v28 = *MEMORY[0x277CE5D68];
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"m4v", 0}];
    v26 = *MEMORY[0x277CE5D70];
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"mp4", @"aax", 0}];
    v24 = *MEMORY[0x277CE5D98];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"3gp", @"3gpp", 0}];
    v6 = *MEMORY[0x277CE5D40];
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"3g2", @"3gp2", 0}];
    v8 = *MEMORY[0x277CE5D48];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"amr", 0}];
    v10 = *MEMORY[0x277CE5D60];
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"wav", 0}];
    v12 = *MEMORY[0x277CE5DB8];
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"aif", @"aiff", 0}];
    v14 = [v32 dictionaryWithObjectsAndKeys:{v31, v30, v29, v28, v27, v26, v25, v24, v5, v6, v7, v8, v9, v10, v11, v12, v13, *MEMORY[0x277CE5D58], 0}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    allKeys = [v14 allKeys];
    v16 = [allKeys countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v34;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(allKeys);
          }

          v21 = *(*(&v33 + 1) + 8 * i);
          if ([objc_msgSend(v14 objectForKey:{v21), "containsObject:", v4}])
          {
            v18 = v21;
          }
        }

        v17 = [allKeys countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v17);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (self->_mode == 3)
    {
      v22 = MEMORY[0x277CE5D40];
    }

    else
    {
      v22 = MEMORY[0x277CE5DA8];
    }

    return *v22;
  }

  return v18;
}

- (void)remake
{
  if (!self->_exportSession)
  {

    shouldExportToPhotoDataDirectory = [(PLVideoRemaker *)self shouldExportToPhotoDataDirectory];
    self->_trimmedPath = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if ([defaultManager fileExistsAtPath:self->_trimmedPath])
    {
      [defaultManager removeItemAtPath:self->_trimmedPath error:0];
    }

    exportPreset = [(PLVideoRemaker *)self exportPreset];
    videoAVObjectBuilder = self->__videoAVObjectBuilder;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __24__PLVideoRemaker_remake__block_invoke;
    v20[3] = &unk_2782A2278;
    v20[4] = self;
    [(PFVideoAVObjectBuilder *)videoAVObjectBuilder requestExportSessionWithExportPreset:exportPreset resultHandler:v20];
    v7 = [PLVideoRemaker fileLengthLimitForRemakerMode:self->_mode];
    if (v7 >= 1)
    {
      [(AVAssetExportSession *)self->_exportSession setFileLengthLimit:v7];
    }

    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_trimmedPath isDirectory:0];
    [(AVAssetExportSession *)self->_exportSession setOutputFileType:[(PLVideoRemaker *)self _fileFormatForURL:v8]];
    [(AVAssetExportSession *)self->_exportSession setOutputURL:v8];
    [(AVAssetExportSession *)self->_exportSession setMetadata:[(PLVideoRemaker *)self _metadata]];
    trimStartTime = self->_trimStartTime;
    trimEndTime = self->_trimEndTime;
    if (trimStartTime > 0.0 || trimEndTime > 0.0)
    {
      if (trimEndTime == 0.0)
      {
        trimEndTime = self->_duration;
      }

      memset(&v19, 0, sizeof(v19));
      CMTimeMakeWithSeconds(&v19, trimStartTime, 600);
      memset(&v18, 0, sizeof(v18));
      CMTimeMakeWithSeconds(&v18, trimEndTime, 600);
      memset(&v17, 0, sizeof(v17));
      start.start = v19;
      end = v18;
      CMTimeRangeFromTimeToTime(&v17, &start.start, &end);
      exportSession = self->_exportSession;
      start = v17;
      [(AVAssetExportSession *)exportSession setTimeRange:&start];
    }

    self->_percentComplete = 0.0;
    v17.start.value = 0;
    *&v17.start.timescale = &v17;
    v17.start.epoch = 0x2020000000;
    LOBYTE(v17.duration.value) = 0;
    v12 = self->_exportSession;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __24__PLVideoRemaker_remake__block_invoke_2;
    v13[3] = &unk_2782A1FB0;
    v13[5] = v8;
    v13[6] = &v17;
    v14 = shouldExportToPhotoDataDirectory;
    v13[4] = self;
    [(AVAssetExportSession *)v12 exportAsynchronouslyWithCompletionHandler:v13];
    if ((*(*&v17.start.timescale + 24) & 1) == 0)
    {
      if (objc_loadWeak(&self->_delegate))
      {
        objc_loadWeak(&self->_delegate);
        if (objc_opt_respondsToSelector())
        {
          [objc_loadWeak(&self->_delegate) videoRemakerDidBeginRemaking:self];
        }
      }

      [(PLVideoRemaker *)self _resetProgressTimer];
    }

    _Block_object_dispose(&v17, 8);
  }
}

id __24__PLVideoRemaker_remake__block_invoke(uint64_t a1, void *a2)
{
  result = a2;
  *(*(a1 + 32) + 48) = result;
  return result;
}

uint64_t __24__PLVideoRemaker_remake__block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 48) status];
  *(*(*(a1 + 48) + 8) + 24) = (v2 & 0xFFFFFFFFFFFFFFFELL) == 4;
  if (v2 != 3)
  {
    Log = PLBackendGetLog();
    if (os_log_type_enabled(Log, OS_LOG_TYPE_ERROR))
    {
      v4 = [*(*(a1 + 32) + 48) asset];
      v5 = [*(*(a1 + 32) + 48) error];
      *buf = 138412546;
      v16 = v4;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_21ACCD000, Log, OS_LOG_TYPE_ERROR, "Video export failed for asset %@: %@", buf, 0x16u);
    }
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v6 = [MEMORY[0x277D3AC08] markPurgeableForFileAtURL:*(a1 + 40) withUrgency:0 outInode:0];
    v7 = PLBackendGetLog();
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        *buf = 138412290;
        v16 = v9;
        v10 = "Marked temp file (%@) as purgeable.";
        v11 = v8;
        v12 = OS_LOG_TYPE_DEFAULT;
LABEL_10:
        _os_log_impl(&dword_21ACCD000, v11, v12, v10, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      *buf = 138412290;
      v16 = v13;
      v10 = "Unable to mark temp file (%@) purgeable.";
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
      goto LABEL_10;
    }
  }

  return pl_dispatch_async();
}

- (id)_metadata
{
  result = [-[PFVideoAVObjectBuilder videoAsset](self->__videoAVObjectBuilder "videoAsset")];
  if (self->_customAccessibilityLabel)
  {
    v4 = MEMORY[0x277D3B4D0];

    return [v4 addAccessibilityDescription:? toAVMetadata:?];
  }

  return result;
}

- (void)_updateProgress
{
  [(AVAssetExportSession *)self->_exportSession progress];
  self->_percentComplete = v3;
  [(PLProgressView *)self->_progressView setPercentComplete:?];
  if (objc_loadWeak(&self->_delegate))
  {
    objc_loadWeak(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      Weak = objc_loadWeak(&self->_delegate);
      *&v6 = self->_percentComplete;
      [Weak videoRemaker:self progressDidChange:v6];
    }
  }

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    v4.n128_f64[0] = self->_percentComplete;
    v8 = *(progressHandler + 2);

    v8(v4);
  }
}

- (void)_removeProgressTimer
{
  [(NSTimer *)self->_progressTimer invalidate];

  self->_progressTimer = 0;
}

- (void)_resetProgressTimer
{
  if (!self->_progressTimer)
  {
    self->_progressTimer = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__updateProgress selector:0 userInfo:1 repeats:0.1];
  }
}

- (NSString)exportPreset
{
  result = [(PLVideoRemaker *)self exportPresetOverride];
  if (!result)
  {
    mode = self->_mode;

    return AVAssetExportPresetForRemakerMode(mode);
  }

  return result;
}

- (id)progressView
{
  progressView = self->_progressView;
  if (!progressView)
  {
    [objc_msgSend(MEMORY[0x277D759A0] "px_mainScreen")];
    v5 = [[PLProgressView alloc] initWithFrame:0.0, 0.0, v4, 45.0];
    self->_progressView = v5;
    [(PLProgressView *)v5 setAutoresizingMask:2];
    progressView = self->_progressView;
  }

  [(PLProgressView *)progressView setLabelText:[(PLVideoRemaker *)self messageForRemakingProgress]];
  *&v6 = self->_percentComplete;
  [(PLProgressView *)self->_progressView setPercentComplete:v6];
  return self->_progressView;
}

- (void)dealloc
{
  [(PLProgressView *)self->_progressView removeFromSuperview];

  [(NSTimer *)self->_progressTimer invalidate];
  self->_progressTimer = 0;
  v3.receiver = self;
  v3.super_class = PLVideoRemaker;
  [(PLVideoRemaker *)&v3 dealloc];
}

- (PLVideoRemaker)initWithManagedAsset:(id)asset applyVideoAdjustments:(BOOL)adjustments
{
  adjustmentsCopy = adjustments;
  v15.receiver = self;
  v15.super_class = PLVideoRemaker;
  v6 = [(PLVideoRemaker *)&v15 init];
  if (v6)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    [asset duration];
    v14 = v7;
    v8 = [MEMORY[0x277D3AD80] videoAVObjectBuilderForManagedAsset:asset applyVideoAdjustments:adjustmentsCopy];
    v6->__videoAVObjectBuilder = v8;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61__PLVideoRemaker_initWithManagedAsset_applyVideoAdjustments___block_invoke;
    v10[3] = &unk_2782A2250;
    v10[4] = &v11;
    [(PFVideoAVObjectBuilder *)v8 requestAVAssetWithResultHandler:v10];
    [(PLVideoRemaker *)v6 setDuration:v12[3]];
    _Block_object_dispose(&v11, 8);
  }

  return v6;
}

void __61__PLVideoRemaker_initWithManagedAsset_applyVideoAdjustments___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a2)
    {
      [a2 duration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    *(*(*(a1 + 32) + 8) + 24) = CMTimeGetSeconds(&time);
  }
}

- (PLVideoRemaker)initWithAVAsset:(id)asset
{
  v6.receiver = self;
  v6.super_class = PLVideoRemaker;
  v4 = [(PLVideoRemaker *)&v6 init];
  if (v4)
  {
    v4->__videoAVObjectBuilder = [objc_alloc(MEMORY[0x277D3B510]) initWithVideoAsset:asset videoAdjustments:0];
  }

  return v4;
}

- (PLVideoRemaker)initWithPublishingMedia:(id)media
{
  if (!media)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  asset = [media asset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [(PLVideoRemaker *)self initWithAVAsset:asset];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return [(PLVideoRemaker *)self initWithManagedAsset:asset applyVideoAdjustments:1];
    }

    else
    {
      return self;
    }
  }
}

+ (int)getHDRemakerModeForMode:(int)mode
{
  if ((mode & 0xFFFFFFFE) == 4)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

+ (int64_t)approximateByteSizeForMode:(int)mode duration:(double)duration
{
  v5 = AVAssetExportPresetForRemakerMode(mode);
  v6 = MEMORY[0x277CE6400];
  CMTimeMakeWithSeconds(&v8, duration, 60);
  return [v6 estimatedOutputFileLengthForPreset:v5 duration:&v8 properties:0];
}

+ (double)maximumDurationForTrimMode:(int)mode
{
  v9[1] = *MEMORY[0x277D85DE8];
  result = 3.40282347e38;
  if (mode <= 1)
  {
    if (mode)
    {
      if (mode == 1)
      {
        return result;
      }

      return 600.0;
    }

    goto LABEL_9;
  }

  if (mode != 4)
  {
    if (mode == 3)
    {
      return result;
    }

    if (mode != 2)
    {
      return 600.0;
    }

LABEL_9:
    v5 = [self fileLengthLimitForRemakerMode:{*&mode, 3.40282347e38}];
    v8 = @"fileLengthLimit";
    v9[0] = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    memset(&v7[32], 0, 24);
    [MEMORY[0x277CE6400] maximumDurationForPreset:AVAssetExportPresetForRemakerMode(mode) properties:v6];
    *v7 = *&v7[32];
    return CMTimeGetSeconds(v7);
  }

  return 900.0;
}

+ (int64_t)fileLengthLimitForRemakerMode:(int)mode
{
  if (mode == 2)
  {
    return 15728640;
  }

  else
  {
    return 0;
  }
}

@end