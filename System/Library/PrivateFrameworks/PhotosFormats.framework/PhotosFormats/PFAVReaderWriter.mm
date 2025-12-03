@interface PFAVReaderWriter
- ($E33AF59C8D263E738CA17719EFF006B3)timeRange;
- (BOOL)setUpReaderAndWriterReturningError:(id *)error;
- (BOOL)startReadingAndWritingReturningError:(id *)error;
- (PFAVReaderWriter)initWithAsset:(id)asset;
- (PFAVReaderWriter)initWithAsset:(id)asset stillImageTime:(id *)time;
- (PFAVReaderWriterAdjustDelegate)delegate;
- (void)_didLoadAVAssetValues;
- (void)cancel;
- (void)readingAndWritingDidFinishSuccessfully:(BOOL)successfully withError:(id)error;
- (void)sampleBufferChannel:(id)channel didReadSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)sampleBufferChannel:(id)channel didReadSampleBuffer:(opaqueCMSampleBuffer *)buffer andMadeWriteSampleBuffer:(__CVBuffer *)sampleBuffer;
- (void)setTimeRange:(id *)range;
- (void)writeToURL:(id)l progress:(id)progress completion:(id)completion;
@end

@implementation PFAVReaderWriter

- (void)setTimeRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var1.var1;
  *&self->_timeRange.start.epoch = *&range->var0.var3;
  *&self->_timeRange.duration.timescale = v4;
  *&self->_timeRange.start.value = v3;
}

- ($E33AF59C8D263E738CA17719EFF006B3)timeRange
{
  v3 = *&self[3].var0.var3;
  *&retstr->var0.var0 = *&self[3].var0.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[3].var1.var1;
  return self;
}

- (PFAVReaderWriterAdjustDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sampleBufferChannel:(id)channel didReadSampleBuffer:(opaqueCMSampleBuffer *)buffer andMadeWriteSampleBuffer:(__CVBuffer *)sampleBuffer
{
  [(PFAVReaderWriter *)self timeRange];
  v8 = progressOfSampleBufferInTimeRange(buffer, v18);
  progressBlock = self->_progressBlock;
  if (progressBlock)
  {
    v10 = v8;
    progressBlock[2](v10);
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if (ImageBuffer)
  {
    v12 = ImageBuffer;
    v13 = CFGetTypeID(ImageBuffer);
    TypeID = CVPixelBufferGetTypeID();
    if (sampleBuffer)
    {
      if (v13 == TypeID)
      {
        delegate = [(PFAVReaderWriter *)self delegate];
        v16 = objc_opt_respondsToSelector();

        if (v16)
        {
          delegate2 = [(PFAVReaderWriter *)self delegate];
          [delegate2 adjustPixelBuffer:v12 toOutputBuffer:sampleBuffer];
        }
      }
    }
  }
}

- (void)sampleBufferChannel:(id)channel didReadSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  [(PFAVReaderWriter *)self timeRange];
  v6 = progressOfSampleBufferInTimeRange(buffer, v15);
  progressBlock = self->_progressBlock;
  if (progressBlock)
  {
    v8 = v6;
    progressBlock[2](v8);
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if (ImageBuffer)
  {
    v10 = ImageBuffer;
    v11 = CFGetTypeID(ImageBuffer);
    if (v11 == CVPixelBufferGetTypeID())
    {
      delegate = [(PFAVReaderWriter *)self delegate];
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        delegate2 = [(PFAVReaderWriter *)self delegate];
        [delegate2 adjustPixelBuffer:v10];
      }
    }
  }
}

- (void)readingAndWritingDidFinishSuccessfully:(BOOL)successfully withError:(id)error
{
  successfullyCopy = successfully;
  errorCopy = error;
  if (!successfullyCopy)
  {
    [(AVAssetReader *)self->assetReader cancelReading];
    [(AVAssetWriter *)self->assetWriter cancelWriting];
  }

  assetReader = self->assetReader;
  self->assetReader = 0;

  assetWriter = self->assetWriter;
  self->assetWriter = 0;

  videoChannels = self->videoChannels;
  self->videoChannels = 0;

  passthroughChannels = self->passthroughChannels;
  self->passthroughChannels = 0;

  self->cancelled = 0;
  progressBlock = self->_progressBlock;
  self->_progressBlock = 0;

  v12 = MEMORY[0x1B8C64C40](self->_completionBlock);
  completionBlock = self->_completionBlock;
  self->_completionBlock = 0;

  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PFAVReaderWriter_readingAndWritingDidFinishSuccessfully_withError___block_invoke;
  block[3] = &unk_1E7B66D20;
  block[4] = self;
  dispatch_sync(isolationQueue, block);
  if (v12)
  {
    (v12)[2](v12, successfullyCopy, errorCopy);
  }
}

- (void)cancel
{
  serializationQueue = self->_serializationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__PFAVReaderWriter_cancel__block_invoke;
  block[3] = &unk_1E7B66D20;
  block[4] = self;
  dispatch_async(serializationQueue, block);
}

uint64_t __26__PFAVReaderWriter_cancel__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(*(a1 + 32) + 40);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v17 + 1) + 8 * v6++) cancel];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(*(a1 + 32) + 48);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) cancel];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v9);
  }

  *(*(a1 + 32) + 56) = 1;
  return [*(a1 + 32) readingAndWritingDidFinishSuccessfully:0 withError:0];
}

- (BOOL)startReadingAndWritingReturningError:(id *)error
{
  v51 = *MEMORY[0x1E69E9840];
  if (![(AVAssetReader *)self->assetReader startReading])
  {
    if (error)
    {
      assetReader = self->assetReader;
LABEL_27:
      error = [assetReader error];
      v28 = error;
      result = 0;
      *error = error;
      return result;
    }

    return 0;
  }

  if (![(AVAssetWriter *)self->assetWriter startWriting])
  {
    if (error)
    {
      assetReader = self->assetWriter;
      goto LABEL_27;
    }

    return 0;
  }

  v5 = dispatch_group_create();
  assetWriter = self->assetWriter;
  [(PFAVReaderWriter *)self timeRange];
  v47 = v45;
  v48 = v46;
  [(AVAssetWriter *)assetWriter startSessionAtSourceTime:&v47];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = self->videoChannels;
  v7 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v42;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v41 + 1) + 8 * i);
        dispatch_group_enter(v5);
        delegate = [(PFAVReaderWriter *)self delegate];
        if (delegate)
        {
          selfCopy = self;
        }

        else
        {
          selfCopy = 0;
        }

        v14 = selfCopy;

        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __57__PFAVReaderWriter_startReadingAndWritingReturningError___block_invoke;
        v39[3] = &unk_1E7B66D20;
        v40 = v5;
        [v11 startWithDelegate:v14 completionHandler:v39];
      }

      v8 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v8);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = self->passthroughChannels;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v35 objects:v49 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v36;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v35 + 1) + 8 * j);
        dispatch_group_enter(v5);
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __57__PFAVReaderWriter_startReadingAndWritingReturningError___block_invoke_2;
        v33[3] = &unk_1E7B66D20;
        v34 = v5;
        [v20 startWithDelegate:0 completionHandler:v33];
      }

      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v35 objects:v49 count:16];
    }

    while (v17);
  }

  metadataInput = [(PFAVReaderWriter *)self metadataInput];

  if (metadataInput)
  {
    dispatch_group_enter(v5);
    metadataInput = self->_metadataInput;
    isolationQueue = self->_isolationQueue;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __57__PFAVReaderWriter_startReadingAndWritingReturningError___block_invoke_3;
    v31[3] = &unk_1E7B66D98;
    v31[4] = self;
    v32 = v5;
    [(AVAssetWriterInput *)metadataInput requestMediaDataWhenReadyOnQueue:isolationQueue usingBlock:v31];
  }

  serializationQueue = self->_serializationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PFAVReaderWriter_startReadingAndWritingReturningError___block_invoke_4;
  block[3] = &unk_1E7B66D20;
  block[4] = self;
  dispatch_group_notify(v5, serializationQueue, block);

  return 1;
}

void __57__PFAVReaderWriter_startReadingAndWritingReturningError___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = *(v2 + 84);
  v7 = *(v2 + 100);
  QuickTimeMovieStillImageTimeSampleBuffer = StolenFigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer(&v6, 0);
  if (QuickTimeMovieStillImageTimeSampleBuffer)
  {
    v4 = QuickTimeMovieStillImageTimeSampleBuffer;
    [*(*(a1 + 32) + 128) appendSampleBuffer:QuickTimeMovieStillImageTimeSampleBuffer];
    CFRelease(v4);
  }

  [*(*(a1 + 32) + 128) markAsFinished];
  v5 = *(a1 + 40);

  dispatch_group_leave(v5);
}

void __57__PFAVReaderWriter_startReadingAndWritingReturningError___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (*(v2 + 56) == 1)
  {
    [v3 cancelReading];
    v4 = *(*(a1 + 32) + 32);

    [v4 cancelWriting];
  }

  else
  {
    v5 = [v3 status];
    v6 = *(a1 + 32);
    if (v5 == 3)
    {
      v8 = [*(v6 + 24) error];
      [*(a1 + 32) readingAndWritingDidFinishSuccessfully:0 withError:v8];
    }

    else
    {
      v7 = *(v6 + 32);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __57__PFAVReaderWriter_startReadingAndWritingReturningError___block_invoke_5;
      v9[3] = &unk_1E7B66D20;
      v9[4] = v6;
      [v7 finishWritingWithCompletionHandler:v9];
    }
  }
}

void __57__PFAVReaderWriter_startReadingAndWritingReturningError___block_invoke_5(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) status] == 2;
  v3 = *(a1 + 32);
  v4 = [v3[4] error];
  [v3 readingAndWritingDidFinishSuccessfully:v2 withError:v4];
}

- (BOOL)setUpReaderAndWriterReturningError:(id *)error
{
  v134 = *MEMORY[0x1E69E9840];
  asset = [(PFAVReaderWriter *)self asset];
  outputURL = [(PFAVReaderWriter *)self outputURL];
  v122 = 0;
  v7 = [objc_alloc(MEMORY[0x1E6987E78]) initWithAsset:asset error:&v122];
  v8 = v122;
  assetReader = self->assetReader;
  self->assetReader = v7;

  if (self->assetReader)
  {
    v10 = objc_alloc(MEMORY[0x1E6987ED8]);
    v11 = *MEMORY[0x1E69874C0];
    v121 = v8;
    v12 = [v10 initWithURL:outputURL fileType:v11 error:&v121];
    v13 = v121;

    assetWriter = self->assetWriter;
    self->assetWriter = v12;

    selfCopy = self;
    if (self->assetWriter)
    {
      metadata = [asset metadata];
      if (metadata)
      {
        [(AVAssetWriter *)self->assetWriter setMetadata:metadata];
      }

      v75 = metadata;
      v76 = v13;
      v77 = outputURL;
      v16 = [PFMediaUtilities tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:asset];
      v94 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v78 = asset;
      tracks = [asset tracks];
      v97 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v120 = 0u;
      v17 = v16;
      v107 = [v17 countByEnumeratingWithState:&v117 objects:v133 count:16];
      v108 = v17;
      if (v107)
      {
        v106 = *v118;
        v105 = *MEMORY[0x1E6966130];
        v104 = *MEMORY[0x1E69660D8];
        extensionKey = *MEMORY[0x1E6965D70];
        v93 = *MEMORY[0x1E6987C98];
        v92 = *MEMORY[0x1E6965D80];
        v91 = *MEMORY[0x1E6987C78];
        v90 = *MEMORY[0x1E6965D60];
        v89 = *MEMORY[0x1E6987C80];
        v88 = *MEMORY[0x1E6965D68];
        v87 = *MEMORY[0x1E6987C90];
        v86 = *MEMORY[0x1E6965D78];
        v95 = *MEMORY[0x1E6965EF8];
        v85 = *MEMORY[0x1E6987D90];
        v84 = *MEMORY[0x1E6965EF0];
        v83 = *MEMORY[0x1E6987DA0];
        v82 = *MEMORY[0x1E6965F00];
        v81 = *MEMORY[0x1E6987C88];
        v80 = *MEMORY[0x1E6987D98];
        v103 = *MEMORY[0x1E6987CE8];
        v102 = *MEMORY[0x1E6987CB0];
        v101 = *MEMORY[0x1E6987E08];
        v99 = 1;
        v100 = *MEMORY[0x1E6987D70];
        v98 = *MEMORY[0x1E6987D30];
LABEL_7:
        v18 = 0;
        while (1)
        {
          if (*v118 != v106)
          {
            objc_enumerationMutation(v17);
          }

          v19 = *(*(&v117 + 1) + 8 * v18);
          v131[0] = v105;
          v131[1] = v104;
          v132[0] = &unk_1F2AAAF18;
          v132[1] = MEMORY[0x1E695E0F8];
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v132 forKeys:v131 count:2];
          v21 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:v19 outputSettings:v20];
          formatDescriptions = [v19 formatDescriptions];
          if ([formatDescriptions count] && (objc_msgSend(formatDescriptions, "objectAtIndexedSubscript:", 0), v23 = objc_claimAutoreleasedReturnValue(), v23, v23))
          {
            PresentationDimensions = CMVideoFormatDescriptionGetPresentationDimensions(v23, 0, 0);
            width = PresentationDimensions.width;
            height = PresentationDimensions.height;
            Extension = CMFormatDescriptionGetExtension(v23, extensionKey);
            v28 = Extension;
            if (Extension)
            {
              v129[0] = v93;
              v130[0] = CFDictionaryGetValue(Extension, v92);
              v129[1] = v91;
              v130[1] = CFDictionaryGetValue(v28, v90);
              v129[2] = v89;
              v130[2] = CFDictionaryGetValue(v28, v88);
              v129[3] = v87;
              v130[3] = CFDictionaryGetValue(v28, v86);
              v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v130 forKeys:v129 count:4];
            }

            v29 = CMFormatDescriptionGetExtension(v23, v95);
            v30 = v29;
            if (v29)
            {
              v127[0] = v85;
              v128[0] = CFDictionaryGetValue(v29, v84);
              v127[1] = v83;
              v128[1] = CFDictionaryGetValue(v30, v82);
              v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v128 forKeys:v127 count:2];
            }

            if (v28 | v30)
            {
              dictionary = [MEMORY[0x1E695DF90] dictionary];
              v32 = dictionary;
              if (v28)
              {
                [dictionary setObject:v28 forKeyedSubscript:v81];
              }

              if (v30)
              {
                [v32 setObject:v30 forKeyedSubscript:v80];
              }
            }

            else
            {
              v32 = 0;
            }
          }

          else
          {
            [v19 naturalSize];
            width = v33;
            height = v34;
            v32 = 0;
          }

          v35 = MEMORY[0x1E695DF90];
          v36 = [MEMORY[0x1E696AD98] numberWithDouble:width];
          v37 = [MEMORY[0x1E696AD98] numberWithDouble:height];
          v38 = [v35 dictionaryWithObjectsAndKeys:{v103, v102, v36, v101, v37, v100, 0}];

          if (v32)
          {
            [v38 setObject:v32 forKeyedSubscript:v98];
          }

          v39 = MEMORY[0x1E6987EE0];
          mediaType = [v19 mediaType];
          v41 = [v39 assetWriterInputWithMediaType:mediaType outputSettings:v38];

          if (v19)
          {
            [v19 preferredTransform];
          }

          else
          {
            v115 = 0u;
            v116 = 0u;
            *formatDescriptionOut = 0u;
          }

          [v41 setTransform:formatDescriptionOut];
          if ([(AVAssetReader *)selfCopy->assetReader canAddOutput:v21]&& [(AVAssetWriter *)selfCopy->assetWriter canAddInput:v41])
          {
            [(AVAssetReader *)selfCopy->assetReader addOutput:v21];
            [(AVAssetWriter *)selfCopy->assetWriter addInput:v41];
            v42 = 1;
            v43 = [[PFRWSampleBufferChannel alloc] initWithAssetReaderOutput:v21 assetWriterInput:v41 useAdaptor:1];
            [v94 addObject:v43];
          }

          else
          {
            v99 = 0;
            v42 = 0;
          }

          v17 = v108;
          if (!v42)
          {
            break;
          }

          if (v107 == ++v18)
          {
            v107 = [v108 countByEnumeratingWithState:&v117 objects:v133 count:16];
            if (v107)
            {
              goto LABEL_7;
            }

            break;
          }
        }

        if ((v99 & 1) == 0)
        {
          v44 = 0;
          outputURL = v77;
          asset = v78;
          v13 = v76;
          goto LABEL_61;
        }
      }

      else
      {
      }

      timescale = selfCopy->_stillImagetime.timescale;
      v110 = 0u;
      v111 = 0u;
      v112 = 0u;
      v113 = 0u;
      v48 = tracks;
      v49 = [v48 countByEnumeratingWithState:&v110 objects:v126 count:16];
      if (v49)
      {
        v50 = v49;
        v51 = *v111;
        v52 = *MEMORY[0x1E69875D0];
        while (2)
        {
          for (i = 0; i != v50; ++i)
          {
            if (*v111 != v51)
            {
              objc_enumerationMutation(v48);
            }

            v54 = *(*(&v110 + 1) + 8 * i);
            if (([v17 containsObject:v54] & 1) == 0)
            {
              if ((timescale & 1) == 0 || ([v54 mediaType], v55 = objc_claimAutoreleasedReturnValue(), v56 = objc_msgSend(v55, "isEqualToString:", v52), v55, (v56 & 1) == 0))
              {
                v57 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:v54 outputSettings:0];
                v58 = MEMORY[0x1E6987EE0];
                mediaType2 = [v54 mediaType];
                v60 = [v58 assetWriterInputWithMediaType:mediaType2 outputSettings:0];

                if (![(AVAssetReader *)selfCopy->assetReader canAddOutput:v57]|| ![(AVAssetWriter *)selfCopy->assetWriter canAddInput:v60])
                {

                  v44 = 0;
                  outputURL = v77;
                  asset = v78;
                  v13 = v76;
                  v17 = v108;
                  goto LABEL_61;
                }

                [(AVAssetReader *)selfCopy->assetReader addOutput:v57];
                [(AVAssetWriter *)selfCopy->assetWriter addInput:v60];
                v61 = [[PFRWSampleBufferChannel alloc] initWithAssetReaderOutput:v57 assetWriterInput:v60 useAdaptor:0];
                [v97 addObject:v61];

                v17 = v108;
              }
            }
          }

          v50 = [v48 countByEnumeratingWithState:&v110 objects:v126 count:16];
          if (v50)
          {
            continue;
          }

          break;
        }
      }

      outputURL = v77;
      asset = v78;
      v13 = v76;
      if (timescale)
      {
        formatDescriptionOut[0] = 0;
        v62 = *MEMORY[0x1E6960338];
        v123[0] = *MEMORY[0x1E6960348];
        v123[1] = v62;
        v63 = *MEMORY[0x1E6960288];
        v124[0] = *MEMORY[0x1E69629E0];
        v124[1] = v63;
        v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v124 forKeys:v123 count:2];
        v125 = v64;
        v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v125 count:1];

        CMMetadataFormatDescriptionCreateWithMetadataSpecifications(*MEMORY[0x1E695E480], 0x6D656278u, v65, formatDescriptionOut);
        v66 = objc_alloc(MEMORY[0x1E6987EE0]);
        v67 = [v66 initWithMediaType:*MEMORY[0x1E69875D0] outputSettings:0 sourceFormatHint:formatDescriptionOut[0]];
        if (![(AVAssetWriter *)selfCopy->assetWriter canAddInput:v67])
        {
          metadataInput = selfCopy->_metadataInput;
          selfCopy->_metadataInput = v67;

          v44 = 0;
          goto LABEL_61;
        }

        [(AVAssetWriter *)selfCopy->assetWriter addInput:v67];
        v68 = selfCopy->_metadataInput;
        selfCopy->_metadataInput = v67;
      }

      v69 = [v94 copy];
      videoChannels = selfCopy->videoChannels;
      selfCopy->videoChannels = v69;

      v71 = [v97 copy];
      passthroughChannels = selfCopy->passthroughChannels;
      selfCopy->passthroughChannels = v71;

      v44 = 1;
LABEL_61:

      goto LABEL_64;
    }

    if (error)
    {
      v46 = v13;
      v44 = 0;
      *error = v13;
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    if (error)
    {
      v45 = v8;
      v44 = 0;
      *error = v8;
    }

    else
    {
      v44 = 0;
    }

    v13 = v8;
  }

LABEL_64:

  return v44;
}

- (void)_didLoadAVAssetValues
{
  if (!self->cancelled)
  {
    asset = [(PFAVReaderWriter *)self asset];
    outputURL = [(PFAVReaderWriter *)self outputURL];
    v27 = 0;
    v5 = [asset statusOfValueForKey:@"tracks" error:&v27];
    v6 = v27;
    v7 = v6;
    if (v5 == 2)
    {
      v26 = v6;
      v8 = [asset statusOfValueForKey:@"duration" error:&v26];
      v9 = v26;

      if (v8 == 2)
      {
        v25 = v9;
        v10 = [asset statusOfValueForKey:@"metadata" error:&v25];
        v7 = v25;

        if (v10 == 2)
        {
          if (asset)
          {
            [asset duration];
          }

          else
          {
            memset(&duration, 0, sizeof(duration));
          }

          start = **&MEMORY[0x1E6960CC0];
          CMTimeRangeMake(&v24, &start, &duration);
          [(PFAVReaderWriter *)self setTimeRange:&v24];
          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          path = [outputURL path];
          if (([defaultManager fileExistsAtPath:path] & 1) == 0)
          {

LABEL_16:
            v15 = v7;
            v20 = v7;
            v16 = [(PFAVReaderWriter *)self setUpReaderAndWriterReturningError:&v20];
            v7 = v20;

            if (v16)
            {
              v19 = v7;
              v17 = [(PFAVReaderWriter *)self startReadingAndWritingReturningError:&v19];
              v18 = v19;

              v7 = v18;
              if (v17)
              {
                goto LABEL_9;
              }
            }

            goto LABEL_8;
          }

          v21 = v7;
          v13 = [defaultManager removeItemAtPath:path error:&v21];
          v14 = v21;

          v7 = v14;
          if (v13)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        v7 = v9;
      }
    }

LABEL_8:
    [(PFAVReaderWriter *)self readingAndWritingDidFinishSuccessfully:0 withError:v7];
LABEL_9:
  }
}

- (void)writeToURL:(id)l progress:(id)progress completion:(id)completion
{
  v36[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  progressCopy = progress;
  completionCopy = completion;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PFAVReaderWriter_writeToURL_progress_completion___block_invoke;
  block[3] = &unk_1E7B66DC0;
  block[4] = self;
  block[5] = &v29;
  dispatch_sync(isolationQueue, block);
  if (v30[3])
  {
    if (lCopy && ([lCopy isFileURL] & 1) != 0)
    {
      v12 = self->_isolationQueue;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __51__PFAVReaderWriter_writeToURL_progress_completion___block_invoke_2;
      v27[3] = &unk_1E7B66D20;
      v27[4] = self;
      dispatch_sync(v12, v27);
      [(PFAVReaderWriter *)self setOutputURL:lCopy];
      asset = [(PFAVReaderWriter *)self asset];
      v14 = [completionCopy copy];
      completionBlock = self->_completionBlock;
      self->_completionBlock = v14;

      v16 = [progressCopy copy];
      progressBlock = self->_progressBlock;
      self->_progressBlock = v16;

      objc_initWeak(&location, self);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __51__PFAVReaderWriter_writeToURL_progress_completion___block_invoke_3;
      v24[3] = &unk_1E7B66790;
      v24[4] = self;
      objc_copyWeak(&v25, &location);
      [asset loadValuesAsynchronouslyForKeys:&unk_1F2AAB848 completionHandler:v24];
      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
    }

    else if (completionCopy)
    {
      v21 = MEMORY[0x1E696ABC0];
      v33 = *MEMORY[0x1E696A578];
      v34 = @"PFAVReaderWriter: output file URL must be provided";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v23 = [v21 errorWithDomain:@"PFAVReaderWriterErrorDomain" code:2 userInfo:v22];

      (*(completionCopy + 2))(completionCopy, 0, v23);
    }
  }

  else if (completionCopy)
  {
    v18 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A578];
    v36[0] = @"PFAVReaderWriter: multiple simultaneous writes not supported";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v20 = [v18 errorWithDomain:@"PFAVReaderWriterErrorDomain" code:1 userInfo:v19];

    (*(completionCopy + 2))(completionCopy, 0, v20);
  }

  _Block_object_dispose(&v29, 8);
}

void __51__PFAVReaderWriter_writeToURL_progress_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PFAVReaderWriter_writeToURL_progress_completion___block_invoke_4;
  block[3] = &unk_1E7B654C8;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void __51__PFAVReaderWriter_writeToURL_progress_completion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didLoadAVAssetValues];
}

- (PFAVReaderWriter)initWithAsset:(id)asset stillImageTime:(id *)time
{
  assetCopy = asset;
  v16.receiver = self;
  v16.super_class = PFAVReaderWriter;
  v7 = [(PFAVReaderWriter *)&v16 init];
  if (v7)
  {
    v8 = [assetCopy copy];
    v9 = *(v7 + 15);
    *(v7 + 15) = v8;

    v10 = *&time->var0;
    *(v7 + 100) = time->var3;
    *(v7 + 84) = v10;
    v11 = dispatch_queue_create("com.apple.PFAVReaderWriter.serializationQueue", 0);
    v12 = *(v7 + 1);
    *(v7 + 1) = v11;

    v13 = dispatch_queue_create("com.apple.PFAVReaderWriter.isolationQueue", 0);
    v14 = *(v7 + 2);
    *(v7 + 2) = v13;
  }

  return v7;
}

- (PFAVReaderWriter)initWithAsset:(id)asset
{
  v4 = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  return [(PFAVReaderWriter *)self initWithAsset:0 stillImageTime:&v4];
}

@end