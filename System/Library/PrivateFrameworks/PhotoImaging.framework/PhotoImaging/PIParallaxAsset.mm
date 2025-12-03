@interface PIParallaxAsset
- (BOOL)clearSegmentationResourceCacheWithError:(id *)error;
- (CGRect)acceptableCropRect;
- (CGRect)gazeAreaRect;
- (CGRect)preferredCropRect;
- (PIParallaxAsset)initWithFileURL:(id)l;
- (int)loadFocalLengthIn35mm:(id)in35mm;
- (int)loadMotionScore:(id)score;
- (int)loadParallaxResource:(int64_t)resource options:(id)options resultHandler:(id)handler;
- (int)loadPetsRegionsWithOptions:(id)options resultHandler:(id)handler;
- (void)cancelMotionScoreRequest:(int)request;
- (void)cancelPetsRegionsRequest:(int)request;
- (void)updateSegmentationResource:(id)resource;
@end

@implementation PIParallaxAsset

- (CGRect)gazeAreaRect
{
  x = self->_gazeAreaRect.origin.x;
  y = self->_gazeAreaRect.origin.y;
  width = self->_gazeAreaRect.size.width;
  height = self->_gazeAreaRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)acceptableCropRect
{
  x = self->_acceptableRect.origin.x;
  y = self->_acceptableRect.origin.y;
  width = self->_acceptableRect.size.width;
  height = self->_acceptableRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)preferredCropRect
{
  x = self->_preferredRect.origin.x;
  y = self->_preferredRect.origin.y;
  width = self->_preferredRect.size.width;
  height = self->_preferredRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (int)loadFocalLengthIn35mm:(id)in35mm
{
  in35mmCopy = in35mm;
  v5 = CGImageSourceCreateWithURL(self->_fileURL, 0);
  if (v5)
  {
    v6 = v5;
    v7 = CGImageSourceCopyPropertiesAtIndex(v5, 0, 0);
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696D9B0]];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696DA08]];
    if (v9)
    {
      in35mmCopy[2](in35mmCopy, v9, 0);
    }

    else
    {
      v10 = [MEMORY[0x1E69B3A48] failureError:@"Image missing kCGImagePropertyExifFocalLenIn35mmFilm" object:self->_fileURL];
      (in35mmCopy)[2](in35mmCopy, 0, v10);
    }

    CFRelease(v6);
  }

  else
  {
    v7 = [MEMORY[0x1E69B3A48] failureError:@"Failed to read image file" object:self->_fileURL];
    (in35mmCopy)[2](in35mmCopy, 0, v7);
  }

  return 0;
}

- (void)cancelMotionScoreRequest:(int)request
{
  v3 = *&request;
  sharedAnalysisService = [getVCPMediaAnalysisServiceClass_20099() sharedAnalysisService];
  [sharedAnalysisService cancelRequest:v3];
}

- (int)loadMotionScore:(id)score
{
  v19[2] = *MEMORY[0x1E69E9840];
  scoreCopy = score;
  v5 = scoreCopy;
  v6.n128_u32[0] = LODWORD(self->_motionScore);
  if (v6.n128_f32[0] >= 0.0)
  {
    (*(scoreCopy + 2))(scoreCopy, 0, v6);
LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [(NSURL *)self->_videoComplementURL path];
  v9 = [defaultManager fileExistsAtPath:path];

  if ((v9 & 1) == 0)
  {
    v10.n128_u32[0] = -1.0;
    v5[2](v5, 0, v10);
    goto LABEL_6;
  }

  sharedAnalysisService = [getVCPMediaAnalysisServiceClass_20099() sharedAnalysisService];
  fileURL = [(PIParallaxAsset *)self fileURL];
  videoComplementURL = self->_videoComplementURL;
  v19[0] = fileURL;
  v19[1] = videoComplementURL;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __35__PIParallaxAsset_loadMotionScore___block_invoke;
  v17[3] = &unk_1E82ABA78;
  v17[4] = self;
  v18 = v5;
  v15 = [sharedAnalysisService requestAnalysisTypes:0x40000 forAssetWithResourceURLs:v14 withOptions:MEMORY[0x1E695E0F8] progressHandler:0 andCompletionHandler:v17];

LABEL_7:
  return v15;
}

void __35__PIParallaxAsset_loadMotionScore___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    (*(*(a1 + 40) + 16))(-1.0);
    goto LABEL_11;
  }

  v7 = getMediaAnalysisResultsKey_20123();
  v8 = [v5 objectForKeyedSubscript:v7];

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v9 = getMediaAnalysisSettlingEffectsGatingResultsKeySymbolLoc_ptr;
  v34 = getMediaAnalysisSettlingEffectsGatingResultsKeySymbolLoc_ptr;
  if (!getMediaAnalysisSettlingEffectsGatingResultsKeySymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getMediaAnalysisSettlingEffectsGatingResultsKeySymbolLoc_block_invoke;
    v36 = &unk_1E82AC930;
    v37 = &v31;
    v10 = MediaAnalysisLibrary_20102();
    v11 = dlsym(v10, "MediaAnalysisSettlingEffectsGatingResultsKey");
    *(v37[1] + 24) = v11;
    getMediaAnalysisSettlingEffectsGatingResultsKeySymbolLoc_ptr = *(v37[1] + 24);
    v9 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (!v9)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisSettlingEffectsGatingResultsKey(void)"];
    [v19 handleFailureInFunction:v20 file:@"PIParallaxAsset.m" lineNumber:32 description:@"%s", dlerror()];

    while (1)
    {
LABEL_19:
      __break(1u);
LABEL_20:
      if (v21)
      {
        specific = dispatch_get_specific(*v8);
        v28 = MEMORY[0x1E696AF00];
        v29 = specific;
        v8 = [v28 callStackSymbols];
        v30 = [v8 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = specific;
        *&buf[12] = 2114;
        *&buf[14] = v30;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

LABEL_22:

      v21 = _NUAssertFailHandler();
    }
  }

  v12 = [v8 objectForKeyedSubscript:*v9];
  if (![v12 count])
  {
    v22 = NUAssertLogger_20125();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid gating results"];
      *buf = 138543362;
      *&buf[4] = v23;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    v24 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_20125();
    v21 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (v24)
    {
      goto LABEL_20;
    }

    if (v21)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v8 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v8;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_22;
  }

  v13 = [v12 firstObject];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v14 = getMediaAnalysisResultQualityKeySymbolLoc_ptr;
  v34 = getMediaAnalysisResultQualityKeySymbolLoc_ptr;
  if (!getMediaAnalysisResultQualityKeySymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getMediaAnalysisResultQualityKeySymbolLoc_block_invoke;
    v36 = &unk_1E82AC930;
    v37 = &v31;
    v15 = MediaAnalysisLibrary_20102();
    v16 = dlsym(v15, "MediaAnalysisResultQualityKey");
    *(v37[1] + 24) = v16;
    getMediaAnalysisResultQualityKeySymbolLoc_ptr = *(v37[1] + 24);
    v14 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (!v14)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultQualityKey(void)"];
    [v19 handleFailureInFunction:v26 file:@"PIParallaxAsset.m" lineNumber:33 description:@"%s", dlerror()];

    goto LABEL_19;
  }

  v17 = [v13 objectForKeyedSubscript:*v14];
  [v17 floatValue];
  *(*(a1 + 32) + 104) = v18;
  (*(*(a1 + 40) + 16))();

LABEL_11:
}

- (void)cancelPetsRegionsRequest:(int)request
{
  v3 = *&request;
  sharedAnalysisService = [getVCPMediaAnalysisServiceClass_20099() sharedAnalysisService];
  [sharedAnalysisService cancelRequest:v3];
}

- (int)loadPetsRegionsWithOptions:(id)options resultHandler:(id)handler
{
  v14[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  sharedAnalysisService = [getVCPMediaAnalysisServiceClass_20099() sharedAnalysisService];
  fileURL = [(PIParallaxAsset *)self fileURL];
  v14[0] = fileURL;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__PIParallaxAsset_loadPetsRegionsWithOptions_resultHandler___block_invoke_3;
  v11[3] = &unk_1E82ABA50;
  v12 = &__block_literal_global_20144;
  v13 = handlerCopy;
  v9 = handlerCopy;
  LODWORD(handlerCopy) = [sharedAnalysisService requestAnalysisTypes:0x20000 forAssetWithResourceURLs:v8 withOptions:MEMORY[0x1E695E0F8] progressHandler:0 andCompletionHandler:v11];

  return handlerCopy;
}

void __60__PIParallaxAsset_loadPetsRegionsWithOptions_resultHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_10;
  }

  v7 = getMediaAnalysisResultsKey_20123();
  v8 = [v5 objectForKeyedSubscript:v7];

  v9 = *(a1 + 32);
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v10 = getMediaAnalysisPetsResultsKeySymbolLoc_ptr;
  v30 = getMediaAnalysisPetsResultsKeySymbolLoc_ptr;
  if (!getMediaAnalysisPetsResultsKeySymbolLoc_ptr)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __getMediaAnalysisPetsResultsKeySymbolLoc_block_invoke;
    v26 = &unk_1E82AC930;
    v11 = MediaAnalysisLibrary_20102();
    v28[3] = dlsym(v11, "MediaAnalysisPetsResultsKey");
    getMediaAnalysisPetsResultsKeySymbolLoc_ptr = v28[3];
    v10 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (v10)
  {
    v12 = *v10;
    v13 = [v8 objectForKeyedSubscript:v12];
    v14 = (*(v9 + 16))(v9, v13);

    v15 = *(a1 + 32);
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v16 = getMediaAnalysisPetsFaceResultsKeySymbolLoc_ptr;
    v30 = getMediaAnalysisPetsFaceResultsKeySymbolLoc_ptr;
    if (!getMediaAnalysisPetsFaceResultsKeySymbolLoc_ptr)
    {
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __getMediaAnalysisPetsFaceResultsKeySymbolLoc_block_invoke;
      v26 = &unk_1E82AC930;
      v17 = MediaAnalysisLibrary_20102();
      v28[3] = dlsym(v17, "MediaAnalysisPetsFaceResultsKey");
      getMediaAnalysisPetsFaceResultsKeySymbolLoc_ptr = v28[3];
      v16 = v28[3];
    }

    _Block_object_dispose(&v27, 8);
    if (v16)
    {
      v18 = *v16;
      v19 = [v8 objectForKeyedSubscript:v18];
      v20 = (*(v15 + 16))(v15, v19);

      (*(*(a1 + 40) + 16))();
LABEL_10:

      return;
    }

    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisPetsFaceResultsKey(void)"];
    [v21 handleFailureInFunction:v22 file:@"PIParallaxAsset.m" lineNumber:29 description:{@"%s", dlerror(), v23, v24, v25, v26}];
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisPetsResultsKey(void)"];
    [v21 handleFailureInFunction:v22 file:@"PIParallaxAsset.m" lineNumber:28 description:{@"%s", dlerror(), v23, v24, v25, v26}];
  }

  __break(1u);
}

void __60__PIParallaxAsset_loadPetsRegionsWithOptions_resultHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v3 = getMediaAnalysisResultAttributesKeySymbolLoc_ptr_20150;
  v23 = getMediaAnalysisResultAttributesKeySymbolLoc_ptr_20150;
  if (!getMediaAnalysisResultAttributesKeySymbolLoc_ptr_20150)
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __getMediaAnalysisResultAttributesKeySymbolLoc_block_invoke_20151;
    v18 = &unk_1E82AC930;
    v19 = &v20;
    v4 = MediaAnalysisLibrary_20102();
    v21[3] = dlsym(v4, "MediaAnalysisResultAttributesKey");
    getMediaAnalysisResultAttributesKeySymbolLoc_ptr_20150 = *(v19[1] + 24);
    v3 = v21[3];
  }

  _Block_object_dispose(&v20, 8);
  if (!v3)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultAttributesKey(void)"];
    [v12 handleFailureInFunction:v13 file:@"PIParallaxAsset.m" lineNumber:30 description:{@"%s", dlerror()}];
LABEL_12:

    __break(1u);
    return;
  }

  v5 = *v3;
  v6 = [v2 objectForKeyedSubscript:v5];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v7 = getMediaAnalysisResultPetsBoundsAttributeKeySymbolLoc_ptr;
  v23 = getMediaAnalysisResultPetsBoundsAttributeKeySymbolLoc_ptr;
  if (!getMediaAnalysisResultPetsBoundsAttributeKeySymbolLoc_ptr)
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __getMediaAnalysisResultPetsBoundsAttributeKeySymbolLoc_block_invoke;
    v18 = &unk_1E82AC930;
    v19 = &v20;
    v8 = MediaAnalysisLibrary_20102();
    v21[3] = dlsym(v8, "MediaAnalysisResultPetsBoundsAttributeKey");
    getMediaAnalysisResultPetsBoundsAttributeKeySymbolLoc_ptr = *(v19[1] + 24);
    v7 = v21[3];
  }

  _Block_object_dispose(&v20, 8);
  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultPetsBoundsAttributeKey(void)"];
    [v12 handleFailureInFunction:v13 file:@"PIParallaxAsset.m" lineNumber:31 description:{@"%s", dlerror()}];
    goto LABEL_12;
  }

  v9 = [v6 objectForKeyedSubscript:*v7];

  v14 = NSRectFromString(v9);
  v10 = [MEMORY[0x1E696B098] valueWithBytes:&v14 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];

  v11 = v10;
}

- (BOOL)clearSegmentationResourceCacheWithError:(id *)error
{
  cacheURL = [(PIParallaxAsset *)self cacheURL];

  if (!cacheURL)
  {
    return 1;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  cacheURL2 = [(PIParallaxAsset *)self cacheURL];
  v8 = [defaultManager removeItemAtURL:cacheURL2 error:error];

  return v8;
}

- (void)updateSegmentationResource:(id)resource
{
  resourceCopy = resource;
  cacheURL = [(PIParallaxAsset *)self cacheURL];

  if (cacheURL)
  {
    cacheURL2 = [(PIParallaxAsset *)self cacheURL];
    resourceCopy[2](resourceCopy, cacheURL2);
  }
}

- (int)loadParallaxResource:(int64_t)resource options:(id)options resultHandler:(id)handler
{
  v67[3] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  if (-[PIParallaxAsset isInCloud](self, "isInCloud") && ([optionsCopy networkAccessAllowed] & 1) == 0)
  {
    v25 = [MEMORY[0x1E69B3A48] failureError:@"Asset is not local" object:0];
    handlerCopy[2](handlerCopy, 0, v25);

    v26 = 0;
LABEL_33:

    return v26;
  }

  v10 = CGImageSourceCreateWithURL(self->_fileURL, 0);
  if (!v10)
  {
    v24 = [MEMORY[0x1E69B3A48] failureError:@"Failed to read image file" object:self->_fileURL];
    handlerCopy[2](handlerCopy, 0, v24);

LABEL_32:
    v26 = 1;
    goto LABEL_33;
  }

  v11 = v10;
  if (resource > 6)
  {
LABEL_31:
    CFRelease(v11);
    goto LABEL_32;
  }

  if (((1 << resource) & 0x55) != 0)
  {
    v12 = CGImageSourceCopyPropertiesAtIndex(v10, 0, 0);
    if (v12)
    {
      v13 = v12;
      v14 = objc_alloc_init(MEMORY[0x1E69C0740]);
      v15 = v14;
      if (resource == 6)
      {
        v16 = 6;
      }

      else
      {
        v16 = 2;
      }

      [v14 setType:v16];
      [v15 setProxyImage:0];
      [v15 setImageFileURL:self->_fileURL];
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      path = [(NSURL *)self->_videoComplementURL path];
      v19 = [defaultManager fileExistsAtPath:path];

      if (v19)
      {
        [v15 setVideoFileURL:self->_videoComplementURL];
      }

      [v15 setOrientation:1];
      v20 = [v13 objectForKeyedSubscript:*MEMORY[0x1E696DF58]];
      if (v20 || ([v13 objectForKeyedSubscript:*MEMORY[0x1E696DE78]], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v21 = v20;
        [v15 setOrientation:{objc_msgSend(v20, "integerValue")}];
      }

      fileURL = self->_fileURL;
      v61 = 0;
      if ([(NSURL *)fileURL getResourceValue:&v61 forKey:*MEMORY[0x1E695DAA0] error:0])
      {
        identifier = [v61 identifier];
        [v15 setFileType:identifier];
      }

      (handlerCopy)[2](handlerCopy, v15, 0);
    }

    else
    {
      v44 = [MEMORY[0x1E69B3A48] failureError:@"Failed to load image properties" object:self->_fileURL];
      handlerCopy[2](handlerCopy, 0, v44);

      v13 = 0;
    }

LABEL_30:

    goto LABEL_31;
  }

  if (((1 << resource) & 0xA) != 0)
  {
    v27 = *MEMORY[0x1E696E100];
    v66[0] = *MEMORY[0x1E696DFE8];
    v66[1] = v27;
    v67[0] = MEMORY[0x1E695E118];
    v67[1] = &unk_1F471EE98;
    v66[2] = *MEMORY[0x1E696E000];
    v67[2] = MEMORY[0x1E695E118];
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:3];
    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v11, 0, v13);
    if (ThumbnailAtIndex)
    {
      ImageAtIndex = ThumbnailAtIndex;
      v30 = +[PIGlobalSettings globalSettings];
      segmentationDebugRoundTripProxyImage = [v30 segmentationDebugRoundTripProxyImage];

      if (segmentationDebugRoundTripProxyImage)
      {
        v32 = MEMORY[0x1E695DFF8];
        v33 = NSTemporaryDirectory();
        v34 = [v32 fileURLWithPath:v33];
        v35 = [v34 URLByAppendingPathComponent:@"proxy.jpg"];

        defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
        absoluteString = [v35 absoluteString];
        v38 = [defaultManager2 fileExistsAtPath:absoluteString];

        if (v38)
        {
          defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
          [defaultManager3 removeItemAtURL:v35 error:0];
        }

        identifier2 = [*MEMORY[0x1E6982E58] identifier];
        v41 = CGImageDestinationCreateWithURL(v35, identifier2, 1uLL, 0);

        CGImageDestinationAddImage(v41, ImageAtIndex, 0);
        CGImageDestinationFinalize(v41);
        CFRelease(v41);
        v42 = CGImageSourceCreateWithURL(v35, 0);
        CGImageRelease(ImageAtIndex);
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v42, 0, 0);
        CFRelease(v42);
      }

      v43 = objc_alloc_init(MEMORY[0x1E69C0740]);
      [v43 setType:3];
      [v43 setProxyImage:ImageAtIndex];
      (handlerCopy)[2](handlerCopy, v43, 0);
      CFRelease(ImageAtIndex);
    }

    else
    {
      v43 = [MEMORY[0x1E69B3A48] failureError:@"Failed to load thumbnail image" object:self->_fileURL];
      handlerCopy[2](handlerCopy, 0, v43);
    }

    goto LABEL_30;
  }

  v46 = NUAssertLogger_20125();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported"];
    *buf = 138543362;
    v63 = v47;
    _os_log_error_impl(&dword_1C7694000, v46, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  v48 = MEMORY[0x1E69B38E8];
  specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
  v50 = NUAssertLogger_20125();
  v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
  if (specific)
  {
    if (v51)
    {
      v54 = dispatch_get_specific(*v48);
      v55 = MEMORY[0x1E696AF00];
      v56 = v54;
      callStackSymbols = [v55 callStackSymbols];
      v58 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v63 = v54;
      v64 = 2114;
      v65 = v58;
      _os_log_error_impl(&dword_1C7694000, v50, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else if (v51)
  {
    callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
    v53 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543362;
    v63 = v53;
    _os_log_error_impl(&dword_1C7694000, v50, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
  }

  v59 = _NUAssertFailHandler();
  return [(PIParallaxAsset *)v59 localIdentifier];
}

- (PIParallaxAsset)initWithFileURL:(id)l
{
  v39 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy)
  {
    v21 = NUAssertLogger_20125();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "fileURL != nil"];
      *buf = 138543362;
      v36 = v22;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v25 = NUAssertLogger_20125();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v29 = dispatch_get_specific(*v23);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        callStackSymbols = [v30 callStackSymbols];
        v33 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v36 = v29;
        v37 = 2114;
        v38 = v33;
        _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v36 = v28;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = lCopy;
  v34.receiver = self;
  v34.super_class = PIParallaxAsset;
  v6 = [(PIParallaxAsset *)&v34 init];
  v7 = [v5 copy];
  v8 = *(v6 + 1);
  *(v6 + 1) = v7;

  v9 = *MEMORY[0x1E695F050];
  v10 = *(MEMORY[0x1E695F050] + 16);
  *(v6 + 24) = *MEMORY[0x1E695F050];
  *(v6 + 40) = v10;
  *(v6 + 56) = v9;
  *(v6 + 72) = v10;
  *(v6 + 120) = v9;
  *(v6 + 136) = v10;
  v11 = *(v6 + 11);
  *(v6 + 11) = 0;

  v12 = *(v6 + 12);
  *(v6 + 12) = 0;

  *(v6 + 26) = -1082130432;
  lastPathComponent = [v5 lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  v15 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"MOV"];

  fileURL = [v6 fileURL];
  uRLByDeletingLastPathComponent = [fileURL URLByDeletingLastPathComponent];
  v18 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v15];

  v19 = *(v6 + 2);
  *(v6 + 2) = v18;

  return v6;
}

@end