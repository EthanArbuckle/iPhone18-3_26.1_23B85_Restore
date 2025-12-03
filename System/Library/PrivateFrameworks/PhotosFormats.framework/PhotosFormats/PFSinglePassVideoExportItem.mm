@interface PFSinglePassVideoExportItem
- (BOOL)isAPACAudioTrack:(id)track;
- (BOOL)preflight;
- (BOOL)setupConversionWithError:(id *)error;
- (BOOL)startConversionWithError:(id *)error outputAvailableHandler:(id)handler;
- (PFSinglePassVideoExportItem)init;
- (double)inputAssetDuration;
- (id)bitRateControllerForTargetEncodingBitRate:(int64_t)rate;
- (id)outputDataInRange:(_NSRange)range waitUntilAvailableWithTimeout:(unint64_t)timeout error:(id *)error;
- (int64_t)estimatedOutputBitRate;
- (void)_cancel;
- (void)configureDroppableFrameRateForCompressionSession:(OpaqueVTCompressionSession *)session inputWidth:(int)width inputHeight:(int)height;
- (void)configureOutputMetadataForAssetWriter:(id)writer;
- (void)dealloc;
- (void)notifyDataAvailableToHandler:(id)handler ignoreMinimumChunkLength:(BOOL)length;
- (void)processCompressedSampleBuffer:(opaqueCMSampleBuffer *)buffer presentationTimeStamp:(id *)stamp;
- (void)setTargetOutputFileSize:(unint64_t)size;
- (void)setupOutputFileSourceWithOutputAvailableHandler:(id)handler;
- (void)startReadingInputAssetWithOutputAvailableHandler:(id)handler;
@end

@implementation PFSinglePassVideoExportItem

- (double)inputAssetDuration
{
  inputAsset = [(PFSinglePassVideoExportItem *)self inputAsset];
  v3 = inputAsset;
  if (inputAsset)
  {
    [inputAsset duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);

  return Seconds;
}

- (void)_cancel
{
  v13 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  state = selfCopy->_state;
  v4 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if ((state & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    if (v4)
    {
      *buf = 138543362;
      v10 = selfCopy;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Export item %{public}@ cancellation requested", buf, 0xCu);
    }

    selfCopy->_didCancel = 1;
    selfCopy->_state = 4;
    objc_sync_exit(selfCopy);

    assetWriter = [(PFSinglePassVideoExportItem *)selfCopy assetWriter];
    [assetWriter cancelWriting];

    assetReader = [(PFSinglePassVideoExportItem *)selfCopy assetReader];
    [assetReader cancelReading];

    dispatch_group_leave(selfCopy->_inputReadingCompletionGroup);
    additionalReaderTrackOutputs = selfCopy->_additionalReaderTrackOutputs;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __38__PFSinglePassVideoExportItem__cancel__block_invoke;
    v8[3] = &unk_1E7B668F8;
    v8[4] = selfCopy;
    [(NSArray *)additionalReaderTrackOutputs enumerateObjectsUsingBlock:v8];
    [(PFVideoExportRangeCoordinator *)selfCopy->_availableRangeCoordinator cancel];
  }

  else
  {
    if (v4)
    {
      *buf = 138543618;
      v10 = selfCopy;
      v11 = 2048;
      v12 = state;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Ignoring cancellation request of export item %{public}@ in state %ld", buf, 0x16u);
    }

    objc_sync_exit(selfCopy);
  }
}

- (id)bitRateControllerForTargetEncodingBitRate:(int64_t)rate
{
  v3 = [[PFProportionalIntegralController alloc] initWithSetPoint:(rate * 0.95)];
  [(PFProportionalIntegralController *)v3 setOutputMax:[(PFProportionalIntegralController *)v3 setPoint]];
  [(PFProportionalIntegralController *)v3 setOutputMin:([(PFProportionalIntegralController *)v3 setPoint]* 0.6)];
  [(PFProportionalIntegralController *)v3 setIntegralErrorMin:-2000000];
  [(PFProportionalIntegralController *)v3 setIntegralErrorMax:2000000];
  [(PFProportionalIntegralController *)v3 setProportionalGain:0.045];
  [(PFProportionalIntegralController *)v3 setIntegralGain:0.002];

  return v3;
}

- (void)notifyDataAvailableToHandler:(id)handler ignoreMinimumChunkLength:(BOOL)length
{
  handlerCopy = handler;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  exportItemStateQueue = self->_exportItemStateQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__PFSinglePassVideoExportItem_notifyDataAvailableToHandler_ignoreMinimumChunkLength___block_invoke;
  v15[3] = &unk_1E7B66DC0;
  v15[4] = self;
  v15[5] = &v16;
  dispatch_sync(exportItemStateQueue, v15);
  v8 = v17[3];
  if (v8 != [(PFSinglePassVideoExportItem *)self outputFileLastEndOffset])
  {
    v9 = v17[3];
    progress = [(PFSinglePassVideoExportItem *)self progress];
    [progress setCompletedUnitCount:v9];

    outputFileLastEndOffset = [(PFSinglePassVideoExportItem *)self outputFileLastEndOffset];
    v12 = v17[3];
    v13 = v12 - [(PFSinglePassVideoExportItem *)self outputFileLastEndOffset];
    if (length || v13 >= [(PFSinglePassVideoExportItem *)self minimumChunkLength])
    {
      [(PFSinglePassVideoExportItem *)self setOutputFileLastEndOffset:v17[3]];
      statistics = [(PFSinglePassVideoExportItem *)self statistics];
      [statistics addMeasurementForBytesDelivered:v13];

      handlerCopy[2](handlerCopy, 2, outputFileLastEndOffset, v13, 0);
    }
  }

  _Block_object_dispose(&v16, 8);
}

void __85__PFSinglePassVideoExportItem_notifyDataAvailableToHandler_ignoreMinimumChunkLength___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) conversionOutputFileHandle];
  *(*(*(a1 + 40) + 8) + 24) = [v2 seekToEndOfFile];
}

- (void)setupOutputFileSourceWithOutputAvailableHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (self->_state == 2)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    destinationFileURL = [(PFSinglePassVideoExportItem *)self destinationFileURL];
    path = [destinationFileURL path];
    v8 = [defaultManager fileExistsAtPath:path];

    if (v8)
    {
      v9 = MEMORY[0x1E696AC00];
      destinationFileURL2 = [(PFSinglePassVideoExportItem *)self destinationFileURL];
      v24 = 0;
      v11 = [v9 fileHandleForReadingFromURL:destinationFileURL2 error:&v24];
      v12 = v24;

      if (v11)
      {
        [(PFSinglePassVideoExportItem *)self setConversionOutputFileHandle:v11];
        self->_state = 3;
        v13 = dispatch_queue_create("com.apple.pfvideoexport.output-vnode-source", 0);
        conversionOutputFileHandle = [(PFSinglePassVideoExportItem *)self conversionOutputFileHandle];
        fileDescriptor = [conversionOutputFileHandle fileDescriptor];
        v16 = dispatch_source_create(MEMORY[0x1E69E9728], fileDescriptor, 4uLL, v13);

        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __79__PFSinglePassVideoExportItem_setupOutputFileSourceWithOutputAvailableHandler___block_invoke;
        handler[3] = &unk_1E7B668D0;
        handler[4] = self;
        v17 = handlerCopy;
        v23 = v17;
        dispatch_source_set_event_handler(v16, handler);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __79__PFSinglePassVideoExportItem_setupOutputFileSourceWithOutputAvailableHandler___block_invoke_2;
        v20[3] = &unk_1E7B668D0;
        v20[4] = self;
        v21 = v17;
        dispatch_source_set_cancel_handler(v16, v20);
        [(PFSinglePassVideoExportItem *)self setOutputFileSizeChangeSource:v16];
        dispatch_activate(v16);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          identifier = self->_identifier;
          path2 = [(NSURL *)self->_destinationFileURL path];
          *buf = 138543874;
          v26 = identifier;
          v27 = 2112;
          v28 = path2;
          v29 = 2114;
          v30 = v12;
          _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to open output file handle for %{public}@ %@: %{public}@", buf, 0x20u);
        }

        [(PFSinglePassVideoExportItem *)self _cancel];
      }
    }
  }
}

void __79__PFSinglePassVideoExportItem_setupOutputFileSourceWithOutputAvailableHandler___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  [*(a1 + 32) notifyDataAvailableToHandler:*(a1 + 40) ignoreMinimumChunkLength:1];
  v3 = [*v2 assetWriter];
  v4 = [v3 status];

  v5 = *v2;
  objc_sync_enter(v5);
  if (*(*v2 + 11) == 1)
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(v8 + 16);
      v10 = [*(v8 + 96) path];
      *buf = 138543618;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Completion for %{public}@ %@, item was cancelled", buf, 0x16u);
    }

    objc_sync_exit(v5);
  }

  else
  {
    objc_sync_exit(v5);

    v11 = *(a1 + 32);
    if (v4 == 2)
    {
      *(v11 + 48) = 5;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 32);
        v13 = *(v12 + 16);
        v14 = [*(v12 + 96) path];
        *buf = 138543618;
        v28 = v13;
        v29 = 2112;
        v30 = v14;
        _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Completion for %{public}@ %@", buf, 0x16u);
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      *(v11 + 48) = 4;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = *(a1 + 32);
        v23 = *(v22 + 16);
        v24 = [*(v22 + 160) error];
        *buf = 138543874;
        v28 = v23;
        v29 = 2048;
        v30 = v4;
        v31 = 2114;
        v32 = v24;
        _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unsuccessful writer completion for %{public}@, status: %ld, error: %{public}@", buf, 0x20u);
      }

      if (v4 == 4)
      {
        v15 = 5;
      }

      else
      {
        v15 = 0;
      }

      v16 = [*(a1 + 32) assetWriter];
      v17 = [v16 error];
      if (v17)
      {
        v18 = [*(a1 + 32) assetWriter];
        v19 = [v18 error];
        v26 = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      }

      else
      {
        v20 = 0;
      }

      v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PFVideoExportErrorDomain" code:v15 userInfo:v20];
      (*(*(a1 + 40) + 16))();
    }
  }
}

- (void)processCompressedSampleBuffer:(opaqueCMSampleBuffer *)buffer presentationTimeStamp:(id *)stamp
{
  v39 = *MEMORY[0x1E69E9840];
  [(AVAssetWriterInput *)self->_videoWriterInput appendSampleBuffer:?];
  [(PFSinglePassVideoExportItemStatistics *)self->_statistics setProcessedOutputFrameCount:[(PFSinglePassVideoExportItemStatistics *)self->_statistics processedOutputFrameCount]+ 1];
  [(PFSinglePassVideoExportItemStatistics *)self->_statistics setProcessedVideoSampleBytes:[(PFSinglePassVideoExportItemStatistics *)self->_statistics processedVideoSampleBytes]+ CMSampleBufferGetTotalSampleSize(buffer)];
  v27 = *stamp;
  [(PFSinglePassVideoExportItemStatistics *)self->_statistics setLastProcessedInputFramePresentationTime:CMTimeGetSeconds(&v27)];
  effectiveEncodingBitRate = [(PFSinglePassVideoExportItemStatistics *)self->_statistics effectiveEncodingBitRate];
  v8 = effectiveEncodingBitRate - [(PFProportionalIntegralController *)self->_bitRateController setPoint];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v19 = [(PFSinglePassVideoExportItemStatistics *)self->_statistics effectiveEncodingBitRate]/ 1000000.0;
    v20 = self->_currentEncodingBitRate / 1000000.0;
    v21 = [(PFSinglePassVideoExportItem *)self estimatedOutputBitRate]/ 1000000.0;
    processedOutputFrameCount = [(PFSinglePassVideoExportItemStatistics *)self->_statistics processedOutputFrameCount];
    processedVideoSampleBytes = [(PFSinglePassVideoExportItemStatistics *)self->_statistics processedVideoSampleBytes];
    v24 = [(PFSinglePassVideoExportItemStatistics *)self->_statistics processedAdditionalSampleBytes]+ processedVideoSampleBytes;
    processedVideoSampleBytes2 = [(PFSinglePassVideoExportItemStatistics *)self->_statistics processedVideoSampleBytes];
    processedAdditionalSampleBytes = [(PFSinglePassVideoExportItemStatistics *)self->_statistics processedAdditionalSampleBytes];
    LODWORD(v27.value) = 134219776;
    *(&v27.value + 4) = v19;
    LOWORD(v27.flags) = 2048;
    *(&v27.flags + 2) = v20;
    HIWORD(v27.epoch) = 2048;
    v28 = v21;
    v29 = 2048;
    v30 = v8 / 1000000.0;
    v31 = 2048;
    v32 = processedOutputFrameCount;
    v33 = 2048;
    v34 = v24;
    v35 = 2048;
    v36 = processedVideoSampleBytes2;
    v37 = 2048;
    v38 = processedAdditionalSampleBytes;
    _os_log_debug_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Effective/selected/target bit rate: %.2fmbit/s / %.2fmbit/s / %.2fmbit/s , error = %.2fmbit/s, output frame count = %ld, sample bytes = %lu, video bytes = %lu, additional bytes = %lu", &v27, 0x52u);
  }

  processedOutputFrameCount2 = [(PFSinglePassVideoExportItemStatistics *)self->_statistics processedOutputFrameCount];
  [(PFSinglePassVideoExportItemStatistics *)self->_statistics frameRate];
  v11 = (processedOutputFrameCount2 / v10);
  bitRateController = [(PFSinglePassVideoExportItem *)self bitRateController];
  [bitRateController updateWithTimestamp:v8 error:-[PFSinglePassVideoExportItemStatistics effectiveEncodingBitRate](self->_statistics feedback:{"effectiveEncodingBitRate"), v11}];

  if ([(PFSinglePassVideoExportItemStatistics *)self->_statistics processedOutputFrameCount]>= 11 && [(PFProportionalIntegralController *)self->_bitRateController outputReady])
  {
    output = [(PFProportionalIntegralController *)self->_bitRateController output];
    setPoint = [(PFProportionalIntegralController *)self->_bitRateController setPoint];
    bitRateController = self->_bitRateController;
    v16 = output >= setPoint ? [(PFProportionalIntegralController *)bitRateController setPoint]: [(PFProportionalIntegralController *)bitRateController output];
    v17 = v16;
    currentEncodingBitRate = self->_currentEncodingBitRate;
    if (v16 != currentEncodingBitRate)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        LODWORD(v27.value) = 134218240;
        *(&v27.value + 4) = currentEncodingBitRate / 1000000.0;
        LOWORD(v27.flags) = 2048;
        *(&v27.flags + 2) = v17 / 1000000.0;
        _os_log_debug_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Adjusting encoding bit rate from %.2fmbit/s to %.2fmbit/s", &v27, 0x16u);
      }

      self->_currentEncodingBitRate = v17;
      self->_needsCurrentEncodingBitRateUpdate = 1;
    }
  }
}

- (void)startReadingInputAssetWithOutputAvailableHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    inputAsset = [(PFSinglePassVideoExportItem *)self inputAsset];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = inputAsset;
    _os_log_debug_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Start reading input asset %@", &buf, 0xCu);
  }

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.pfvideoexport.conversion", v5);

  array = [MEMORY[0x1E695DF70] array];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v35 = 0x2020000000;
  v36 = 0;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __80__PFSinglePassVideoExportItem_startReadingInputAssetWithOutputAvailableHandler___block_invoke;
  v33[3] = &unk_1E7B66DC0;
  v33[4] = self;
  v33[5] = &buf;
  v8 = MEMORY[0x1B8C64C40](v33);
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  videoWriterInput = self->_videoWriterInput;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __80__PFSinglePassVideoExportItem_startReadingInputAssetWithOutputAvailableHandler___block_invoke_289;
  v22[3] = &unk_1E7B66858;
  v22[4] = self;
  v27 = v29;
  v10 = v8;
  v25 = v10;
  v11 = handlerCopy;
  v26 = v11;
  v12 = array;
  v23 = v12;
  v28 = v31;
  v13 = v6;
  v24 = v13;
  [(AVAssetWriterInput *)videoWriterInput requestMediaDataWhenReadyOnQueue:v13 usingBlock:v22];
  additionalReaderTrackOutputs = self->_additionalReaderTrackOutputs;
  if (additionalReaderTrackOutputs)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __80__PFSinglePassVideoExportItem_startReadingInputAssetWithOutputAvailableHandler___block_invoke_293;
    v20[3] = &unk_1E7B668A8;
    v20[4] = self;
    v21 = v13;
    [(NSArray *)additionalReaderTrackOutputs enumerateObjectsUsingBlock:v20];
  }

  inputReadingCompletionGroup = self->_inputReadingCompletionGroup;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PFSinglePassVideoExportItem_startReadingInputAssetWithOutputAvailableHandler___block_invoke_295;
  block[3] = &unk_1E7B668D0;
  block[4] = self;
  v19 = v11;
  v16 = v11;
  dispatch_group_notify(inputReadingCompletionGroup, v13, block);

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);

  _Block_object_dispose(&buf, 8);
}

void __80__PFSinglePassVideoExportItem_startReadingInputAssetWithOutputAvailableHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = *(*(a1 + 40) + 8);
  if (*(v3 + 24) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 32);
      v5 = *(v4 + 16);
      v6 = *(v4 + 64);
      v11 = 138543618;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_debug_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "leave group - did finish already set, ID %{public}@ for %@", &v11, 0x16u);
    }

LABEL_7:
    objc_sync_exit(v2);

    return;
  }

  *(v3 + 24) = 1;
  v7 = *(a1 + 32);
  if (*(v7 + 11) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v7 + 16);
      v9 = *(v7 + 64);
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "leave group - item already in failed state, ID %{public}@ for %@", &v11, 0x16u);
    }

    goto LABEL_7;
  }

  objc_sync_exit(v2);

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v10 = [*(a1 + 32) inputAsset];
    v11 = 138412290;
    v12 = v10;
    _os_log_debug_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "leave group %@", &v11, 0xCu);
  }

  [*(*(a1 + 32) + 168) markAsFinished];
  dispatch_group_leave(*(*(a1 + 32) + 200));
}

void __80__PFSinglePassVideoExportItem_startReadingInputAssetWithOutputAvailableHandler___block_invoke_289(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (![*(*(a1 + 32) + 168) isReadyForMoreMediaData])
  {
    return;
  }

  v3 = *MEMORY[0x1E6983558];
  v4 = MEMORY[0x1E69E9C10];
  *&v2 = 67109120;
  v22 = v2;
  while (1)
  {
    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      (*(*(a1 + 56) + 16))();
      return;
    }

    [*(a1 + 32) setupOutputFileSourceWithOutputAvailableHandler:*(a1 + 64)];
    if (![*(a1 + 40) count])
    {
      break;
    }

    v5 = [*(a1 + 40) firstObject];
    v6 = [v5 firstObject];
    memset(&completeUntilPresentationTimeStamp, 0, sizeof(completeUntilPresentationTimeStamp));
    v7 = [v5 lastObject];
    v8 = v7;
    if (v7)
    {
      [v7 CMTimeValue];
    }

    else
    {
      memset(&completeUntilPresentationTimeStamp, 0, sizeof(completeUntilPresentationTimeStamp));
    }

    v15 = *(a1 + 32);
    v31 = completeUntilPresentationTimeStamp;
    [v15 processCompressedSampleBuffer:v6 presentationTimeStamp:&v31];
    [*(a1 + 40) removeObjectAtIndex:0];
    if (*(*(*(a1 + 80) + 8) + 24) == 1 && ![*(a1 + 40) count])
    {
      (*(*(a1 + 56) + 16))();

      return;
    }

LABEL_19:
    if (([*(*(a1 + 32) + 168) isReadyForMoreMediaData] & 1) == 0)
    {
      return;
    }
  }

  v9 = [*(*(a1 + 32) + 144) copyNextSampleBuffer];
  if (v9)
  {
    v10 = v9;
    memset(&completeUntilPresentationTimeStamp, 0, sizeof(completeUntilPresentationTimeStamp));
    CMSampleBufferGetPresentationTimeStamp(&completeUntilPresentationTimeStamp, v9);
    memset(&v31, 0, sizeof(v31));
    CMSampleBufferGetDuration(&v31, v10);
    ImageBuffer = CMSampleBufferGetImageBuffer(v10);
    v12 = *(a1 + 32);
    if (*(v12 + 9) != 1)
    {
      goto LABEL_25;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(v12 + 224);
      LODWORD(buf.value) = 134217984;
      *(&buf.value + 4) = v16;
      _os_log_debug_impl(&dword_1B35C1000, v4, OS_LOG_TYPE_DEBUG, "Bit rate update to %ld", &buf, 0xCu);
      v12 = *(a1 + 32);
    }

    v13 = VTSessionSetProperty(*(v12 + 216), v3, [MEMORY[0x1E696AD98] numberWithInteger:{*(v12 + 224), v22}]);
    *(*(a1 + 32) + 9) = 0;
    if (!v13)
    {
      v12 = *(a1 + 32);
LABEL_25:
      v19 = *(v12 + 216);
      outputHandler[0] = MEMORY[0x1E69E9820];
      outputHandler[1] = 3221225472;
      outputHandler[2] = __80__PFSinglePassVideoExportItem_startReadingInputAssetWithOutputAvailableHandler___block_invoke_290;
      outputHandler[3] = &unk_1E7B66830;
      v29 = v10;
      v30 = completeUntilPresentationTimeStamp;
      v25 = *(a1 + 48);
      v20 = *(a1 + 40);
      v21 = *(a1 + 32);
      v26 = v20;
      v27 = v21;
      v28 = *(a1 + 72);
      buf = completeUntilPresentationTimeStamp;
      duration = v31;
      VTCompressionSessionEncodeFrameWithOutputHandler(v19, ImageBuffer, &buf, &duration, 0, 0, outputHandler);

      return;
    }

    v14 = v13;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      buf.value = __PAIR64__(v14, v22);
      _os_log_error_impl(&dword_1B35C1000, v4, OS_LOG_TYPE_ERROR, "Unable to adjust bit rate, status = %d", &buf, 8u);
    }

    CFRelease(v10);
    *(*(*(a1 + 72) + 8) + 24) = 1;
    goto LABEL_19;
  }

  v17 = *(*(a1 + 80) + 8);
  if ((*(v17 + 24) & 1) == 0)
  {
    *(v17 + 24) = 1;
    v18 = *(*(a1 + 32) + 216);
    completeUntilPresentationTimeStamp = **&MEMORY[0x1E6960C68];
    VTCompressionSessionCompleteFrames(v18, &completeUntilPresentationTimeStamp);
  }
}

void __80__PFSinglePassVideoExportItem_startReadingInputAssetWithOutputAvailableHandler___block_invoke_293(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [*(*(a1 + 32) + 176) objectAtIndexedSubscript:a3];
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  v8 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__PFSinglePassVideoExportItem_startReadingInputAssetWithOutputAvailableHandler___block_invoke_2_294;
  v12[3] = &unk_1E7B66880;
  v9 = v7;
  v10 = *(a1 + 32);
  v13 = v9;
  v14 = v10;
  v11 = v6;
  v15 = v11;
  v16 = v17;
  [v9 requestMediaDataWhenReadyOnQueue:v8 usingBlock:v12];

  _Block_object_dispose(v17, 8);
}

void __80__PFSinglePassVideoExportItem_startReadingInputAssetWithOutputAvailableHandler___block_invoke_295(uint64_t a1)
{
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __80__PFSinglePassVideoExportItem_startReadingInputAssetWithOutputAvailableHandler___block_invoke_2_296;
  v8 = &unk_1E7B668D0;
  v2 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v2;
  v3 = MEMORY[0x1B8C64C40](&v5);
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  if (*(*(a1 + 32) + 11) == 1)
  {
    v3[2](v3);
    objc_sync_exit(v4);
  }

  else
  {
    objc_sync_exit(v4);

    v4 = [*(a1 + 32) assetWriter];
    [v4 finishWritingWithCompletionHandler:v3];
  }
}

void __80__PFSinglePassVideoExportItem_startReadingInputAssetWithOutputAvailableHandler___block_invoke_2_296(uint64_t a1)
{
  CFRelease(*(*(a1 + 32) + 216));
  *(*(a1 + 32) + 216) = 0;
  v2 = [*(a1 + 32) outputFileSizeChangeSource];

  if (v2)
  {
    v4 = [*(a1 + 32) outputFileSizeChangeSource];
    dispatch_source_cancel(v4);
  }

  else
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }
}

void __80__PFSinglePassVideoExportItem_startReadingInputAssetWithOutputAvailableHandler___block_invoke_2_294(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isReadyForMoreMediaData])
  {
    while (1)
    {
      v2 = *(a1 + 40);
      objc_sync_enter(v2);
      v3 = *(a1 + 40);
      if (*(v3 + 11) == 1)
      {
        break;
      }

      objc_sync_exit(v2);

      v4 = [*(a1 + 48) copyNextSampleBuffer];
      if (!v4)
      {
        v8 = *(*(a1 + 56) + 8);
        if ((*(v8 + 24) & 1) == 0)
        {
          *(v8 + 24) = 1;
          [*(a1 + 32) markAsFinished];
          v9 = *(*(a1 + 40) + 200);

          dispatch_group_leave(v9);
        }

        return;
      }

      v5 = v4;
      [*(*(a1 + 40) + 120) setProcessedAdditionalSampleBytes:{objc_msgSend(*(*(a1 + 40) + 120), "processedAdditionalSampleBytes") + CMSampleBufferGetTotalSampleSize(v4)}];
      [*(a1 + 32) appendSampleBuffer:v5];
      CFRelease(v5);
      if (([*(a1 + 32) isReadyForMoreMediaData] & 1) == 0)
      {
        return;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(v3 + 16);
      v7 = *(v3 + 64);
      v10 = 138543618;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "additional track processing - item was cancelled, ID %{public}@ for %@", &v10, 0x16u);
    }

    objc_sync_exit(v2);
  }
}

void __80__PFSinglePassVideoExportItem_startReadingInputAssetWithOutputAvailableHandler___block_invoke_290(uint64_t a1, CMTimeFlags a2, uint64_t a3, uint64_t a4)
{
  v17[2] = *MEMORY[0x1E69E9840];
  CFRelease(*(a1 + 64));
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = *(*(a1 + 48) + 16);
      LODWORD(time.value) = 138543618;
      *(&time.value + 4) = v12;
      LOWORD(time.flags) = 1024;
      *(&time.flags + 2) = a2;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to encode frame for %{public}@, status = %d", &time, 0x12u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else if (a4)
  {
    v17[0] = a4;
    time = *(a1 + 72);
    v7 = [MEMORY[0x1E696B098] valueWithCMTime:&time];
    v17[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __80__PFSinglePassVideoExportItem_startReadingInputAssetWithOutputAvailableHandler___block_invoke_2;
    v13[3] = &unk_1E7B66D98;
    v9 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = v8;
    v10 = v8;
    dispatch_async(v9, v13);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    time = *(a1 + 72);
    Seconds = CMTimeGetSeconds(&time);
    LODWORD(time.value) = 134217984;
    *(&time.value + 4) = Seconds;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Frame drop at presentation time %f", &time, 0xCu);
  }
}

- (int64_t)estimatedOutputBitRate
{
  inputAsset = self->_inputAsset;
  if (inputAsset)
  {
    [(AVAsset *)inputAsset duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  if (CMTimeGetSeconds(&time) >= 1.0)
  {
    return [(PFSinglePassVideoExportItemStatistics *)self->_statistics targetEncodingBitRate];
  }

  [(AVAssetTrack *)self->_videoTrack naturalSize];
  v6 = v4 * v5 * 1.5;
  [(AVAssetTrack *)self->_videoTrack nominalFrameRate];
  return (v6 * v7 * 0.1);
}

- (void)configureDroppableFrameRateForCompressionSession:(OpaqueVTCompressionSession *)session inputWidth:(int)width inputHeight:(int)height
{
  v22 = *MEMORY[0x1E69E9840];
  supportedPropertyDictionaryOut = 0;
  v8 = VTSessionCopySupportedPropertyDictionary(session, &supportedPropertyDictionaryOut);
  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v17) = v9;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to query compression session for supported properties, status = %d", buf, 8u);
    }
  }

  else
  {
    v10 = *MEMORY[0x1E6983570];
    v11 = CFDictionaryContainsKey(supportedPropertyDictionaryOut, *MEMORY[0x1E6983570]);
    CFRelease(supportedPropertyDictionaryOut);
    if (!v11)
    {
      v10 = *MEMORY[0x1E6983560];
    }

    v12 = &unk_1F2AAB5F0;
    if (height * width > 2073600)
    {
      v12 = &unk_1F2AAB5D8;
    }

    v13 = v12;
    v14 = VTSessionSetProperty(session, v10, v13);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138543874;
      v17 = v10;
      v18 = 2114;
      v19 = v13;
      v20 = 1024;
      v21 = v14;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Configuring droppable frame rate: setting %{public}@ to %{public}@, status = %d", buf, 0x1Cu);
    }
  }
}

- (BOOL)isAPACAudioTrack:(id)track
{
  trackCopy = track;
  mediaType = [trackCopy mediaType];
  v5 = [mediaType isEqual:*MEMORY[0x1E69875A0]];

  v9 = 0;
  if (v5)
  {
    formatDescriptions = [trackCopy formatDescriptions];
    firstObject = [formatDescriptions firstObject];

    MediaSubType = CMFormatDescriptionGetMediaSubType(firstObject);
    if (MediaSubType == 1634754915 || MediaSubType == 1902211171 || MediaSubType == 1667330147)
    {
      v9 = 1;
    }
  }

  return v9;
}

- (void)configureOutputMetadataForAssetWriter:(id)writer
{
  v32 = *MEMORY[0x1E69E9840];
  writerCopy = writer;
  v4 = [MEMORY[0x1E695DFA8] set];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  additionalMetadata = [(PFSinglePassVideoExportItem *)self additionalMetadata];
  v6 = [additionalMetadata countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(additionalMetadata);
        }

        identifier = [*(*(&v26 + 1) + 8 * i) identifier];
        [v4 addObject:identifier];
      }

      v7 = [additionalMetadata countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  array = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  metadata = [(AVAsset *)self->_inputAsset metadata];
  v13 = [metadata countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(metadata);
        }

        v17 = *(*(&v22 + 1) + 8 * j);
        identifier2 = [v17 identifier];
        v19 = [v4 containsObject:identifier2];

        if ((v19 & 1) == 0)
        {
          [array addObject:v17];
        }
      }

      v14 = [metadata countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }

  if ([v4 count])
  {
    additionalMetadata2 = [(PFSinglePassVideoExportItem *)self additionalMetadata];
    [array addObjectsFromArray:additionalMetadata2];
  }

  [writerCopy setMetadata:array];
}

- (BOOL)setupConversionWithError:(id *)error
{
  selfCopy = self;
  v120[1] = *MEMORY[0x1E69E9840];
  videoTrack = [(PFSinglePassVideoExportItem *)self videoTrack];
  [videoTrack naturalSize];
  v6 = v5;
  v8 = v7;

  inputAsset = selfCopy->_inputAsset;
  v114 = 0;
  v10 = [MEMORY[0x1E6987E78] assetReaderWithAsset:inputAsset error:&v114];
  v11 = v114;
  if (v10)
  {
    [(PFSinglePassVideoExportItem *)selfCopy setAssetReader:v10];
    videoTrack2 = [(PFSinglePassVideoExportItem *)selfCopy videoTrack];
    formatDescriptions = [videoTrack2 formatDescriptions];
    firstObject = [formatDescriptions firstObject];

    v97 = CMFormatDescriptionGetExtensions(firstObject);
    v15 = [v97 objectForKeyedSubscript:@"BitsPerComponent"];
    integerValue = [v15 integerValue];

    if (integerValue <= 8)
    {
      v17 = 875704438;
    }

    else
    {
      v17 = 2016686640;
    }

    v119 = *MEMORY[0x1E6966130];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v17];
    v120[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v120 forKeys:&v119 count:1];

    v20 = MEMORY[0x1E6987EA8];
    videoTrack3 = [(PFSinglePassVideoExportItem *)selfCopy videoTrack];
    v22 = [v20 assetReaderTrackOutputWithTrack:videoTrack3 outputSettings:v19];

    [(PFSinglePassVideoExportItem *)selfCopy setVideoReaderTrackOutput:v22];
    [v22 setAlwaysCopiesSampleData:0];
    [v10 addOutput:v22];
    v96 = v22;
    [v22 setMaximizePowerEfficiency:{-[PFSinglePassVideoExportItem maximizePowerEfficiency](selfCopy, "maximizePowerEfficiency")}];
    v95 = v19;
    if ([(NSArray *)selfCopy->_additionalTracks count])
    {
      v93 = v11;
      v23 = v10;
      array = [MEMORY[0x1E695DF70] array];
      [(PFSinglePassVideoExportItem *)selfCopy setAdditionalReaderTrackOutputs:array];
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v25 = selfCopy->_additionalTracks;
      v26 = [(NSArray *)v25 countByEnumeratingWithState:&v110 objects:v118 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v111;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v111 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v110 + 1) + 8 * i);
            if (![(PFSinglePassVideoExportItem *)selfCopy isAPACAudioTrack:v30])
            {
              v31 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:v30 outputSettings:0];
              [v31 setAlwaysCopiesSampleData:0];
              [v23 addOutput:v31];
              v117[0] = v31;
              v32 = selfCopy;
              v33 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v30, "isEnabled")}];
              v117[1] = v33;
              v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:2];
              [array addObject:v34];

              selfCopy = v32;
              [v31 setMaximizePowerEfficiency:{-[PFSinglePassVideoExportItem maximizePowerEfficiency](v32, "maximizePowerEfficiency")}];
            }
          }

          v27 = [(NSArray *)v25 countByEnumeratingWithState:&v110 objects:v118 count:16];
        }

        while (v27);
      }

      v10 = v23;
      v11 = v93;
      v19 = v95;
    }

    if ([v10 startReading])
    {
      v35 = v6;
      v36 = v8;
      v94 = selfCopy;
      destinationFileURL = [(PFSinglePassVideoExportItem *)selfCopy destinationFileURL];

      if (!destinationFileURL)
      {
        v38 = MEMORY[0x1E695DFF8];
        v91 = NSTemporaryDirectory();
        v39 = MEMORY[0x1E696AEC0];
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        identifier = [(PFSinglePassVideoExportItem *)v94 identifier];
        v43 = [v39 stringWithFormat:@"%@-%@.mov", v41, identifier];
        [v91 stringByAppendingPathComponent:v43];
        v45 = v44 = v11;
        v46 = [v38 fileURLWithPath:v45];
        [(PFSinglePassVideoExportItem *)v94 setDestinationFileURL:v46];

        v11 = v44;
        v36 = v8;

        v19 = v95;
        [(PFSinglePassVideoExportItem *)v94 setShouldDeleteDestinationURLOnDeallocation:1];
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        identifier = v94->_identifier;
        destinationFileURL = v94->_destinationFileURL;
        *buf = 138543618;
        *&buf[4] = identifier;
        *&buf[12] = 2112;
        *&buf[14] = destinationFileURL;
        _os_log_debug_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Setting up asset writer for %{public}@ with destination URL %@", buf, 0x16u);
      }

      session = 0;
      v47 = VTCompressionSessionCreate(0, v6, v36, 0x61766331u, 0, 0, 0, 0, 0, &session);
      if (v47)
      {
        v48 = v47;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v48;
          _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to create compression session, result = %d", buf, 8u);
        }

        v94->_state = 4;
        if (error)
        {
          [MEMORY[0x1E696ABC0] errorWithDomain:@"PFVideoExportErrorDomain" code:6 userInfo:0];
          *error = startWriting = 0;
        }

        else
        {
          startWriting = 0;
        }

        v55 = v11;
      }

      else
      {
        v94->_compressionSession = session;
        [(AVAssetTrack *)v94->_videoTrack nominalFrameRate];
        v52 = *&v51;
        v53 = v94->_inputAsset;
        if (v53)
        {
          [(AVAsset *)v53 duration];
        }

        else
        {
          memset(buf, 0, 24);
        }

        *&v51 = v52;
        v92 = [PFSinglePassVideoExportItemStatistics statisticsWithTargetPlaybackDuration:buf frameRate:v94->_targetOutputFileSize targetOutputTotalBytes:v51];
        [(PFSinglePassVideoExportItem *)v94 setStatistics:?];
        estimatedOutputBitRate = [(PFSinglePassVideoExportItem *)v94 estimatedOutputBitRate];
        v94->_currentEncodingBitRate = estimatedOutputBitRate;
        v57 = [(PFSinglePassVideoExportItem *)v94 bitRateControllerForTargetEncodingBitRate:estimatedOutputBitRate];
        [(PFSinglePassVideoExportItem *)v94 setBitRateController:v57];

        VTSessionSetProperty(session, *MEMORY[0x1E6983558], [MEMORY[0x1E696AD98] numberWithInteger:v94->_currentEncodingBitRate]);
        VTSessionSetProperty(session, *MEMORY[0x1E69835B0], *MEMORY[0x1E6965DB8]);
        VTSessionSetProperty(session, *MEMORY[0x1E6983878], *MEMORY[0x1E6965F50]);
        VTSessionSetProperty(session, *MEMORY[0x1E69838B8], *MEMORY[0x1E6965FD0]);
        if (v52 > 30.0)
        {
          [(PFSinglePassVideoExportItem *)v94 configureDroppableFrameRateForCompressionSession:session inputWidth:v35 inputHeight:v36];
        }

        VTCompressionSessionPrepareToEncodeFrames(session);
        v58 = MEMORY[0x1E6987ED8];
        destinationFileURL2 = [(PFSinglePassVideoExportItem *)v94 destinationFileURL];
        v60 = *MEMORY[0x1E69874C0];
        v108 = v11;
        [v58 assetWriterWithURL:destinationFileURL2 fileType:v60 error:&v108];
        v62 = v61 = v11;
        v55 = v108;

        if (v62)
        {
          [(PFSinglePassVideoExportItem *)v94 setAssetWriter:v62];
          [(PFSinglePassVideoExportItem *)v94 configureOutputMetadataForAssetWriter:v62];
          [v62 setWritesSinglePassUsingPredeterminedFileSize:-[PFSinglePassVideoExportItem targetOutputFileSize](v94 mediaDataSize:{"targetOutputFileSize"), -[PFSinglePassVideoExportItem targetOutputMediaDataSize](v94, "targetOutputMediaDataSize")}];
          v63 = dispatch_group_create();
          inputReadingCompletionGroup = v94->_inputReadingCompletionGroup;
          v94->_inputReadingCompletionGroup = v63;

          v65 = [MEMORY[0x1E6987EE0] assetWriterInputWithMediaType:*MEMORY[0x1E6987608] outputSettings:0];
          [(PFSinglePassVideoExportItem *)v94 setVideoWriterInput:v65];
          videoTrack = v94->_videoTrack;
          if (videoTrack)
          {
            [(AVAssetTrack *)videoTrack preferredTransform];
          }

          else
          {
            v106 = 0u;
            v107 = 0u;
            v105 = 0u;
          }

          *buf = v105;
          *&buf[16] = v106;
          v116 = v107;
          [v65 setTransform:buf];
          metadata = [(AVAssetTrack *)v94->_videoTrack metadata];
          [v65 setMetadata:metadata];

          v70 = v94;
          [v65 setMaximizePowerEfficiency:{-[PFSinglePassVideoExportItem maximizePowerEfficiency](v94, "maximizePowerEfficiency")}];
          [v62 addInput:v65];
          dispatch_group_enter(v94->_inputReadingCompletionGroup);
          if (v94->_additionalReaderTrackOutputs)
          {
            array2 = [MEMORY[0x1E695DF70] array];
            [(PFSinglePassVideoExportItem *)v94 setAdditionalWriterInputs:array2];
            additionalReaderTrackOutputs = v94->_additionalReaderTrackOutputs;
            v101[0] = MEMORY[0x1E69E9820];
            v101[1] = 3221225472;
            v101[2] = __56__PFSinglePassVideoExportItem_setupConversionWithError___block_invoke;
            v101[3] = &unk_1E7B66808;
            v102 = v62;
            v103 = v94;
            v104 = array2;
            v73 = array2;
            [(NSArray *)additionalReaderTrackOutputs enumerateObjectsUsingBlock:v101];

            v70 = v94;
          }

          v74 = v70->_inputAsset;
          if (v74)
          {
            [(AVAsset *)v74 duration];
          }

          else
          {
            v99 = 0uLL;
            v100 = 0;
          }

          *buf = v99;
          *&buf[16] = v100;
          [v62 setOverallDurationHint:buf];
          startWriting = [v62 startWriting];
          if (startWriting)
          {
            v70->_state = 2;
            *buf = *MEMORY[0x1E6960CC0];
            *&buf[16] = *(MEMORY[0x1E6960CC0] + 16);
            [v62 startSessionAtSourceTime:buf];
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              destinationFileURL3 = [(PFSinglePassVideoExportItem *)v70 destinationFileURL];
              status = [v62 status];
              error = [v62 error];
              *buf = 138412802;
              *&buf[4] = destinationFileURL3;
              *&buf[12] = 2048;
              *&buf[14] = status;
              *&buf[22] = 2112;
              *&buf[24] = error;
              _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to start writing to %@: status: %ld, error: %@", buf, 0x20u);

              v70 = v94;
            }

            v70->_state = 4;
            if (error)
            {
              *error = [v62 error];
            }
          }

          v19 = v95;
          v67 = v92;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v86 = v94->_identifier;
            v87 = v94->_destinationFileURL;
            *buf = 138543874;
            *&buf[4] = v86;
            *&buf[12] = 2112;
            *&buf[14] = v87;
            *&buf[22] = 2114;
            *&buf[24] = v55;
            _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to create writer for %{public}@ for output URL %@: %{public}@", buf, 0x20u);
          }

          v94->_state = 4;
          v67 = v92;
          if (error)
          {
            v68 = v55;
            startWriting = 0;
            *error = v55;
          }

          else
          {
            startWriting = 0;
          }
        }
      }

      v54 = v96;
      v11 = v55;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v80 = v10;
        v81 = selfCopy->_identifier;
        v82 = selfCopy->_inputAsset;
        v83 = selfCopy;
        status2 = [v80 status];
        error2 = [v80 error];
        *buf = 138544130;
        *&buf[4] = v81;
        v10 = v80;
        *&buf[12] = 2112;
        *&buf[14] = v82;
        *&buf[22] = 2048;
        *&buf[24] = status2;
        selfCopy = v83;
        LOWORD(v116) = 2114;
        *(&v116 + 2) = error2;
        _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to start reading from asset %{public}@ %@: status: %ld, error: %{public}@", buf, 0x2Au);
      }

      selfCopy->_state = 4;
      if (error)
      {
        [v10 error];
        *error = startWriting = 0;
      }

      else
      {
        startWriting = 0;
      }

      v54 = v96;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v76 = selfCopy->_identifier;
      v77 = selfCopy->_inputAsset;
      *buf = 138543874;
      *&buf[4] = v76;
      *&buf[12] = 2112;
      *&buf[14] = v77;
      *&buf[22] = 2114;
      *&buf[24] = v11;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to create asset reader for %{public}@ %@: %{public}@", buf, 0x20u);
    }

    selfCopy->_state = 4;
    if (error)
    {
      v50 = v11;
      startWriting = 0;
      *error = v11;
    }

    else
    {
      startWriting = 0;
    }
  }

  return startWriting;
}

void __56__PFSinglePassVideoExportItem_setupConversionWithError___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v9 = [v3 objectAtIndexedSubscript:0];
  v4 = [v3 objectAtIndexedSubscript:1];

  v5 = [v4 BOOLValue];
  v6 = MEMORY[0x1E6987EE0];
  v7 = [v9 mediaType];
  v8 = [v6 assetWriterInputWithMediaType:v7 outputSettings:0];

  [v8 setMarksOutputTrackAsEnabled:v5];
  [a1[4] addInput:v8];
  [v8 setMaximizePowerEfficiency:{objc_msgSend(a1[5], "maximizePowerEfficiency")}];
  [a1[6] addObject:v8];
  dispatch_group_enter(*(a1[5] + 25));
}

- (id)outputDataInRange:(_NSRange)range waitUntilAvailableWithTimeout:(unint64_t)timeout error:(id *)error
{
  location = range.location;
  v31[1] = *MEMORY[0x1E69E9840];
  state = self->_state;
  if (state <= 4 && ((1 << state) & 0x13) != 0)
  {
    if (error)
    {
      v9 = MEMORY[0x1E696ABC0];
      v30 = @"PFVideoExportErrorStateKey";
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
      v31[0] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      *error = [v9 errorWithDomain:@"PFVideoExportErrorDomain" code:1 userInfo:v11];
    }

    goto LABEL_7;
  }

  length = range.length;
  targetOutputFileSize = [(PFSinglePassVideoExportItem *)self targetOutputFileSize];
  if (length <= 0x500000 && location + length <= targetOutputFileSize)
  {
    availableRangeCoordinator = [(PFSinglePassVideoExportItem *)self availableRangeCoordinator];
    v25 = 0;
    v19 = [availableRangeCoordinator waitForAvailabilityOfRange:location timeout:length error:{timeout, &v25}];
    v20 = v25;

    if (v19)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v27 = __Block_byref_object_copy__12186;
      v28 = __Block_byref_object_dispose__12187;
      v29 = 0;
      exportItemStateQueue = self->_exportItemStateQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __85__PFSinglePassVideoExportItem_outputDataInRange_waitUntilAvailableWithTimeout_error___block_invoke;
      block[3] = &unk_1E7B667E0;
      block[6] = location;
      block[7] = length;
      block[4] = self;
      block[5] = buf;
      dispatch_sync(exportItemStateQueue, block);
      v12 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);
    }

    else if (error)
    {
      v22 = v20;
      v12 = 0;
      *error = v20;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v33.location = location;
    v33.length = length;
    v23 = NSStringFromRange(v33);
    *buf = 138543618;
    *&buf[4] = v23;
    *&buf[12] = 2048;
    *&buf[14] = [(PFSinglePassVideoExportItem *)self targetOutputFileSize];
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Invalid range %{public}@ requested, available length = %llu", buf, 0x16u);

    if (error)
    {
      goto LABEL_17;
    }

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  if (!error)
  {
    goto LABEL_7;
  }

LABEL_17:
  [MEMORY[0x1E696ABC0] errorWithDomain:@"PFVideoExportErrorDomain" code:3 userInfo:0];
  *error = v12 = 0;
LABEL_8:

  return v12;
}

void __85__PFSinglePassVideoExportItem_outputDataInRange_waitUntilAvailableWithTimeout_error___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) conversionOutputFileHandle];
  [v5 seekToFileOffset:*(a1 + 48)];
  v2 = [v5 readDataOfLength:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)startConversionWithError:(id *)error outputAvailableHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [(PFSinglePassVideoExportItem *)self setupConversionWithError:error];
  if (v7)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __79__PFSinglePassVideoExportItem_startConversionWithError_outputAvailableHandler___block_invoke;
    v9[3] = &unk_1E7B667B8;
    v9[4] = self;
    v10 = handlerCopy;
    [(PFSinglePassVideoExportItem *)self startReadingInputAssetWithOutputAvailableHandler:v9];
  }

  return v7;
}

void __79__PFSinglePassVideoExportItem_startConversionWithError_outputAvailableHandler___block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4, void *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a5;
  if (a2 == 3)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    v12 = *(*(a1 + 32) + 16);
    v20 = 138543362;
    v21 = v12;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "Finished converting asset %{public}@";
    v15 = 12;
LABEL_13:
    _os_log_debug_impl(&dword_1B35C1000, v13, OS_LOG_TYPE_DEBUG, v14, &v20, v15);
    goto LABEL_9;
  }

  if (a2 != 2)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    v19 = *(*(a1 + 32) + 16);
    v20 = 138543874;
    v21 = v19;
    v22 = 2048;
    v23 = a2;
    v24 = 2112;
    v25 = v9;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "Error reading converting video %{public}@, status = %ld, error = %@";
    v15 = 32;
    goto LABEL_13;
  }

  v27.location = [*(*(a1 + 32) + 208) availableRange];
  v29.location = a3;
  v29.length = a4;
  v10 = NSUnionRange(v27, v29);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v28.location = a3;
    v28.length = a4;
    v17 = NSStringFromRange(v28);
    v18 = NSStringFromRange(v10);
    v20 = 138543618;
    v21 = v17;
    v22 = 2114;
    v23 = v18;
    _os_log_debug_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "New data range available: %{public}@, setting available total range to %{public}@", &v20, 0x16u);
  }

  v11 = [*(a1 + 32) availableRangeCoordinator];
  [v11 updateAvailableRange:{v10.location, v10.length}];

LABEL_9:
  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, a2, a3, a4, v9);
  }
}

- (void)setTargetOutputFileSize:(unint64_t)size
{
  self->_targetOutputFileSize = size;
  progress = [(PFSinglePassVideoExportItem *)self progress];
  [progress setTotalUnitCount:size];
}

- (BOOL)preflight
{
  v21 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  tracks = [(AVAsset *)self->_inputAsset tracks];
  v5 = [tracks countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = *MEMORY[0x1E6987608];
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(tracks);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        if (self->_videoTrack || ([*(*(&v16 + 1) + 8 * v9) mediaType], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqual:", v8), v11, !v12))
        {
          [array addObject:v10];
        }

        else
        {
          [(PFSinglePassVideoExportItem *)self setVideoTrack:v10];
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [tracks countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  videoTrack = [(PFSinglePassVideoExportItem *)self videoTrack];

  if (videoTrack)
  {
    if ([array count])
    {
      [(PFSinglePassVideoExportItem *)self setAdditionalTracks:array];
    }

    v14 = 1;
  }

  else
  {
    v14 = 4;
  }

  self->_state = v14;

  return videoTrack != 0;
}

- (void)dealloc
{
  v18 = *MEMORY[0x1E69E9840];
  compressionSession = self->_compressionSession;
  if (compressionSession)
  {
    CFRelease(compressionSession);
    self->_compressionSession = 0;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (self->_shouldDeleteDestinationURLOnDeallocation)
  {
    destinationFileURL = self->_destinationFileURL;
    if (destinationFileURL)
    {
      path = [(NSURL *)destinationFileURL path];
      v7 = [defaultManager fileExistsAtPath:path];

      if (v7)
      {
        path2 = [(NSURL *)self->_destinationFileURL path];
        v13 = 0;
        v9 = [defaultManager removeItemAtPath:path2 error:&v13];
        v10 = v13;

        if ((v9 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          path3 = [(NSURL *)self->_destinationFileURL path];
          *buf = 138543618;
          v15 = path3;
          v16 = 2112;
          v17 = v10;
          _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to remove temp file %{public}@: %@", buf, 0x16u);
        }
      }
    }
  }

  v12.receiver = self;
  v12.super_class = PFSinglePassVideoExportItem;
  [(PFSinglePassVideoExportItem *)&v12 dealloc];
}

- (PFSinglePassVideoExportItem)init
{
  v18.receiver = self;
  v18.super_class = PFSinglePassVideoExportItem;
  v2 = [(PFSinglePassVideoExportItem *)&v18 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    objc_storeStrong(&v2->_identifier, uUIDString);
    v2->_state = 0;
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.pfvideoexport.state", v5);
    exportItemStateQueue = v2->_exportItemStateQueue;
    v2->_exportItemStateQueue = v6;

    v2->_minimumChunkLength = 102400;
    v8 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:0];
    progress = v2->_progress;
    v2->_progress = v8;

    objc_initWeak(&location, v2);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __35__PFSinglePassVideoExportItem_init__block_invoke;
    v14[3] = &unk_1E7B66790;
    v10 = uUIDString;
    v15 = v10;
    objc_copyWeak(&v16, &location);
    [(NSProgress *)v2->_progress setCancellationHandler:v14];
    v11 = objc_opt_new();
    availableRangeCoordinator = v2->_availableRangeCoordinator;
    v2->_availableRangeCoordinator = v11;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __35__PFSinglePassVideoExportItem_init__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFSinglePassVideoExportItem item %{public}@ cancelled", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _cancel];
}

@end