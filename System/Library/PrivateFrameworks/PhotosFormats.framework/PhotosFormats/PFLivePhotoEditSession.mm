@interface PFLivePhotoEditSession
+ (id)_createTemporaryDirectory;
+ (id)temporaryDirectory;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_inputVideoDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_loadInputVideoDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration;
- (CGAffineTransform)_inputVideoTransform;
- (CGSize)_inputImageSize;
- (CGSize)_inputVideoSize;
- (CGSize)_outputImageSize;
- (CGSize)_outputVideoSize;
- (CGSize)_outputVideoSizeForScale:(double)scale;
- (CGSize)outputImageSize;
- (CGSize)outputVideoSize;
- (CIImage)inputImage;
- (PFLivePhotoEditSession)initWithPhotoURL:(id)l videoURL:(id)rL photoTime:(id *)time photoOrientation:(unsigned int)orientation;
- (double)_inputVideoScale;
- (double)_targetScaleForTargetSize:(CGSize)size;
- (id)_inputImage;
- (id)_inputImageProperties;
- (id)_inputVideoTrack;
- (id)_loadInputImageProperties;
- (id)_loadInputImageWithSubsampleFactor:(int64_t)factor;
- (id)_outputImage;
- (id)_outputImageProperties;
- (id)_outputVideoMetadata;
- (id)_processImage:(id)image scale:(double)scale error:(id *)error;
- (id)_scaledInputImageForTargetScale:(double)scale;
- (id)_temporaryURLOfType:(id)type;
- (id)_videoCompositionForTargetSize:(CGSize)size;
- (id)frameProcessor;
- (id)imageProperties;
- (id)inputImageForRenderScale:(double)scale;
- (id)outputImage;
- (unsigned)_inputOrientation;
- (unsigned)_loadInputImageOrientation;
- (unsigned)orientation;
- (void)_cancelCurrentExportIfNeeded;
- (void)_exportToDestination:(id)destination options:(id)options completionHandler:(id)handler;
- (void)_prepareForPlaybackWithTargetSize:(CGSize)size options:(id)options completionHandler:(id)handler;
- (void)_renderImageToURL:(id)l fileType:(id)type targetSize:(CGSize)size completionHandler:(id)handler;
- (void)_renderImageWithTargetSize:(CGSize)size completionHandler:(id)handler;
- (void)_renderVideoToURL:(id)l fileType:(id)type targetSize:(CGSize)size volume:(float)volume completionHandler:(id)handler;
- (void)cancel;
- (void)dealloc;
- (void)exportToDestination:(id)destination options:(id)options completionHandler:(id)handler;
- (void)prepareForPlaybackWithTargetSize:(CGSize)size options:(id)options completionHandler:(id)handler;
- (void)setFrameProcessor:(id)processor;
@end

@implementation PFLivePhotoEditSession

- (void)cancel
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__PFLivePhotoEditSession_cancel__block_invoke;
  block[3] = &unk_1E7B66D20;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

- (void)_exportToDestination:(id)destination options:(id)options completionHandler:(id)handler
{
  destinationCopy = destination;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = dispatch_group_create();
  self->_isExporting = 1;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  uniqueIdentifier = self->_uniqueIdentifier;
  self->_uniqueIdentifier = uUIDString;

  dispatch_group_enter(v11);
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v47 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = __Block_byref_object_copy__80;
  v44[4] = __Block_byref_object_dispose__81;
  v45 = 0;
  photoURL = [destinationCopy photoURL];
  identifier = [*MEMORY[0x1E6982E58] identifier];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __73__PFLivePhotoEditSession__exportToDestination_options_completionHandler___block_invoke;
  v40[3] = &unk_1E7B64F70;
  v42 = v46;
  v43 = v44;
  v17 = v11;
  v41 = v17;
  v18 = *MEMORY[0x1E695F060];
  v19 = *(MEMORY[0x1E695F060] + 8);
  [(PFLivePhotoEditSession *)self _renderImageToURL:photoURL fileType:identifier targetSize:v40 completionHandler:*MEMORY[0x1E695F060], v19];

  dispatch_group_enter(v17);
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v39 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__80;
  v36[4] = __Block_byref_object_dispose__81;
  v37 = 0;
  videoURL = [destinationCopy videoURL];
  v21 = *MEMORY[0x1E69874C0];
  audioVolume = self->_audioVolume;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __73__PFLivePhotoEditSession__exportToDestination_options_completionHandler___block_invoke_2;
  v32[3] = &unk_1E7B64F70;
  v34 = v38;
  v35 = v36;
  v23 = v17;
  v33 = v23;
  *&v24 = audioVolume;
  [(PFLivePhotoEditSession *)self _renderVideoToURL:videoURL fileType:v21 targetSize:v32 volume:v18 completionHandler:v19, v24];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PFLivePhotoEditSession__exportToDestination_options_completionHandler___block_invoke_3;
  block[3] = &unk_1E7B64F98;
  v28 = v46;
  v29 = v38;
  v30 = v44;
  v31 = v36;
  block[4] = self;
  v27 = handlerCopy;
  v25 = handlerCopy;
  dispatch_group_notify(v23, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);

  _Block_object_dispose(v44, 8);
  _Block_object_dispose(v46, 8);
}

void __73__PFLivePhotoEditSession__exportToDestination_options_completionHandler___block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

void __73__PFLivePhotoEditSession__exportToDestination_options_completionHandler___block_invoke_2(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

void __73__PFLivePhotoEditSession__exportToDestination_options_completionHandler___block_invoke_3(void *a1)
{
  v2 = *(*(a1[8] + 8) + 40);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = *(*(a1[9] + 8) + 40);
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  v4 = [v3 domain];
  if ([v4 isEqualToString:@"com.apple.PhotosFormats"])
  {
    v5 = [v3 code];

    if (v5 == 3)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

LABEL_8:
  v6 = a1[4];
  v7 = *(v6 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PFLivePhotoEditSession__exportToDestination_options_completionHandler___block_invoke_4;
  block[3] = &unk_1E7B66D20;
  block[4] = v6;
  dispatch_sync(v7, block);
LABEL_9:
  (*(a1[5] + 16))();
}

void __73__PFLivePhotoEditSession__exportToDestination_options_completionHandler___block_invoke_4(uint64_t a1)
{
  *(*(a1 + 32) + 216) = 0;
  v1 = *(a1 + 32);
  v2 = *(v1 + 112);
  *(v1 + 112) = 0;
}

- (void)exportToDestination:(id)destination options:(id)options completionHandler:(id)handler
{
  destinationCopy = destination;
  optionsCopy = options;
  handlerCopy = handler;
  stateQueue = self->_stateQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__PFLivePhotoEditSession_exportToDestination_options_completionHandler___block_invoke;
  v15[3] = &unk_1E7B64F48;
  v15[4] = self;
  v16 = destinationCopy;
  v17 = optionsCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = optionsCopy;
  v14 = destinationCopy;
  dispatch_async(stateQueue, v15);
}

uint64_t __72__PFLivePhotoEditSession_exportToDestination_options_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelCurrentExportIfNeeded];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 _exportToDestination:v3 options:v4 completionHandler:v5];
}

- (id)_temporaryURLOfType:(id)type
{
  v3 = [MEMORY[0x1E6982C40] typeWithIdentifier:type];
  preferredFilenameExtension = [v3 preferredFilenameExtension];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v7 = [uUIDString stringByAppendingPathExtension:preferredFilenameExtension];

  temporaryDirectory = [objc_opt_class() temporaryDirectory];
  v9 = [temporaryDirectory stringByAppendingPathComponent:v7];
  v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9];

  return v10;
}

- (id)_outputVideoMetadata
{
  metadata = [(AVAsset *)self->_videoAsset metadata];
  v4 = [metadata mutableCopy];

  v5 = [v4 indexOfObjectPassingTest:&__block_literal_global_4014];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 removeObjectAtIndex:v5];
  }

  metadataItem = [MEMORY[0x1E6988050] metadataItem];
  [metadataItem setIdentifier:*MEMORY[0x1E6987798]];
  [metadataItem setValue:self->_uniqueIdentifier];
  [v4 addObject:metadataItem];

  return v4;
}

uint64_t __46__PFLivePhotoEditSession__outputVideoMetadata__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqual:*MEMORY[0x1E6987798]];

  return v3;
}

- (void)_renderVideoToURL:(id)l fileType:(id)type targetSize:(CGSize)size volume:(float)volume completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v66 = *MEMORY[0x1E69E9840];
  lCopy = l;
  typeCopy = type;
  handlerCopy = handler;
  v16 = self->_videoAsset;
  if (volume > 0.0)
  {
LABEL_14:
    v27 = objc_alloc(MEMORY[0x1E6987E60]);
    v28 = [v27 initWithAsset:v16 presetName:*MEMORY[0x1E69872E0]];
    [v28 setOutputURL:lCopy];
    [v28 setOutputFileType:typeCopy];
    height = [(PFLivePhotoEditSession *)self _videoCompositionForTargetSize:width, height];
    [v28 setVideoComposition:height];
    _outputVideoMetadata = [(PFLivePhotoEditSession *)self _outputVideoMetadata];
    [v28 setMetadata:_outputVideoMetadata];

    if (volume > 0.0 && volume < 1.0)
    {
      v44 = lCopy;
      v46 = height;
      v43 = handlerCopy;
      audioMix = [MEMORY[0x1E6988038] audioMix];
      array = [MEMORY[0x1E695DF70] array];
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v42 = v16;
      v31 = [PFMediaUtilities tracksWithMediaType:*MEMORY[0x1E69875A0] forAsset:v16];
      v32 = [v31 countByEnumeratingWithState:&v52 objects:v63 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v53;
        v48 = *MEMORY[0x1E6960CC0];
        v35 = *(MEMORY[0x1E6960CC0] + 16);
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v53 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v37 = [MEMORY[0x1E6988040] audioMixInputParametersWithTrack:*(*(&v52 + 1) + 8 * i)];
            *&v38 = self->_audioVolume;
            *&v65.start.value = v48;
            v65.start.epoch = v35;
            [v37 setVolume:&v65 atTime:v38];
            [array addObject:v37];
          }

          v33 = [v31 countByEnumeratingWithState:&v52 objects:v63 count:16];
        }

        while (v33);
      }

      [audioMix setInputParameters:array];
      [v28 setAudioMix:audioMix];

      lCopy = v44;
      v16 = v42;
      handlerCopy = v43;
      height = v46;
    }

    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __89__PFLivePhotoEditSession__renderVideoToURL_fileType_targetSize_volume_completionHandler___block_invoke;
    v49[3] = &unk_1E7B668D0;
    v39 = v28;
    v50 = v39;
    v51 = handlerCopy;
    [(AVAssetExportSession *)v39 exportAsynchronouslyWithCompletionHandler:v49];
    exportSession = self->_exportSession;
    self->_exportSession = v39;
    composition = v39;

    goto LABEL_28;
  }

  composition = [MEMORY[0x1E6988048] composition];
  if (v16)
  {
    [(AVAsset *)v16 duration];
  }

  else
  {
    memset(&duration, 0, sizeof(duration));
  }

  start = **&MEMORY[0x1E6960CC0];
  v47 = *&start.value;
  epoch = start.epoch;
  CMTimeRangeMake(&v65, &start, &duration);
  v60 = 0;
  *&duration.value = v47;
  duration.epoch = epoch;
  v19 = [PFMediaUtilities insertTimeRange:&v65 ofAsset:v16 atTime:&duration intoMutableComposition:composition error:&v60];
  v20 = v60;
  height = v20;
  if (v19)
  {
    v45 = v20;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v22 = [(AVAssetExportSession *)composition tracksWithMediaType:*MEMORY[0x1E69875A0]];
    v23 = [v22 countByEnumeratingWithState:&v56 objects:v64 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v57;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v57 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [(AVAssetExportSession *)composition removeTrack:*(*(&v56 + 1) + 8 * j)];
        }

        v24 = [v22 countByEnumeratingWithState:&v56 objects:v64 count:16];
      }

      while (v24);
    }

    v16 = composition;
    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LODWORD(v65.start.value) = 138412546;
    *(&v65.start.value + 4) = v16;
    LOWORD(v65.start.flags) = 2112;
    *(&v65.start.flags + 2) = height;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failed to insert tracks of asset: %@, error: %@", &v65, 0x16u);
  }

  (*(handlerCopy + 2))(handlerCopy, 0, height);
LABEL_28:
}

void __89__PFLivePhotoEditSession__renderVideoToURL_fileType_targetSize_volume_completionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) status] == 3)
  {
    goto LABEL_2;
  }

  v3 = [*(a1 + 32) status];
  v4 = *(a1 + 32);
  if (v3 == 4)
  {
    v5 = [v4 error];
  }

  else
  {
    if ([v4 status] != 5)
    {
LABEL_2:
      v2 = 0;
      goto LABEL_8;
    }

    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.PhotosFormats" code:3 userInfo:0];
  }

  v2 = v5;
LABEL_8:
  v6 = v2;
  (*(*(a1 + 40) + 16))();
}

- (id)_outputImageProperties
{
  _inputImageProperties = [(PFLivePhotoEditSession *)self _inputImageProperties];
  v4 = [_inputImageProperties mutableCopy];

  v5 = *MEMORY[0x1E696DE30];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];
  v7 = [v6 mutableCopy];

  [v7 setObject:self->_uniqueIdentifier forKeyedSubscript:*MEMORY[0x1E69867A8]];
  [v4 setObject:v7 forKeyedSubscript:v5];
  [v4 setObject:&unk_1F2AAB3B0 forKeyedSubscript:*MEMORY[0x1E696DE78]];
  v8 = *MEMORY[0x1E696DF28];
  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696DF28]];
  v10 = [v9 mutableCopy];

  [v10 setObject:&unk_1F2AAB3B0 forKeyedSubscript:*MEMORY[0x1E696DF58]];
  [v4 setObject:v10 forKeyedSubscript:v8];

  return v4;
}

- (double)_targetScaleForTargetSize:(CGSize)size
{
  if (size.width <= 0.0)
  {
    return 1.0;
  }

  height = size.height;
  if (size.height <= 0.0)
  {
    return 1.0;
  }

  width = size.width;
  [(PFLivePhotoEditSession *)self _outputImageSize];
  if (v5 <= 0.0 || v6 <= 0.0)
  {
    return 1.0;
  }

  else
  {
    return fmin(width / v5, height / v6);
  }
}

- (void)_renderImageWithTargetSize:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  [(PFLivePhotoEditSession *)self _targetScaleForTargetSize:width, height];
  v9 = v8;
  v10 = [(PFLivePhotoEditSession *)self _scaledInputImageForTargetScale:?];
  v18 = 0;
  v11 = [(PFLivePhotoEditSession *)self _processImage:v10 scale:&v18 error:v9];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    renderQueue = self->_renderQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__PFLivePhotoEditSession__renderImageWithTargetSize_completionHandler___block_invoke;
    block[3] = &unk_1E7B661F0;
    block[4] = self;
    v16 = v11;
    v17 = handlerCopy;
    dispatch_async(renderQueue, block);
  }

  else
  {
    NSLog(&cfstr_FailedToProces_0.isa, v10, v12);
    (*(handlerCopy + 2))(handlerCopy, 0, v13);
  }
}

void __71__PFLivePhotoEditSession__renderImageWithTargetSize_completionHandler___block_invoke(void *a1)
{
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
  v3 = a1[5];
  v4 = *(a1[4] + 104);
  [v3 extent];
  v5 = [v4 createCGImage:v3 fromRect:*MEMORY[0x1E695F8A0] format:v2 colorSpace:?];
  CGColorSpaceRelease(v2);
  if (!v5)
  {
    NSLog(&cfstr_FailedToRender.isa, a1[5]);
    v6 = a1[6];
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.PhotosFormats" code:6 userInfo:0];
    (*(v6 + 16))(v6, 0, v7);
  }

  (*(a1[6] + 16))();

  CGImageRelease(v5);
}

- (void)_renderImageToURL:(id)l fileType:(id)type targetSize:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  lCopy = l;
  typeCopy = type;
  handlerCopy = handler;
  _outputImageProperties = [(PFLivePhotoEditSession *)self _outputImageProperties];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __82__PFLivePhotoEditSession__renderImageToURL_fileType_targetSize_completionHandler___block_invoke;
  v19[3] = &unk_1E7B64F00;
  v20 = lCopy;
  v21 = typeCopy;
  v22 = _outputImageProperties;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = _outputImageProperties;
  v17 = typeCopy;
  v18 = lCopy;
  [(PFLivePhotoEditSession *)self _renderImageWithTargetSize:v19 completionHandler:width, height];
}

void __82__PFLivePhotoEditSession__renderImageToURL_fileType_targetSize_completionHandler___block_invoke(uint64_t a1, CGImage *a2, void *a3)
{
  v9 = a3;
  if (a2)
  {
    v5 = CGImageDestinationCreateWithURL(*(a1 + 32), *(a1 + 40), 1uLL, 0);
    if (v5)
    {
      v6 = v5;
      CGImageDestinationAddImage(v5, a2, *(a1 + 48));
      if (CGImageDestinationFinalize(v6))
      {
        (*(*(a1 + 56) + 16))();
      }

      else
      {
        v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.PhotosFormats" code:5 userInfo:0];
        (*(*(a1 + 56) + 16))();
      }

      CFRelease(v6);
    }

    else
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.PhotosFormats" code:4 userInfo:0];
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (void)_prepareForPlaybackWithTargetSize:(CGSize)size options:(id)options completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = dispatch_group_create();
  v12 = [optionsCopy objectForKeyedSubscript:@"LivePhotoShouldRenderAtPlaybackTime"];
  bOOLValue = [v12 BOOLValue];

  if (bOOLValue)
  {
    _canRenderAtPlaybackTime = [(PFLivePhotoEditSession *)self _canRenderAtPlaybackTime];
  }

  else
  {
    _canRenderAtPlaybackTime = 0;
  }

  self->_isExporting = 1;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  uniqueIdentifier = self->_uniqueIdentifier;
  self->_uniqueIdentifier = uUIDString;

  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x3032000000;
  v56[3] = __Block_byref_object_copy__80;
  v56[4] = __Block_byref_object_dispose__81;
  v57 = 0;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2020000000;
  v55[3] = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__80;
  v53 = __Block_byref_object_dispose__81;
  v54 = 0;
  audioVolume = self->_audioVolume;
  v47 = *&self->_photoTime.value;
  epoch = self->_photoTime.epoch;
  dispatch_group_enter(v11);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __86__PFLivePhotoEditSession__prepareForPlaybackWithTargetSize_options_completionHandler___block_invoke;
  v43[3] = &unk_1E7B64E38;
  v45 = v55;
  v46 = v56;
  v19 = v11;
  v44 = v19;
  [(PFLivePhotoEditSession *)self _renderImageWithTargetSize:v43 completionHandler:width, height];
  if (_canRenderAtPlaybackTime)
  {
    objc_storeStrong(v50 + 5, self->_videoAsset);
    height = [(PFLivePhotoEditSession *)self _videoCompositionForTargetSize:width, height];
  }

  else
  {
    dispatch_group_enter(v19);
    v21 = *MEMORY[0x1E69874C0];
    v22 = [(PFLivePhotoEditSession *)self _temporaryURLOfType:*MEMORY[0x1E69874C0]];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __86__PFLivePhotoEditSession__prepareForPlaybackWithTargetSize_options_completionHandler___block_invoke_2;
    v37[3] = &unk_1E7B64EB0;
    v41 = &v49;
    v23 = v22;
    v38 = v23;
    v42 = v56;
    v39 = v19;
    selfCopy = self;
    LODWORD(v24) = 1.0;
    [(PFLivePhotoEditSession *)self _renderVideoToURL:v23 fileType:v21 targetSize:v37 volume:width completionHandler:height, v24];

    height = 0;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __86__PFLivePhotoEditSession__prepareForPlaybackWithTargetSize_options_completionHandler___block_invoke_107;
  v27[3] = &unk_1E7B64ED8;
  v32 = v55;
  v33 = &v49;
  v34 = v47;
  v35 = epoch;
  v36 = audioVolume;
  v28 = height;
  selfCopy2 = self;
  v30 = handlerCopy;
  v31 = v56;
  v25 = handlerCopy;
  v26 = height;
  dispatch_group_notify(v19, MEMORY[0x1E69E96A0], v27);

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(v55, 8);
  _Block_object_dispose(v56, 8);
}

void __86__PFLivePhotoEditSession__prepareForPlaybackWithTargetSize_options_completionHandler___block_invoke(uint64_t a1, CGImage *a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = CGImageRetain(a2);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __86__PFLivePhotoEditSession__prepareForPlaybackWithTargetSize_options_completionHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a2)
  {
    v7 = [MEMORY[0x1E6987E28] assetWithURL:*(a1 + 32)];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    dispatch_group_enter(*(a1 + 40));
    v10 = *(*(*(a1 + 56) + 8) + 40);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __86__PFLivePhotoEditSession__prepareForPlaybackWithTargetSize_options_completionHandler___block_invoke_3;
    v30[3] = &unk_1E7B64E60;
    v31 = &unk_1F2AAB8F0;
    v33 = *(a1 + 56);
    v32 = *(a1 + 40);
    [v10 loadValuesAsynchronouslyForKeys:&unk_1F2AAB8F0 completionHandler:v30];
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__80;
    v28 = __Block_byref_object_dispose__81;
    v29 = 0;
    v11 = *(a1 + 48);
    v12 = *(v11 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__PFLivePhotoEditSession__prepareForPlaybackWithTargetSize_options_completionHandler___block_invoke_4;
    block[3] = &unk_1E7B64E88;
    v23 = &v24;
    block[4] = v11;
    v22 = *(a1 + 32);
    dispatch_sync(v12, block);
    if (v25[5])
    {
      v13 = [MEMORY[0x1E696AC08] defaultManager];
      v14 = v25[5];
      v20 = 0;
      v15 = [v13 removeItemAtURL:v14 error:&v20];
      v16 = v20;

      if ((v15 & 1) == 0)
      {
        v17 = MEMORY[0x1E69E9C10];
        v18 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v19 = [v25[5] path];
          *buf = 138412290;
          v35 = v19;
          _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to delete temporary file: %@", buf, 0xCu);
        }
      }
    }

    _Block_object_dispose(&v24, 8);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __86__PFLivePhotoEditSession__prepareForPlaybackWithTargetSize_options_completionHandler___block_invoke_107(uint64_t a1)
{
  v2 = *(*(*(a1 + 56) + 8) + 40);
  if (v2)
  {
    v3 = [v2 domain];
    if ([v3 isEqualToString:@"com.apple.PhotosFormats"])
    {
      v4 = [*(*(*(a1 + 56) + 8) + 40) code] == 3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *(*(*(a1 + 64) + 8) + 24);
  if (v5 && *(*(*(a1 + 72) + 8) + 40) != 0 && !v4)
  {
    v7 = objc_alloc_init(PFLivePhotoPlaybackResult);
    [(PFLivePhotoPlaybackResult *)v7 setVideoAsset:*(*(*(a1 + 72) + 8) + 40)];
    [(PFLivePhotoPlaybackResult *)v7 setPhoto:*(*(*(a1 + 64) + 8) + 24)];
    v12 = *(a1 + 80);
    v13 = *(a1 + 96);
    [(PFLivePhotoPlaybackResult *)v7 setPhotoTime:&v12];
    [(PFLivePhotoPlaybackResult *)v7 setPhotoExifOrientation:1];
    v6 = objc_alloc_init(PFLivePhotoPlaybackSettings);
    [(PFLivePhotoPlaybackSettings *)v6 setVideoComposition:*(a1 + 32)];
    LODWORD(v8) = *(a1 + 104);
    [(PFLivePhotoPlaybackSettings *)v6 setAudioVolume:v8];
    v5 = *(*(*(a1 + 64) + 8) + 24);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  CGImageRelease(v5);
  if (!v4)
  {
    v9 = *(a1 + 40);
    v10 = *(v9 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__PFLivePhotoEditSession__prepareForPlaybackWithTargetSize_options_completionHandler___block_invoke_2_110;
    block[3] = &unk_1E7B66D20;
    block[4] = v9;
    dispatch_sync(v10, block);
  }

  (*(*(a1 + 48) + 16))();
}

void __86__PFLivePhotoEditSession__prepareForPlaybackWithTargetSize_options_completionHandler___block_invoke_2_110(uint64_t a1)
{
  *(*(a1 + 32) + 216) = 0;
  v1 = *(a1 + 32);
  v2 = *(v1 + 112);
  *(v1 + 112) = 0;
}

void __86__PFLivePhotoEditSession__prepareForPlaybackWithTargetSize_options_completionHandler___block_invoke_3(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = *(*(*(a1 + 48) + 8) + 40);
        v16 = 0;
        v9 = [v8 statusOfValueForKey:v7 error:&v16];
        v10 = v16;
        v11 = v10;
        if (v9 == 3)
        {
          v12 = *(*(a1 + 48) + 8);
          v13 = *(v12 + 40);
          *(v12 + 40) = 0;

          v14 = *(*(a1 + 56) + 8);
          v15 = *(v14 + 40);
          *(v14 + 40) = v11;

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  dispatch_group_leave(*(a1 + 40));
}

void __86__PFLivePhotoEditSession__prepareForPlaybackWithTargetSize_options_completionHandler___block_invoke_4(void *a1)
{
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 200));
  v2 = a1[5];
  v3 = (a1[4] + 200);

  objc_storeStrong(v3, v2);
}

- (void)_cancelCurrentExportIfNeeded
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_isExporting)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      outputURL = [(AVAssetExportSession *)self->_exportSession outputURL];
      path = [outputURL path];
      v6 = 138412290;
      v7 = path;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "aborting export session at path %@", &v6, 0xCu);
    }

    [(CIContext *)self->_renderContext abort];
    [(AVAssetExportSession *)self->_exportSession cancelExport];
    exportSession = self->_exportSession;
    self->_exportSession = 0;

    self->_isExporting = 0;
  }
}

- (void)prepareForPlaybackWithTargetSize:(CGSize)size options:(id)options completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  optionsCopy = options;
  handlerCopy = handler;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PFLivePhotoEditSession_prepareForPlaybackWithTargetSize_options_completionHandler___block_invoke;
  block[3] = &unk_1E7B64E10;
  v17 = width;
  v18 = height;
  block[4] = self;
  v15 = optionsCopy;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = optionsCopy;
  dispatch_async(stateQueue, block);
}

uint64_t __85__PFLivePhotoEditSession_prepareForPlaybackWithTargetSize_options_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelCurrentExportIfNeeded];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);

  return [v2 _prepareForPlaybackWithTargetSize:v3 options:v4 completionHandler:{v5, v6}];
}

- (id)_processImage:(id)image scale:(double)scale error:(id *)error
{
  imageCopy = image;
  v9 = objc_alloc_init(PFLivePhotoFrameProcessingRequest);
  v10 = [imageCopy imageByApplyingOrientation:{-[PFLivePhotoEditSession _inputOrientation](self, "_inputOrientation")}];

  [(PFLivePhotoFrameProcessingRequest *)v9 setImage:v10];
  photoTime = self->_photoTime;
  [(PFLivePhotoFrameProcessingRequest *)v9 setTime:&photoTime];
  [(PFLivePhotoFrameProcessingRequest *)v9 setRenderScale:scale];
  [(PFLivePhotoFrameProcessingRequest *)v9 setType:0];
  frameProcessor = self->_frameProcessor;
  if (frameProcessor)
  {
    frameProcessor[2](frameProcessor, v9, error);
  }

  else
  {
    [(PFLivePhotoFrameProcessingRequest *)v9 image];
  }
  v12 = ;

  return v12;
}

- (CGSize)_outputVideoSizeForScale:(double)scale
{
  [(PFLivePhotoEditSession *)self _inputVideoScale];
  v6 = v5;
  [(PFLivePhotoEditSession *)self _outputVideoSize];
  if (v6 > scale)
  {
    v7 = round(scale / v6 * v7);
    v8 = round(scale / v6 * v8);
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (id)_videoCompositionForTargetSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(PFLivePhotoEditSession *)self _inputVideoScale];
  v7 = v6;
  [(PFLivePhotoEditSession *)self _targetScaleForTargetSize:width, height];
  v9 = fmin(v7, v8);
  v10 = objc_alloc_init(PFLivePhotoFrameProcessingRequest);
  v11 = MEMORY[0x1B8C64C40](self->_frameProcessor);
  v12 = MEMORY[0x1E6988060];
  videoAsset = self->_videoAsset;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __57__PFLivePhotoEditSession__videoCompositionForTargetSize___block_invoke;
  v25[3] = &unk_1E7B64DE8;
  v29 = v9;
  v30 = v7;
  selfCopy = self;
  v28 = v11;
  v26 = v10;
  v14 = v11;
  v15 = v10;
  v16 = [v12 videoCompositionWithAsset:videoAsset applyingCIFiltersWithHandler:v25];
  [(PFLivePhotoEditSession *)self _outputVideoSizeForScale:v9];
  if (v18 > 0.0 && v17 > 0.0)
  {
    [v16 setRenderSize:?];
  }

  _inputVideoTrack = [(PFLivePhotoEditSession *)self _inputVideoTrack];
  [v16 setSourceTrackIDForFrameTiming:{objc_msgSend(_inputVideoTrack, "trackID")}];
  if (_inputVideoTrack)
  {
    [_inputVideoTrack minFrameDuration];
  }

  else
  {
    v23 = 0uLL;
    v24 = 0;
  }

  v21 = v23;
  v22 = v24;
  [v16 setFrameDuration:&v21];
  [v16 setColorPrimaries:*MEMORY[0x1E6987D18]];
  [v16 setColorTransferFunction:*MEMORY[0x1E6987DF8]];
  [v16 setColorYCbCrMatrix:*MEMORY[0x1E6987E18]];

  return v16;
}

void __57__PFLivePhotoEditSession__videoCompositionForTargetSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  if (v5 >= v6)
  {
    v8 = [v3 sourceImage];
    [*(a1 + 32) setImage:v8];
  }

  else
  {
    v7 = v5 / v6;
    v8 = [v3 sourceImage];
    CGAffineTransformMakeScale(&v31, v7, v7);
    v9 = [v8 imageByApplyingTransform:&v31];
    [*(a1 + 32) setImage:v9];
  }

  if (v4)
  {
    [v4 compositionTime];
  }

  else
  {
    v29 = 0uLL;
    v30 = 0.0;
  }

  v10 = *(a1 + 32);
  *&v31.a = v29;
  v31.c = v30;
  [v10 setTime:&v31];
  [*(a1 + 32) setRenderScale:*(a1 + 56)];
  [*(a1 + 32) setType:1];
  v11 = *(a1 + 48);
  v28 = 0;
  v12 = (*(v11 + 16))();
  v13 = 0;
  if (v12)
  {
    [v12 extent];
    if (v14 != *MEMORY[0x1E695EFF8] || v15 != *(MEMORY[0x1E695EFF8] + 8))
    {
      CGAffineTransformMakeTranslation(&v31, -v14, -v15);
      v17 = [v12 imageByApplyingTransform:&v31];

      v12 = v17;
    }

    v18 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
    v19 = [v12 imageByColorMatchingWorkingSpaceToColorSpace:v18];

    v20 = [v19 imageByApplyingFilter:@"CIColorClamp" withInputParameters:0];

    v21 = [v20 imageByColorMatchingColorSpaceToWorkingSpace:v18];

    CGColorSpaceRelease(v18);
    v22 = *(*(a1 + 40) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__PFLivePhotoEditSession__videoCompositionForTargetSize___block_invoke_2;
    block[3] = &unk_1E7B64DC0;
    v25 = v4;
    v26 = v21;
    v27 = *(a1 + 40);
    v23 = v21;
    dispatch_sync(v22, block);
  }

  else
  {
    [v4 finishWithError:v13];
  }
}

- (CGSize)_outputVideoSize
{
  [(PFLivePhotoEditSession *)self _outputImageSize];
  v4 = v3;
  v6 = v5;
  [(PFLivePhotoEditSession *)self _inputVideoScale];
  v8 = v7 * v4;
  v9 = v7 * v6;
  memset(&v14, 0, sizeof(v14));
  [(PFLivePhotoEditSession *)self _inputVideoTransform];
  v12 = v14;
  CGAffineTransformInvert(&v13, &v12);
  v10 = round((v9 * v13.d + v13.b * v8 + self->_inputVideoScaleRoundingError.height) * v14.c + v14.a * (v9 * v13.c + v13.a * v8 + self->_inputVideoScaleRoundingError.width));
  v11 = round(v9);
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)outputVideoSize
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v12 = 0;
  v13 = 0;
  v11 = &unk_1B36BE437;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__PFLivePhotoEditSession_outputVideoSize__block_invoke;
  v7[3] = &unk_1E7B66DC0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(stateQueue, v7);
  v3 = v9[4];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

uint64_t __41__PFLivePhotoEditSession_outputVideoSize__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _outputVideoSize];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (CGSize)_outputImageSize
{
  _outputImage = [(PFLivePhotoEditSession *)self _outputImage];
  v4 = _outputImage;
  if (_outputImage)
  {
    [_outputImage extent];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    [(PFLivePhotoEditSession *)self _inputImageSize];
    v6 = v9;
    v8 = v10;
  }

  v11 = v6;
  v12 = v8;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)outputImageSize
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v12 = 0;
  v13 = 0;
  v11 = &unk_1B36BE437;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__PFLivePhotoEditSession_outputImageSize__block_invoke;
  v7[3] = &unk_1E7B66DC0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(stateQueue, v7);
  v3 = v9[4];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

uint64_t __41__PFLivePhotoEditSession_outputImageSize__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _outputImageSize];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (id)_outputImage
{
  outputImage = self->_outputImage;
  if (!outputImage)
  {
    _inputImage = [(PFLivePhotoEditSession *)self _inputImage];
    if (_inputImage)
    {
      v9 = 0;
      v5 = [(PFLivePhotoEditSession *)self _processImage:_inputImage scale:&v9 error:1.0];
      v6 = v9;
      v7 = self->_outputImage;
      self->_outputImage = v5;

      if (!self->_outputImage)
      {
        NSLog(&cfstr_FailedToProces.isa, v6);
      }
    }

    outputImage = self->_outputImage;
  }

  return outputImage;
}

- (id)outputImage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__80;
  v10 = __Block_byref_object_dispose__81;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__PFLivePhotoEditSession_outputImage__block_invoke;
  v5[3] = &unk_1E7B66DC0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __37__PFLivePhotoEditSession_outputImage__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _outputImage];

  return MEMORY[0x1EEE66BB8]();
}

- (double)_inputVideoScale
{
  result = self->_inputVideoScale;
  if (result <= 0.0)
  {
    [(PFLivePhotoEditSession *)self _inputImageSize];
    v5 = v4;
    v7 = v6;
    [(PFLivePhotoEditSession *)self _inputVideoSize];
    v9 = v8 / v5;
    v11 = v10 / v7;
    v12 = -(v10 - v8 / v5 * v7);
    v13 = -(v8 - v11 * v5);
    v14 = fabs(v12);
    v15 = fabs(v13);
    v16 = v14 < v15;
    if (v14 >= v15)
    {
      result = v11;
    }

    else
    {
      result = v9;
    }

    v17 = 168;
    if (v16)
    {
      v17 = 176;
    }

    else
    {
      v12 = v13;
    }

    self->_inputVideoScale = result;
    *(&self->super.isa + v17) = v12;
  }

  return result;
}

- (CGAffineTransform)_inputVideoTransform
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  _inputVideoTrack = [(PFLivePhotoEditSession *)self _inputVideoTrack];
  if (_inputVideoTrack)
  {
    v6 = _inputVideoTrack;
    [_inputVideoTrack preferredTransform];
    _inputVideoTrack = v6;
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (CGSize)_inputVideoSize
{
  _inputVideoTrack = [(PFLivePhotoEditSession *)self _inputVideoTrack];
  [_inputVideoTrack dimensions];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)_inputVideoTrack
{
  v2 = [PFMediaUtilities tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:self->_videoAsset];
  firstObject = [v2 firstObject];

  return firstObject;
}

- (CGSize)_inputImageSize
{
  _inputImage = [(PFLivePhotoEditSession *)self _inputImage];
  [_inputImage extent];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)inputImageForRenderScale:(double)scale
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__80;
  v11 = __Block_byref_object_dispose__81;
  v12 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PFLivePhotoEditSession_inputImageForRenderScale___block_invoke;
  block[3] = &unk_1E7B64D98;
  block[4] = self;
  block[5] = &v7;
  *&block[6] = scale;
  dispatch_sync(stateQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __51__PFLivePhotoEditSession_inputImageForRenderScale___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _scaledInputImageForTargetScale:*(a1 + 48)];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_scaledInputImageForTargetScale:(double)scale
{
  v5 = 1;
  if (scale < 1.0)
  {
    v6 = vcvtmd_s64_f64(log2(1.0 / scale));
    if (v6 >= 3)
    {
      LOBYTE(v6) = 3;
    }

    v5 = 1 << v6;
  }

  subsampledInputImage = self->_subsampledInputImage;
  if (!subsampledInputImage || v5 != self->_subsampleFactor)
  {
    self->_subsampleFactor = v5;
    if (v5 == 1)
    {
      [(PFLivePhotoEditSession *)self _inputImage];
    }

    else
    {
      [(PFLivePhotoEditSession *)self _loadInputImageWithSubsampleFactor:v5];
    }
    v8 = ;
    v9 = self->_subsampledInputImage;
    self->_subsampledInputImage = v8;

    subsampledInputImage = self->_subsampledInputImage;
  }

  CGAffineTransformMakeScale(&v12, scale / (1.0 / v5), scale / (1.0 / v5));
  v10 = [(CIImage *)subsampledInputImage imageByApplyingTransform:&v12];

  return v10;
}

- (id)_loadInputImageWithSubsampleFactor:(int64_t)factor
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (factor >= 2)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:factor];
    [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696E0F8]];
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(self->_inputImageSource, 0, v5);
  if (ImageAtIndex)
  {
    v8 = ImageAtIndex;
    v9 = [objc_alloc(MEMORY[0x1E695F658]) initWithCGImage:ImageAtIndex];
    CFRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_inputImage
{
  inputImage = self->_inputImage;
  if (!inputImage)
  {
    _loadInputImage = [(PFLivePhotoEditSession *)self _loadInputImage];
    v5 = self->_inputImage;
    self->_inputImage = _loadInputImage;

    inputImage = self->_inputImage;
  }

  return inputImage;
}

- (CIImage)inputImage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__80;
  v10 = __Block_byref_object_dispose__81;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__PFLivePhotoEditSession_inputImage__block_invoke;
  v5[3] = &unk_1E7B66DC0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __36__PFLivePhotoEditSession_inputImage__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _inputImage];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_loadInputImageProperties
{
  v2 = CGImageSourceCopyPropertiesAtIndex(self->_inputImageSource, 0, 0);

  return v2;
}

- (id)_inputImageProperties
{
  inputImageProperties = self->_inputImageProperties;
  if (!inputImageProperties)
  {
    _loadInputImageProperties = [(PFLivePhotoEditSession *)self _loadInputImageProperties];
    v5 = self->_inputImageProperties;
    self->_inputImageProperties = _loadInputImageProperties;

    inputImageProperties = self->_inputImageProperties;
  }

  return inputImageProperties;
}

- (id)imageProperties
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__80;
  v10 = __Block_byref_object_dispose__81;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__PFLivePhotoEditSession_imageProperties__block_invoke;
  v5[3] = &unk_1E7B66DC0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __41__PFLivePhotoEditSession_imageProperties__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _inputImageProperties];

  return MEMORY[0x1EEE66BB8]();
}

- (void)setFrameProcessor:(id)processor
{
  processorCopy = processor;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__PFLivePhotoEditSession_setFrameProcessor___block_invoke;
  v7[3] = &unk_1E7B668D0;
  v7[4] = self;
  v8 = processorCopy;
  v6 = processorCopy;
  dispatch_sync(stateQueue, v7);
}

void __44__PFLivePhotoEditSession_setFrameProcessor___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 184);
  *(v3 + 184) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 144);
  *(v5 + 144) = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 152);
  *(v7 + 152) = 0;
}

- (id)frameProcessor
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__PFLivePhotoEditSession_frameProcessor__block_invoke;
  v5[3] = &unk_1E7B66DC0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = MEMORY[0x1B8C64C40](v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __40__PFLivePhotoEditSession_frameProcessor__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = MEMORY[0x1B8C64C40](*(*(a1 + 32) + 184));

  return MEMORY[0x1EEE66BB8]();
}

- (unsigned)_loadInputImageOrientation
{
  _inputImageProperties = [(PFLivePhotoEditSession *)self _inputImageProperties];
  v3 = [_inputImageProperties objectForKeyedSubscript:*MEMORY[0x1E696DE78]];
  v4 = v3;
  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 1;
  }

  return intValue;
}

- (unsigned)_inputOrientation
{
  result = self->_inputOrientation;
  if (!result)
  {
    result = [(PFLivePhotoEditSession *)self _loadInputImageOrientation];
    self->_inputOrientation = result;
  }

  return result;
}

- (unsigned)orientation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__PFLivePhotoEditSession_orientation__block_invoke;
  v5[3] = &unk_1E7B66DC0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __37__PFLivePhotoEditSession_orientation__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _inputOrientation];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_loadInputVideoDuration
{
  result = self->_videoAsset;
  if (result)
  {
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result duration];
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_inputVideoDuration
{
  selfCopy = self;
  if ((self[1].var3 & 0x100000000) == 0)
  {
    self = [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self _loadInputVideoDuration];
    *&selfCopy[1].var1 = v5;
    selfCopy[2].var0 = v6;
  }

  *&retstr->var0 = *&selfCopy[1].var1;
  retstr->var3 = selfCopy[2].var0;
  return self;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3810000000;
  v10 = &unk_1B36BE437;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__PFLivePhotoEditSession_duration__block_invoke;
  block[3] = &unk_1E7B66DC0;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(stateQueue, block);
  *retstr = *(v8 + 4);
  _Block_object_dispose(&v7, 8);
  return result;
}

double __34__PFLivePhotoEditSession_duration__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _inputVideoDuration];
  v2 = *(*(a1 + 40) + 8);
  result = *&v4;
  *(v2 + 32) = v4;
  *(v2 + 48) = v5;
  return result;
}

- (void)dealloc
{
  inputImageSource = self->_inputImageSource;
  if (inputImageSource)
  {
    CFRelease(inputImageSource);
  }

  v4.receiver = self;
  v4.super_class = PFLivePhotoEditSession;
  [(PFLivePhotoEditSession *)&v4 dealloc];
}

- (PFLivePhotoEditSession)initWithPhotoURL:(id)l videoURL:(id)rL photoTime:(id *)time photoOrientation:(unsigned int)orientation
{
  v25.receiver = self;
  v25.super_class = PFLivePhotoEditSession;
  rLCopy = rL;
  lCopy = l;
  v11 = [(PFLivePhotoEditSession *)&v25 init];
  v12 = CGImageSourceCreateWithURL(lCopy, 0);

  *(v11 + 10) = v12;
  v13 = [MEMORY[0x1E6987E28] assetWithURL:{rLCopy, v25.receiver, v25.super_class}];

  v14 = *(v11 + 3);
  *(v11 + 3) = v13;

  v15 = *&time->var0;
  *(v11 + 9) = time->var3;
  *(v11 + 56) = v15;
  *(v11 + 22) = orientation;
  v16 = dispatch_queue_create("PFLivePhotoEditSession.state", 0);
  v17 = *(v11 + 1);
  *(v11 + 1) = v16;

  v18 = dispatch_queue_create("PFLivePhotoEditSession.render", 0);
  v19 = *(v11 + 2);
  *(v11 + 2) = v18;

  v20 = objc_alloc(MEMORY[0x1E695F620]);
  v21 = [v20 initWithOptions:MEMORY[0x1E695E0F8]];
  v22 = *(v11 + 13);
  *(v11 + 13) = v21;

  *(v11 + 55) = 1065353216;
  if (*(v11 + 10) && *(v11 + 3))
  {
    v23 = v11;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)_createTemporaryDirectory
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v3 = NSTemporaryDirectory();
  v4 = [v3 stringByAppendingPathComponent:@"live-photo-renders"];

  v23 = 0;
  if ([v2 fileExistsAtPath:v4 isDirectory:&v23])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [v2 enumeratorAtPath:v4];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [v4 stringByAppendingPathComponent:*(*(&v19 + 1) + 8 * i)];
          v18 = 0;
          v11 = [v2 removeItemAtPath:v10 error:&v18];
          v12 = v18;
          v13 = v12;
          if ((v11 & 1) == 0)
          {
            NSLog(&cfstr_CouldnTRemoveT.isa, v10, v12);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v17 = 0;
    v14 = [v2 createDirectoryAtPath:v4 withIntermediateDirectories:0 attributes:0 error:&v17];
    v15 = v17;
    v5 = v15;
    if ((v14 & 1) == 0)
    {
      NSLog(&cfstr_CouldnTCreateT.isa, v4, v15);
    }
  }

  return v4;
}

+ (id)temporaryDirectory
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__PFLivePhotoEditSession_temporaryDirectory__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (temporaryDirectory_onceToken != -1)
  {
    dispatch_once(&temporaryDirectory_onceToken, block);
  }

  v2 = temporaryDirectory_s_temporaryDirectory;

  return v2;
}

uint64_t __44__PFLivePhotoEditSession_temporaryDirectory__block_invoke(uint64_t a1)
{
  temporaryDirectory_s_temporaryDirectory = [*(a1 + 32) _createTemporaryDirectory];

  return MEMORY[0x1EEE66BB8]();
}

@end