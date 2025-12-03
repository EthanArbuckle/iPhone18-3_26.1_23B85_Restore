@interface PFExportGIFRequest
+ (BOOL)_exportGIFToURL:(id)l request:(id)request progress:(id)progress error:(id *)error;
+ (CGImage)_createProcessedGIFImage:(opaqueCMSampleBuffer *)image options:(id)options transform:(CGAffineTransform *)transform error:(id *)error;
+ (OS_dispatch_queue)_exportQueue;
+ (id)runExport:(id)export toURL:(id)l completion:(id)completion;
+ (opaqueCMSampleBuffer)_copyNextSampleBuffer:(id)buffer reader:(id)reader time:(id *)time didReachEnd:(BOOL *)end error:(id *)error;
+ (void)runExport:(id)export toURL:(id)l progress:(id)progress completion:(id)completion;
- (PFExportGIFRequest)initWithVideoURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_ensureValidInputs;
@end

@implementation PFExportGIFRequest

- (void)_ensureValidInputs
{
  ditherDepth = self->_ditherDepth;
  if (ditherDepth < 0.0)
  {
    ditherDepth = 0.0;
  }

  v3 = fmin(self->_maximumFrameRate, 100.0);
  if (v3 <= 0.0)
  {
    v3 = 30.0;
  }

  self->_ditherDepth = ditherDepth;
  self->_maximumFrameRate = v3;
  maximumFrameSize = self->_maximumFrameSize;
  if (maximumFrameSize <= 1)
  {
    maximumFrameSize = 1;
  }

  self->_maximumFrameSize = maximumFrameSize;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_alloc(objc_opt_class()) initWithVideoURL:self->_videoURL];
  *(result + 8) = self->_shouldDither;
  *(result + 2) = *&self->_ditherDepth;
  *(result + 3) = *&self->_maximumFrameRate;
  *(result + 4) = self->_maximumFrameSize;
  *(result + 9) = self->_synchronous;
  return result;
}

- (PFExportGIFRequest)initWithVideoURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = PFExportGIFRequest;
  v5 = [(PFExportGIFRequest *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    videoURL = v5->_videoURL;
    v5->_videoURL = v6;

    *&v5->_shouldDither = 1;
    *&v5->_ditherDepth = xmmword_1B36A1D50;
    v5->_maximumFrameSize = 640;
  }

  return v5;
}

+ (BOOL)_exportGIFToURL:(id)l request:(id)request progress:(id)progress error:(id *)error
{
  v91 = *MEMORY[0x1E69E9840];
  url = l;
  requestCopy = request;
  progressCopy = progress;
  v59 = requestCopy;
  v9 = MEMORY[0x1E6987E28];
  videoURL = [requestCopy videoURL];
  v62 = [v9 assetWithURL:videoURL];

  v63 = [PFMediaUtilities tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:v62];
  if ([v63 count] >= 2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LOWORD(v72.a) = 0;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "PFExportGIFRequest encountered multiple video tracks. Only one will be used", &v72, 2u);
  }

  firstObject = [v63 firstObject];
  v12 = firstObject;
  if (firstObject)
  {
    [firstObject timeRange];
    v89 = *(&v81 + 1);
    v56 = DWORD1(v82);
    v90 = v82;
    v54 = *(&v82 + 1);
    memset(&v79, 0, sizeof(v79));
    [v12 preferredTransform];
  }

  else
  {
    v54 = 0.0;
    v56 = 0;
    v81 = 0u;
    v82 = 0u;
    v89 = 0.0;
    v90 = 0;
    v80 = 0u;
    memset(&v79, 0, sizeof(v79));
    memset(&v72, 0, sizeof(v72));
  }

  CGAffineTransformInvert(&v79, &v72);
  if (!v12 || (v56 & 0x1D) != 1)
  {
    v26 = _PFExportGIFRequestError(1, 0, @"Failed to get a valid video track with numeric duration");
    v14 = 0;
LABEL_42:
    v61 = 0;
LABEL_43:
    v43 = 0;
    goto LABEL_44;
  }

  v13 = objc_alloc(MEMORY[0x1E6987E78]);
  v78 = 0;
  v14 = [v13 initWithAsset:v62 error:&v78];
  v15 = v78;
  v16 = v15;
  if (!v14 || v15)
  {
    v26 = _PFExportGIFRequestError(1, v15, @"Failed to create AVAssetReader");

    goto LABEL_42;
  }

  v72.a = v89;
  *&v72.b = __PAIR64__(v56, v90);
  v72.c = v54;
  Seconds = CMTimeGetSeconds(&v72);
  [requestCopy maximumFrameRate];
  v19 = v18;
  v87 = *MEMORY[0x1E696DB70];
  v85 = *MEMORY[0x1E696DB78];
  v86 = &unk_1F2AAAFF0;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
  v88 = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];

  identifier = [*MEMORY[0x1E6982DE8] identifier];
  v53 = vcvtpd_u64_f64(Seconds * v19);
  idst = CGImageDestinationCreateWithURL(url, identifier, v53, v21);

  if (!idst)
  {
    v26 = _PFExportGIFRequestError(2, 0, @"Failed to create image destination");

    goto LABEL_42;
  }

  v83 = *MEMORY[0x1E6966130];
  v84 = &unk_1F2AAB008;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
  v61 = [objc_alloc(MEMORY[0x1E6987EA8]) initWithTrack:v12 outputSettings:v23];
  if ([v14 canAddOutput:v61])
  {
    [v14 addOutput:v61];
  }

  if (([v14 startReading] & 1) == 0)
  {
    error = [v14 error];
    v26 = _PFExportGIFRequestError(1, error, @"Failed to start reading video");

LABEL_56:
    CFRelease(idst);
    goto LABEL_43;
  }

  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v72.a = 0.0;
  *&v72.b = &v72;
  *&v72.c = 0x3810000000;
  *&v72.d = &unk_1B36BE437;
  v51 = *MEMORY[0x1E6960CC0];
  *&v72.tx = *MEMORY[0x1E6960CC0];
  v50 = *(MEMORY[0x1E6960CC0] + 16);
  v73 = v50;
  [requestCopy maximumFrameRate];
  v71[1] = 3221225472;
  v71[0] = MEMORY[0x1E69E9820];
  v71[2] = __61__PFExportGIFRequest__exportGIFToURL_request_progress_error___block_invoke;
  v71[3] = &unk_1E7B646E8;
  *&v71[6] = 1.0 / v24;
  v71[7] = idst;
  v71[4] = &v72;
  v71[5] = &v74;
  v49 = MEMORY[0x1B8C64C40](v71);
  v25 = 0;
  v26 = 0;
  LOBYTE(v27) = 1;
  while (v27)
  {
    if ([v14 status] != 1 || v75[3] >= v53)
    {
      v27 = 1;
LABEL_49:
      if (!v25)
      {
        goto LABEL_54;
      }

      if (v27)
      {
        v47 = v49[2];
        time.a = v89;
        *&time.b = __PAIR64__(v56, v90);
        time.c = v54;
        v47(v49, v25, &time, 1);
        v27 = 1;
      }

      goto LABEL_53;
    }

    v28 = objc_autoreleasePoolPush();
    v69 = v51;
    v70 = v50;
    v68 = 0;
    v67 = 0;
    v29 = [self _copyNextSampleBuffer:v61 reader:v14 time:&v69 didReachEnd:&v68 error:&v67];
    v30 = v67;
    v31 = v30;
    if (v29)
    {
      v66 = 0;
      if (!v25)
      {
        b = v72.b;
        *(*&v72.b + 32) = v69;
        *(*&b + 48) = v70;
        goto LABEL_27;
      }

      v32 = v49[2];
      *&time.a = v69;
      time.c = v70;
      if (v32(v49, v25, &time, 0))
      {
        CGImageRelease(v25);
        if (progressCopy)
        {
          *&time.a = *(*&v72.b + 32);
          time.c = *(*&v72.b + 48);
          v33 = CMTimeGetSeconds(&time);
          time.a = v89;
          *&time.b = __PAIR64__(v56, v90);
          time.c = v54;
          v34 = CMTimeGetSeconds(&time);
          progressCopy[2](progressCopy, &v66, v33 / v34);
        }

LABEL_27:
        if (v66)
        {
          v25 = 0;
          goto LABEL_29;
        }

        v65 = 0;
        time = v79;
        v25 = [self _createProcessedGIFImage:v29 options:v59 transform:&time error:&v65];
        v37 = v65;
        v38 = v37;
        v27 = v25 != 0;
        if (!v25)
        {
          v39 = v37;

          v26 = v39;
        }
      }

      else
      {
LABEL_29:
        v27 = 1;
      }

      CFRelease(v29);
      v40 = v66;
      if (v66 == 1)
      {
        [v14 cancelReading];
        v41 = _PFExportGIFRequestError(3, 0, @"Cancelled");

        v27 = 0;
        v26 = v41;
      }

      v35 = v40 ^ 1;
      goto LABEL_37;
    }

    if (v68)
    {
      v35 = 0;
      v27 = 1;
    }

    else
    {
      v42 = v30;

      v35 = 0;
      v27 = 0;
      v26 = v42;
    }

LABEL_37:

    objc_autoreleasePoolPop(v28);
    if ((v35 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  v27 = 0;
  if (!v25)
  {
    goto LABEL_54;
  }

LABEL_53:
  CGImageRelease(v25);
LABEL_54:

  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v74, 8);
  if (!v27)
  {
    goto LABEL_56;
  }

  v43 = CGImageDestinationFinalize(idst);
  v48 = _PFExportGIFRequestError(2, 0, @"Failed to finalize image destination");

  CFRelease(idst);
  v26 = v48;
LABEL_44:
  if (error)
  {
    v44 = v26;
    *error = v26;
  }

  return v43;
}

uint64_t __61__PFExportGIFRequest__exportGIFToURL_request_progress_error___block_invoke(uint64_t a1, CGImage *a2, CMTime *a3, int a4)
{
  LODWORD(v4) = a4;
  v22[1] = *MEMORY[0x1E69E9840];
  memset(&v18, 0, sizeof(v18));
  v8 = *(*(a1 + 32) + 8);
  lhs = *a3;
  v16 = *(v8 + 32);
  CMTimeSubtract(&v18, &lhs, &v16);
  lhs = v18;
  Seconds = CMTimeGetSeconds(&lhs);
  if (Seconds + 0.001 >= *(a1 + 48))
  {
    v4 = 1;
  }

  else
  {
    v4 = v4;
  }

  if (v4 == 1)
  {
    v21 = *MEMORY[0x1E696DB70];
    v19 = *MEMORY[0x1E696DB80];
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:ceil(Seconds * 100.0) / 100.0];
    v20 = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v22[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];

    CGImageDestinationAddImage(*(a1 + 56), a2, v12);
    ++*(*(*(a1 + 40) + 8) + 24);
    v13 = *(*(a1 + 32) + 8);
    v14 = *&a3->value;
    *(v13 + 48) = a3->epoch;
    *(v13 + 32) = v14;
  }

  return v4;
}

+ (CGImage)_createProcessedGIFImage:(opaqueCMSampleBuffer *)image options:(id)options transform:(CGAffineTransform *)transform error:(id *)error
{
  v51[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  ImageBuffer = CMSampleBufferGetImageBuffer(image);
  if (ImageBuffer)
  {
    v11 = ImageBuffer;
    v12 = objc_autoreleasePoolPush();
    v13 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v11];
    v14 = *&transform->c;
    v50[0] = *&transform->a;
    v50[1] = v14;
    v50[2] = *&transform->tx;
    v15 = [v13 imageByApplyingTransform:v50];

    [v15 extent];
    v17 = v16;
    v19 = v18;
    colorSpace = [v15 colorSpace];
    v21 = colorSpace;
    if (colorSpace)
    {
      v48 = *MEMORY[0x1E695F868];
      v49 = colorSpace;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    }

    else
    {
      v22 = 0;
    }

    maximumFrameSize = [optionsCopy maximumFrameSize];
    v25 = v15;
    v26 = v25;
    if (v17 <= v19)
    {
      v27 = v19;
    }

    else
    {
      v27 = v17;
    }

    outputImage = v25;
    if (maximumFrameSize / v27 < 1.0)
    {
      v46[0] = @"inputImage";
      v46[1] = @"inputScale";
      v47[0] = v25;
      v29 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      v47[1] = v29;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];

      v31 = [MEMORY[0x1E695F648] filterWithName:@"CILanczosScaleTransform" withInputParameters:v30];
      outputImage = [v31 outputImage];
    }

    v32 = outputImage;
    v33 = v32;
    if ([optionsCopy shouldDither])
    {
      [optionsCopy ditherDepth];
      v35 = v34;
      v36 = v32;
      v37 = exp2(-v35);
      v33 = v36;
      if (v37 > 0.0009765625)
      {
        v45 = v12;
        v38 = v36;
        if (v21)
        {
          v38 = [v36 imageByColorMatchingWorkingSpaceToColorSpace:v21];
        }

        v51[0] = *MEMORY[0x1E695FAB8];
        v39 = [MEMORY[0x1E696AD98] numberWithDouble:v37];
        *&v50[0] = v39;
        v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v51 count:1];
        v33 = [v38 imageByApplyingFilter:@"CIDither" withInputParameters:v40];

        if (v21)
        {
          v41 = [v33 imageByColorMatchingColorSpaceToWorkingSpace:v21];

          v33 = v41;
        }

        v12 = v45;
      }
    }

    v42 = [MEMORY[0x1E695F620] contextWithOptions:v22];
    v43 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    [v33 extent];
    v23 = [v42 createCGImage:v33 fromRect:*MEMORY[0x1E695F910] format:v43 colorSpace:?];
    CGColorSpaceRelease(v43);

    objc_autoreleasePoolPop(v12);
  }

  else if (error)
  {
    _PFExportGIFRequestError(1, 0, @"Unable to get CVPixelBuffer from sample buffer");
    *error = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (opaqueCMSampleBuffer)_copyNextSampleBuffer:(id)buffer reader:(id)reader time:(id *)time didReachEnd:(BOOL *)end error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  readerCopy = reader;
  v12 = MEMORY[0x1E6960C70];
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  copyNextSampleBuffer = [buffer copyNextSampleBuffer];
  if (copyNextSampleBuffer)
  {
    v14 = copyNextSampleBuffer;
    CMSampleBufferGetOutputPresentationTimeStamp(&v23, copyNextSampleBuffer);
    value = v23.value;
    flags = v23.flags;
    timescale = v23.timescale;
    epoch = v23.epoch;
    if (v23.flags)
    {
      v19 = 0;
      v18 = 0;
      goto LABEL_9;
    }

    error = [readerCopy error];
    v18 = _PFExportGIFRequestError(1, error, @"Encountered invalid sample buffer time");

    CFRelease(v14);
  }

  else
  {
    flags = *(v12 + 12);
    epoch = *(v12 + 16);
    if ([readerCopy status] == 2)
    {
      v18 = 0;
      v14 = 0;
      v19 = 1;
      goto LABEL_9;
    }

    error2 = [readerCopy error];
    v18 = _PFExportGIFRequestError(1, error2, @"Failed to read a video sample buffer");
  }

  v19 = 0;
  v14 = 0;
LABEL_9:
  if (time)
  {
    time->var0 = value;
    time->var1 = timescale;
    time->var2 = flags;
    time->var3 = epoch;
  }

  if (end)
  {
    *end = v19;
  }

  if (error)
  {
    v21 = v18;
    *error = v18;
  }

  return v14;
}

+ (void)runExport:(id)export toURL:(id)l progress:(id)progress completion:(id)completion
{
  lCopy = l;
  progressCopy = progress;
  completionCopy = completion;
  v13 = [export copy];
  [v13 _ensureValidInputs];
  if ([v13 isSynchronous])
  {
    v23 = 0;
    v14 = [self _exportGIFToURL:lCopy request:v13 progress:progressCopy error:&v23];
    v15 = v23;
    completionCopy[2](completionCopy, v14, v15);
  }

  else
  {
    _exportQueue = [self _exportQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __58__PFExportGIFRequest_runExport_toURL_progress_completion___block_invoke;
    v17[3] = &unk_1E7B646C0;
    selfCopy = self;
    v18 = lCopy;
    v19 = v13;
    v20 = progressCopy;
    v21 = completionCopy;
    dispatch_async(_exportQueue, v17);

    v15 = v18;
  }
}

void __58__PFExportGIFRequest_runExport_toURL_progress_completion___block_invoke(void *a1)
{
  v2 = a1[8];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v7 = 0;
  [v2 _exportGIFToURL:v3 request:v4 progress:v5 error:&v7];
  v6 = v7;
  (*(a1[7] + 16))();
}

+ (id)runExport:(id)export toURL:(id)l completion:(id)completion
{
  v8 = MEMORY[0x1E696AE38];
  completionCopy = completion;
  lCopy = l;
  exportCopy = export;
  v12 = [v8 discreteProgressWithTotalUnitCount:100];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __49__PFExportGIFRequest_runExport_toURL_completion___block_invoke;
  v17[3] = &unk_1E7B64698;
  v13 = v12;
  v18 = v13;
  v14 = MEMORY[0x1B8C64C40](v17);
  [self runExport:exportCopy toURL:lCopy progress:v14 completion:completionCopy];

  v15 = v13;
  return v13;
}

uint64_t __49__PFExportGIFRequest_runExport_toURL_completion___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  [*(a1 + 32) setCompletedUnitCount:vcvtmd_s64_f64(a3 * 100.0)];
  result = [*(a1 + 32) isCancelled];
  *a2 = result;
  return result;
}

+ (OS_dispatch_queue)_exportQueue
{
  if (_exportQueue_onceToken != -1)
  {
    dispatch_once(&_exportQueue_onceToken, &__block_literal_global_1161);
  }

  v3 = _exportQueue__sharedExportQueue;

  return v3;
}

void __34__PFExportGIFRequest__exportQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.PFExportGIFRequest", v2);
  v1 = _exportQueue__sharedExportQueue;
  _exportQueue__sharedExportQueue = v0;
}

@end