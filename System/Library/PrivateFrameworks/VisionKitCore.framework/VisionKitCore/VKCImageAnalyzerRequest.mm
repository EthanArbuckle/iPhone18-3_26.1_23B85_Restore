@interface VKCImageAnalyzerRequest
+ (unint64_t)newQueryIDForParsec;
- (BOOL)saveAssetsToFeedbackAttachmentsFolder:(id)folder error:(id *)error;
- (CGImage)blockingGenerateCGImage;
- (CGSize)imageSize;
- (CGSize)imageSizeFromCGImageSource:(CGImageSource *)source;
- (CGSize)photosImageSize;
- (NSArray)defaultBarcodeSymbologies;
- (NSString)description;
- (VKCImageAnalyzerRequest)init;
- (VKCImageAnalyzerRequest)initWithCGImage:(CGImage *)image orientation:(int64_t)orientation requestType:(unint64_t)type;
- (VKCImageAnalyzerRequest)initWithCIImage:(id)image orientation:(int64_t)orientation requestType:(unint64_t)type;
- (VKCImageAnalyzerRequest)initWithCVPixelBuffer:(__CVBuffer *)buffer orientation:(int64_t)orientation requestType:(unint64_t)type;
- (VKCImageAnalyzerRequest)initWithImage:(id)image orientation:(int64_t)orientation requestType:(unint64_t)type;
- (VKCImageAnalyzerRequest)initWithImage:(id)image requestType:(unint64_t)type;
- (VKCImageAnalyzerRequest)initWithImageURL:(id)l requestType:(unint64_t)type;
- (VKCImageAnalyzerRequest)initWithLocalIdentifier:(id)identifier photoLibraryURL:(id)l cgImage:(CGImage *)image orientation:(int64_t)orientation requestType:(unint64_t)type;
- (VKCImageAnalyzerRequest)initWithLocalIdentifier:(id)identifier photoLibraryURL:(id)l imageSize:(CGSize)size requestType:(unint64_t)type;
- (VKCImageAnalyzerRequest)initWithLocalIdentifier:(id)identifier photoLibraryURL:(id)l pixelBuffer:(__CVBuffer *)buffer orientation:(int64_t)orientation requestType:(unint64_t)type;
- (VKCImageAnalyzerRequest)initWithView:(id)view requestType:(unint64_t)type;
- (__CVBuffer)tempPixelBufferRef;
- (__CVBuffer)viPixelBufferRef;
- (id)blockingCreatePNGAssetDataWithError:(id *)error;
- (id)blockingGenerateCIImage;
- (id)blockingGenerateImage;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createVNRequestHandler;
- (id)madRequests;
- (id)processedBarcodeSymbologies;
- (id)requestIDValue;
- (id)shortLoggingDescription;
- (id)viImageType;
- (id)viRequest;
- (unsigned)cgimageOrientation;
- (void)dealloc;
- (void)setBarcodeSymbologies:(id)symbologies;
- (void)setLocales:(id)locales;
- (void)setRequestID:(int)d;
- (void)tempPixelBufferRef;
@end

@implementation VKCImageAnalyzerRequest

- (void)dealloc
{
  cgImageRef = self->_cgImageRef;
  if (cgImageRef)
  {
    CGImageRelease(cgImageRef);
  }

  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    CVBufferRelease(pixelBuffer);
  }

  v5.receiver = self;
  v5.super_class = VKCImageAnalyzerRequest;
  [(VKCImageAnalyzerRequest *)&v5 dealloc];
}

- (VKCImageAnalyzerRequest)init
{
  v7.receiver = self;
  v7.super_class = VKCImageAnalyzerRequest;
  v2 = [(VKCImageAnalyzerRequest *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_imageOrientation = 0;
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v3->_screenScale = v5;

    v3->_queryID = [objc_opt_class() newQueryIDForParsec];
  }

  return v3;
}

+ (unint64_t)newQueryIDForParsec
{
  result = newQueryIDForParsec_sCurrentQueryID + arc4random_uniform(0x10u) + 1;
  newQueryIDForParsec_sCurrentQueryID = result;
  return result;
}

- (VKCImageAnalyzerRequest)initWithImage:(id)image requestType:(unint64_t)type
{
  imageCopy = image;
  v7 = -[VKCImageAnalyzerRequest initWithImage:orientation:requestType:](self, "initWithImage:orientation:requestType:", imageCopy, [imageCopy vk_imageOrientation], type);

  return v7;
}

- (VKCImageAnalyzerRequest)initWithImage:(id)image orientation:(int64_t)orientation requestType:(unint64_t)type
{
  imageCopy = image;
  v10 = [(VKCImageAnalyzerRequest *)self init];
  if (v10)
  {
    if (!imageCopy)
    {
      v11 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [VKCImageAnalyzerRequest initWithImage:orientation:requestType:];
      }
    }

    objc_storeStrong(&v10->_image, image);
    v10->_imageOrientation = orientation;
    v10->_analysisTypes = type;
    v10->_requestType = 0;
  }

  return v10;
}

- (VKCImageAnalyzerRequest)initWithCIImage:(id)image orientation:(int64_t)orientation requestType:(unint64_t)type
{
  imageCopy = image;
  v10 = [(VKCImageAnalyzerRequest *)self init];
  if (v10)
  {
    if (!imageCopy)
    {
      v11 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [VKCImageAnalyzerRequest initWithCIImage:orientation:requestType:];
      }
    }

    objc_storeStrong(&v10->_ciImage, image);
    v10->_imageOrientation = orientation;
    v10->_analysisTypes = type;
    v10->_requestType = 2;
  }

  return v10;
}

- (VKCImageAnalyzerRequest)initWithCGImage:(CGImage *)image orientation:(int64_t)orientation requestType:(unint64_t)type
{
  v8 = [(VKCImageAnalyzerRequest *)self init];
  if (v8)
  {
    if (!image)
    {
      v9 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [VKCImageAnalyzerRequest initWithCGImage:orientation:requestType:];
      }
    }

    v8->_cgImageRef = CGImageRetain(image);
    v8->_imageOrientation = orientation;
    v8->_analysisTypes = type;
    v8->_requestType = 1;
  }

  return v8;
}

- (VKCImageAnalyzerRequest)initWithCVPixelBuffer:(__CVBuffer *)buffer orientation:(int64_t)orientation requestType:(unint64_t)type
{
  if (buffer && !CVPixelBufferGetIOSurface(buffer))
  {
    v10 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1B4335000, v10, OS_LOG_TYPE_DEFAULT, "pixelBuffer is not IOSurfaceBacked, converting to CIImage", v15, 2u);
    }

    v11 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:buffer];
    v12 = [(VKCImageAnalyzerRequest *)self initWithCIImage:v11 orientation:orientation requestType:type];
  }

  else
  {
    v9 = [(VKCImageAnalyzerRequest *)self init];
    if (v9)
    {
      if (buffer)
      {
        v9->_pixelBuffer = CVPixelBufferRetain(buffer);
      }

      else
      {
        v13 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [VKCImageAnalyzerRequest initWithCVPixelBuffer:orientation:requestType:];
        }
      }

      v9->_imageOrientation = orientation;
      v9->_analysisTypes = type;
      v9->_requestType = 3;
    }

    v12 = v9;
  }

  return v12;
}

- (VKCImageAnalyzerRequest)initWithLocalIdentifier:(id)identifier photoLibraryURL:(id)l imageSize:(CGSize)size requestType:(unint64_t)type
{
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  lCopy = l;
  v14 = [(VKCImageAnalyzerRequest *)self init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_URL, l);
    objc_storeStrong(&v15->_localIdentifier, identifier);
    v15->_analysisTypes = type;
    v15->_requestType = 5;
    v15->_photosImageSize.width = width;
    v15->_photosImageSize.height = height;
  }

  return v15;
}

- (VKCImageAnalyzerRequest)initWithLocalIdentifier:(id)identifier photoLibraryURL:(id)l cgImage:(CGImage *)image orientation:(int64_t)orientation requestType:(unint64_t)type
{
  identifierCopy = identifier;
  lCopy = l;
  v15 = [(VKCImageAnalyzerRequest *)self init];
  if (v15)
  {
    if (!image)
    {
      v16 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [VKCImageAnalyzerRequest initWithCGImage:orientation:requestType:];
      }
    }

    v15->_cgImageRef = CGImageRetain(image);
    objc_storeStrong(&v15->_URL, l);
    objc_storeStrong(&v15->_localIdentifier, identifier);
    v15->_imageOrientation = orientation;
    v15->_analysisTypes = type;
    v15->_requestType = 6;
  }

  return v15;
}

- (VKCImageAnalyzerRequest)initWithLocalIdentifier:(id)identifier photoLibraryURL:(id)l pixelBuffer:(__CVBuffer *)buffer orientation:(int64_t)orientation requestType:(unint64_t)type
{
  identifierCopy = identifier;
  lCopy = l;
  v15 = [(VKCImageAnalyzerRequest *)self init];
  if (v15)
  {
    if (buffer)
    {
      v15->_pixelBuffer = CVPixelBufferRetain(buffer);
    }

    else
    {
      v16 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [VKCImageAnalyzerRequest initWithLocalIdentifier:photoLibraryURL:pixelBuffer:orientation:requestType:];
      }
    }

    objc_storeStrong(&v15->_URL, l);
    objc_storeStrong(&v15->_localIdentifier, identifier);
    v15->_imageOrientation = orientation;
    v15->_analysisTypes = type;
    v15->_requestType = 7;
  }

  return v15;
}

- (VKCImageAnalyzerRequest)initWithImageURL:(id)l requestType:(unint64_t)type
{
  lCopy = l;
  v8 = [(VKCImageAnalyzerRequest *)self init];
  if (v8)
  {
    if (!lCopy)
    {
      v9 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [VKCImageAnalyzerRequest initWithImageURL:requestType:];
      }
    }

    objc_storeStrong(&v8->_URL, l);
    v8->_analysisTypes = type;
    v8->_requestType = 4;
  }

  return v8;
}

- (VKCImageAnalyzerRequest)initWithView:(id)view requestType:(unint64_t)type
{
  viewCopy = view;
  if (!viewCopy)
  {
    v7 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [VKCImageAnalyzerRequest initWithView:requestType:];
    }
  }

  vk_renderImageFromViewBackingStore = [viewCopy vk_renderImageFromViewBackingStore];
  v9 = [(VKCImageAnalyzerRequest *)self initWithImage:vk_renderImageFromViewBackingStore orientation:0 requestType:type];

  return v9;
}

- (id)requestIDValue
{
  v2 = MEMORY[0x1E696AD98];
  requestID = [(VKCImageAnalyzerRequest *)self requestID];

  return [v2 numberWithInt:requestID];
}

- (void)setRequestID:(int)d
{
  processDate = [(VKCImageAnalyzerRequest *)self processDate];

  if (d >= 1 && !processDate)
  {
    self->_requestID = d;
  }
}

- (void)setLocales:(id)locales
{
  localesCopy = locales;
  processDate = [(VKCImageAnalyzerRequest *)self processDate];

  if (!processDate)
  {
    objc_storeStrong(&self->_locales, locales);
  }
}

- (void)setBarcodeSymbologies:(id)symbologies
{
  symbologiesCopy = symbologies;
  processDate = [(VKCImageAnalyzerRequest *)self processDate];

  if (!processDate)
  {
    objc_storeStrong(&self->_barcodeSymbologies, symbologies);
  }
}

- (id)processedBarcodeSymbologies
{
  barcodeSymbologies = [(VKCImageAnalyzerRequest *)self barcodeSymbologies];
  v4 = barcodeSymbologies;
  if (barcodeSymbologies)
  {
    defaultBarcodeSymbologies = barcodeSymbologies;
  }

  else
  {
    defaultBarcodeSymbologies = [(VKCImageAnalyzerRequest *)self defaultBarcodeSymbologies];
  }

  v6 = defaultBarcodeSymbologies;

  if (([(VKCImageAnalyzerRequest *)self analysisTypes]& 8) != 0)
  {
    v7 = [v6 vk_arrayByAddingNonNilObject:*MEMORY[0x1E69848A0]];

    v6 = v7;
  }

  return v6;
}

- (unsigned)cgimageOrientation
{
  imageOrientation = [(VKCImageAnalyzerRequest *)self imageOrientation];

  return vk_cgImagePropertyOrientationFromVKOrientation(imageOrientation);
}

- (NSString)description
{
  if ([(VKCImageAnalyzerRequest *)self requestID])
  {
    v17 = [MEMORY[0x1E696AD98] numberWithInt:{-[VKCImageAnalyzerRequest requestID](self, "requestID")}];
  }

  else
  {
    v17 = @"(Not Set)";
  }

  if ([(VKCImageAnalyzerRequest *)self madRequestID])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[VKCImageAnalyzerRequest madRequestID](self, "madRequestID")}];
  }

  else
  {
    v3 = @"(Not Set)";
  }

  v4 = MEMORY[0x1E696AEC0];
  v18.receiver = self;
  v18.super_class = VKCImageAnalyzerRequest;
  v5 = [(VKCImageAnalyzerRequest *)&v18 description];
  v6 = VKMUIStringForBool([(VKCImageAnalyzerRequest *)self cancelled]);
  v7 = VKMUIStringForAnalysisTypes([(VKCImageAnalyzerRequest *)self analysisTypes]);
  v8 = VKMUIStringForAnalyzerRequestType([(VKCImageAnalyzerRequest *)self requestType]);
  locales = [(VKCImageAnalyzerRequest *)self locales];
  barcodeSymbologies = [(VKCImageAnalyzerRequest *)self barcodeSymbologies];
  [(VKCImageAnalyzerRequest *)self imageSize];
  v13 = VKMUIStringForSize(v11, v12);
  v14 = VKMUIStringForImageOrientation([(VKCImageAnalyzerRequest *)self imageOrientation]);
  v15 = [v4 stringWithFormat:@"%@ \n requestID: %@ \n madRequestID: %@ \n cancelled: %@ \n analysisTypes: %@ \n requestType: %@ \n locales: %@ \n barcodeSymbologies %@ \n imageSize %@ \n orientation: %@", v5, v17, v3, v6, v7, v8, locales, barcodeSymbologies, v13, v14];

  return v15;
}

- (id)shortLoggingDescription
{
  if ([(VKCImageAnalyzerRequest *)self requestID])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[VKCImageAnalyzerRequest requestID](self, "requestID")}];
  }

  else
  {
    v3 = @"(Not Set)";
  }

  if ([(VKCImageAnalyzerRequest *)self madRequestID])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[VKCImageAnalyzerRequest madRequestID](self, "madRequestID")}];
  }

  else
  {
    v4 = @"(Not Set)";
  }

  v5 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = VKCImageAnalyzerRequest;
  v6 = [(VKCImageAnalyzerRequest *)&v10 description];
  v7 = VKMUIStringForBool([(VKCImageAnalyzerRequest *)self cancelled]);
  v8 = [v5 stringWithFormat:@"%@ requestID: %@ madRequestID: %@ cancelled: %@", v6, v3, v4, v7];

  return v8;
}

- (id)viRequest
{
  if (([(VKCImageAnalyzerRequest *)self requestedAnalysisTypes]& 0x40) != 0)
  {
    v4 = _VKSignpostLog();
    if (os_signpost_enabled(v4))
    {
      LOWORD(v19) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B4335000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "VKCImageAnalyzerRequest Visual Intelligence Request", &unk_1B4435C0E, &v19, 2u);
    }

    v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1B4335000, v5, OS_LOG_TYPE_INFO, "Signpost Begin: VKCImageAnalyzerRequest Visual Intelligence Request", &v19, 2u);
    }

    if (vk_deviceSupportsVisualIntelligence() && !+[VKCInternalSettings disableVisualIntelligence])
    {
      v24 = 0;
      v25 = &v24;
      v26 = 0x2050000000;
      v10 = getVICVisualIntelligenceAnalysisRequestClass_softClass;
      v27 = getVICVisualIntelligenceAnalysisRequestClass_softClass;
      if (!getVICVisualIntelligenceAnalysisRequestClass_softClass)
      {
        v19 = MEMORY[0x1E69E9820];
        v20 = 3221225472;
        v21 = __getVICVisualIntelligenceAnalysisRequestClass_block_invoke;
        v22 = &unk_1E7BE3F48;
        v23 = &v24;
        VisualIntelligenceCoreLibraryCore_0();
        Class = objc_getClass("VICVisualIntelligenceAnalysisRequest");
        *(v23[1] + 24) = Class;
        getVICVisualIntelligenceAnalysisRequestClass_softClass = *(v23[1] + 24);
        v10 = v25[3];
      }

      v12 = v10;
      _Block_object_dispose(&v24, 8);
      v3 = objc_alloc_init(v10);
      [v3 setRequest:self];
      viConfiguration = [(VKCImageAnalyzerRequest *)self viConfiguration];
      if (viConfiguration && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v24 = 0;
        v25 = &v24;
        v26 = 0x2050000000;
        v13 = getVICVisualIntelligenceAnalysisRequestConfigClass_softClass_0;
        v27 = getVICVisualIntelligenceAnalysisRequestConfigClass_softClass_0;
        if (!getVICVisualIntelligenceAnalysisRequestConfigClass_softClass_0)
        {
          v19 = MEMORY[0x1E69E9820];
          v20 = 3221225472;
          v21 = __getVICVisualIntelligenceAnalysisRequestConfigClass_block_invoke_0;
          v22 = &unk_1E7BE3F48;
          v23 = &v24;
          VisualIntelligenceCoreLibraryCore_0();
          v14 = objc_getClass("VICVisualIntelligenceAnalysisRequestConfig");
          *(v23[1] + 24) = v14;
          getVICVisualIntelligenceAnalysisRequestConfigClass_softClass_0 = *(v23[1] + 24);
          v13 = v25[3];
        }

        v15 = v13;
        _Block_object_dispose(&v24, 8);
        v16 = objc_alloc_init(v13);
        isScreenshotsVLUAuthorized = [viConfiguration isScreenshotsVLUAuthorized];
        [v16 setVluAuthorized:isScreenshotsVLUAuthorized];

        if (objc_opt_respondsToSelector())
        {
          environmentBundleIdentifier = [viConfiguration environmentBundleIdentifier];
          [v16 setEnvironmentBundleIdentifier:environmentBundleIdentifier];
        }

        [v3 setConfig:v16];
      }
    }

    else
    {
      viConfiguration = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
      if (os_log_type_enabled(viConfiguration, OS_LOG_TYPE_ERROR))
      {
        [VKCImageAnalyzerRequest viRequest];
      }

      v3 = 0;
    }

    v7 = _VKSignpostLog();
    if (os_signpost_enabled(v7))
    {
      LOWORD(v19) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B4335000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "VKCImageAnalyzerRequest Visual Intelligence Request", &unk_1B4435C0E, &v19, 2u);
    }

    v8 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1B4335000, v8, OS_LOG_TYPE_INFO, "Signpost End: VKCImageAnalyzerRequest Visual Intelligence Request", &v19, 2u);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)madRequests
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  processedAnalysisTypes = [(VKCImageAnalyzerRequest *)self processedAnalysisTypes];
  if (processedAnalysisTypes)
  {
    locales = [(VKCImageAnalyzerRequest *)self locales];
    if ([locales count])
    {
      [(VKCImageAnalyzerRequest *)self locales];
    }

    else
    {
      [MEMORY[0x1E695DF58] preferredLanguages];
    }
    v6 = ;

    v7 = objc_alloc_init(MEMORY[0x1E69AE408]);
    [v7 setUsesFormFieldDetection:{-[VKCImageAnalyzerRequest _wantsFormFieldDetection](self, "_wantsFormFieldDetection")}];
    [v7 setLanguages:v6];
    [v7 setMaximumCandidateCount:3];
    [v7 setUsesLanguageDetection:1];
    [v3 addObject:v7];
  }

  if ((processedAnalysisTypes & 0xC) != 0)
  {
    v8 = objc_alloc(MEMORY[0x1E69AE428]);
    processedBarcodeSymbologies = [(VKCImageAnalyzerRequest *)self processedBarcodeSymbologies];
    v10 = [v8 initWithSymbologies:processedBarcodeSymbologies];

    [v3 addObject:v10];
  }

  if ([(VKCImageAnalyzerRequest *)self _wantsRectangleDetection])
  {
    v11 = objc_alloc_init(MEMORY[0x1E69AE438]);
    [v11 setMaximumObservations:0];
    [v11 setMinimumAspectRatio:0.0];
    [v11 setMinimumSize:0.0];
    LODWORD(v12) = 0.5;
    [v11 setMinimumConfidence:v12];
    LODWORD(v13) = 20.0;
    [v11 setQuadratureTolerance:v13];
    [v3 addObject:v11];
  }

  if ((processedAnalysisTypes & 0x10) != 0)
  {
    v14 = objc_alloc_init(MEMORY[0x1E69AE480]);
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[VKCImageAnalyzerRequest queryID](self, "queryID")}];
    [v14 setQueryID:v15];

    viImageType = [(VKCImageAnalyzerRequest *)self viImageType];
    [v14 setImageType:viImageType];

    imageURL = [(VKCImageAnalyzerRequest *)self imageURL];
    [v14 setImageURL:imageURL];

    pageURL = [(VKCImageAnalyzerRequest *)self pageURL];
    [v14 setReferralURL:pageURL];

    location = [(VKCImageAnalyzerRequest *)self location];
    [v14 setLocation:location];

    [v3 addObject:v14];
  }

  v20 = [v3 copy];

  return v20;
}

- (id)viImageType
{
  imageSource = [(VKCImageAnalyzerRequest *)self imageSource];
  if (imageSource > 2)
  {
    return 0;
  }

  else
  {
    return qword_1E7BE69F0[imageSource];
  }
}

- (__CVBuffer)viPixelBufferRef
{
  pixelBuffer = [(VKCImageAnalyzerRequest *)self pixelBuffer];
  if (pixelBuffer)
  {
    tempPixelBufferRef = pixelBuffer;
    v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 0;
      v6 = "viPixelBufferRef provided by request pixel buffer";
      v7 = &v10;
LABEL_6:
      _os_log_impl(&dword_1B4335000, v5, OS_LOG_TYPE_INFO, v6, v7, 2u);
    }
  }

  else
  {
    tempPixelBufferRef = [(VKCImageAnalyzerRequest *)self tempPixelBufferRef];
    v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 0;
      v6 = "viPixelBufferRef provided by generating pixel buffer";
      v7 = &v9;
      goto LABEL_6;
    }
  }

  return tempPixelBufferRef;
}

- (__CVBuffer)tempPixelBufferRef
{
  v15 = *MEMORY[0x1E69E9840];
  pixelBufferOut = 0;
  if ([(VKCImageAnalyzerRequest *)self requestType])
  {
    if ([(VKCImageAnalyzerRequest *)self requestType]== 1)
    {
      CGImageGetColorSpace([(VKCImageAnalyzerRequest *)self cgImageRef]);
      cgImageRef = [(VKCImageAnalyzerRequest *)self cgImageRef];

      return vk_ioSurfaceBackedPixelBufferFromCGImage(cgImageRef);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    image = [(VKCImageAnalyzerRequest *)self image];
    ioSurface = [image ioSurface];

    if (!ioSurface)
    {
      goto LABEL_13;
    }

    v7 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1B4335000, v7, OS_LOG_TYPE_DEFAULT, "Creating tempPixelBufferRef from IOSurface for request: %@", buf, 0xCu);
    }

    CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], ioSurface, 0, &pixelBufferOut);
    result = pixelBufferOut;
    if (!pixelBufferOut)
    {
      v8 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(VKCImageAnalyzerRequest *)self tempPixelBufferRef];
      }

      result = pixelBufferOut;
      if (!pixelBufferOut)
      {
LABEL_13:
        image2 = [(VKCImageAnalyzerRequest *)self image];
        vk_cgImageGeneratingIfNecessary = [image2 vk_cgImageGeneratingIfNecessary];

        if (vk_cgImageGeneratingIfNecessary)
        {
          CGImageGetColorSpace(vk_cgImageGeneratingIfNecessary);
          return vk_ioSurfaceBackedPixelBufferFromCGImage(vk_cgImageGeneratingIfNecessary);
        }

        else
        {
          v11 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            [(VKCImageAnalyzerRequest *)self tempPixelBufferRef];
          }

          return pixelBufferOut;
        }
      }
    }
  }

  return result;
}

- (id)blockingGenerateCIImage
{
  v20[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695F948];
  v20[0] = MEMORY[0x1E695E118];
  v4 = *MEMORY[0x1E695F9E0];
  v19[0] = v3;
  v19[1] = v4;
  v17 = *MEMORY[0x1E696DE78];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{vk_cgImagePropertyOrientationFromVKOrientation(-[VKCImageAnalyzerRequest imageOrientation](self, "imageOrientation"))}];
  v18 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];

  requestType = [(VKCImageAnalyzerRequest *)self requestType];
  v9 = 0;
  if (requestType > 1)
  {
    switch(requestType)
    {
      case 2:
        ciImage = [(VKCImageAnalyzerRequest *)self ciImage];
        break;
      case 3:
        ciImage = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:-[VKCImageAnalyzerRequest pixelBuffer](self options:{"pixelBuffer"), v7}];
        break;
      case 4:
        v10 = MEMORY[0x1E695F658];
        v11 = MEMORY[0x1E69DCAB8];
        image = [(VKCImageAnalyzerRequest *)self URL];
        v13 = [v11 vk_imageWithContentsOfURL:image];
        v9 = [v10 imageWithCGImage:objc_msgSend(v13 options:{"vk_cgImage"), v7}];

        goto LABEL_13;
      default:
        goto LABEL_14;
    }

LABEL_11:
    v9 = ciImage;
    goto LABEL_14;
  }

  if (requestType)
  {
    if (requestType != 1)
    {
      goto LABEL_14;
    }

    ciImage = [MEMORY[0x1E695F658] imageWithCGImage:-[VKCImageAnalyzerRequest cgImageRef](self options:{"cgImageRef"), v7}];
    goto LABEL_11;
  }

  v15 = MEMORY[0x1E695F658];
  image = [(VKCImageAnalyzerRequest *)self image];
  v9 = [v15 imageWithCGImage:objc_msgSend(image options:{"vk_cgImage"), v7}];
LABEL_13:

LABEL_14:

  return v9;
}

- (id)blockingGenerateImage
{
  requestType = [(VKCImageAnalyzerRequest *)self requestType];
  v4 = 0;
  if (requestType > 1)
  {
    switch(requestType)
    {
      case 2:
        v9 = MEMORY[0x1E69DCAB8];
        ciImage = [(VKCImageAnalyzerRequest *)self ciImage];
        v10 = v9;
        break;
      case 3:
        ciImage = [objc_alloc(MEMORY[0x1E695F658]) initWithCVPixelBuffer:{-[VKCImageAnalyzerRequest pixelBuffer](self, "pixelBuffer")}];
        v10 = MEMORY[0x1E69DCAB8];
        break;
      case 4:
        v5 = MEMORY[0x1E69DCAB8];
        ciImage = [(VKCImageAnalyzerRequest *)self URL];
        v7 = [v5 vk_imageWithContentsOfURL:ciImage];
        goto LABEL_12;
      default:
        goto LABEL_15;
    }

    v7 = [v10 vk_imageWithCIImage:ciImage];
LABEL_12:
    v4 = v7;

    goto LABEL_15;
  }

  if (requestType)
  {
    if (requestType != 1)
    {
      goto LABEL_15;
    }

    image = [MEMORY[0x1E69DCAB8] vk_imageWithCGImage:{-[VKCImageAnalyzerRequest cgImageRef](self, "cgImageRef")}];
  }

  else
  {
    image = [(VKCImageAnalyzerRequest *)self image];
  }

  v4 = image;
LABEL_15:

  return v4;
}

- (CGImage)blockingGenerateCGImage
{
  requestType = [(VKCImageAnalyzerRequest *)self requestType];
  cGImage = 0;
  if (requestType > 1)
  {
    if (requestType == 2)
    {
      ciImage = [(VKCImageAnalyzerRequest *)self ciImage];
      cGImage = [ciImage CGImage];

      if (cGImage)
      {
        return cGImage;
      }

      context = [MEMORY[0x1E695F620] context];
      ciImage2 = [(VKCImageAnalyzerRequest *)self ciImage];
      [(VKCImageAnalyzerRequest *)self imageSize];
      cGImage = [context createCGImage:ciImage2 fromRect:VKMRectWithSize()];

      if (!cGImage)
      {
        return cGImage;
      }

      goto LABEL_15;
    }

    if (requestType != 3)
    {
      if (requestType == 4)
      {
        v5 = MEMORY[0x1E69DCAB8];
        v6 = [(VKCImageAnalyzerRequest *)self URL];
        v7 = [v5 vk_imageWithContentsOfURL:v6];
        vk_cgImage = [v7 vk_cgImage];

        return vk_cgImage;
      }

      return cGImage;
    }

    cGImage = vk_cgImageFromPixelBuffer([(VKCImageAnalyzerRequest *)self pixelBuffer]);
    if (cGImage)
    {
LABEL_15:
      CFAutorelease(cGImage);
    }

    return cGImage;
  }

  if (!requestType)
  {
    image = [(VKCImageAnalyzerRequest *)self image];
    cGImage = [image vk_cgImageGeneratingIfNecessary];

    return cGImage;
  }

  if (requestType != 1)
  {
    return cGImage;
  }

  return [(VKCImageAnalyzerRequest *)self cgImageRef];
}

- (id)createVNRequestHandler
{
  requestType = [(VKCImageAnalyzerRequest *)self requestType];
  v4 = 0;
  if (requestType <= 1)
  {
    if (requestType)
    {
      if (requestType != 1)
      {
        goto LABEL_14;
      }

      v9 = objc_alloc(MEMORY[0x1E69845B8]);
      cgImageRef = [(VKCImageAnalyzerRequest *)self cgImageRef];
      cgimageOrientation = [(VKCImageAnalyzerRequest *)self cgimageOrientation];
      v12 = [v9 initWithCGImage:cgImageRef orientation:cgimageOrientation options:MEMORY[0x1E695E0F8]];
      goto LABEL_11;
    }

    v18 = objc_alloc(MEMORY[0x1E69845B8]);
    image = [(VKCImageAnalyzerRequest *)self image];
    vk_cgImage = [image vk_cgImage];
    cgimageOrientation2 = [(VKCImageAnalyzerRequest *)self cgimageOrientation];
    v8 = [v18 initWithCGImage:vk_cgImage orientation:cgimageOrientation2 options:MEMORY[0x1E695E0F8]];
  }

  else
  {
    if (requestType != 2)
    {
      if (requestType != 3)
      {
        if (requestType != 4)
        {
          goto LABEL_14;
        }

        v5 = objc_alloc(MEMORY[0x1E69845B8]);
        image = [(VKCImageAnalyzerRequest *)self URL];
        cgimageOrientation3 = [(VKCImageAnalyzerRequest *)self cgimageOrientation];
        v8 = [v5 initWithURL:image orientation:cgimageOrientation3 options:MEMORY[0x1E695E0F8]];
        goto LABEL_13;
      }

      v15 = objc_alloc(MEMORY[0x1E69845B8]);
      pixelBuffer = [(VKCImageAnalyzerRequest *)self pixelBuffer];
      cgimageOrientation4 = [(VKCImageAnalyzerRequest *)self cgimageOrientation];
      v12 = [v15 initWithCVPixelBuffer:pixelBuffer orientation:cgimageOrientation4 options:MEMORY[0x1E695E0F8]];
LABEL_11:
      v4 = v12;
      goto LABEL_14;
    }

    v13 = objc_alloc(MEMORY[0x1E69845B8]);
    image = [(VKCImageAnalyzerRequest *)self ciImage];
    cgimageOrientation5 = [(VKCImageAnalyzerRequest *)self cgimageOrientation];
    v8 = [v13 initWithCIImage:image orientation:cgimageOrientation5 options:MEMORY[0x1E695E0F8]];
  }

LABEL_13:
  v4 = v8;

LABEL_14:

  return v4;
}

- (CGSize)imageSize
{
  Width = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  requestType = [(VKCImageAnalyzerRequest *)self requestType];
  if (requestType <= 3)
  {
    if (requestType <= 1)
    {
      if (requestType)
      {
        if (requestType != 1)
        {
          goto LABEL_22;
        }

        goto LABEL_15;
      }

      image = [(VKCImageAnalyzerRequest *)self image];
      [image size];
      Width = v13;
      v4 = v14;
LABEL_21:

      goto LABEL_22;
    }

    if (requestType == 2)
    {
      image = [(VKCImageAnalyzerRequest *)self ciImage];
      [image extent];
      Width = v21;
      v4 = v22;
      goto LABEL_21;
    }

LABEL_13:
    pixelBuffer = [(VKCImageAnalyzerRequest *)self pixelBuffer];
    if (pixelBuffer)
    {
      v9 = pixelBuffer;
      Width = CVPixelBufferGetWidth(pixelBuffer);
      Height = CVPixelBufferGetHeight(v9);
LABEL_16:
      v4 = Height;
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  if (requestType <= 5)
  {
    if (requestType == 4)
    {
      v15 = [(VKCImageAnalyzerRequest *)self URL];
      v16 = [v15 checkResourceIsReachableAndReturnError:0];

      if (v16)
      {
        v17 = [(VKCImageAnalyzerRequest *)self URL];
        v18 = CGImageSourceCreateWithURL(v17, 0);

        [(VKCImageAnalyzerRequest *)self imageSizeFromCGImageSource:v18];
        Width = v19;
        v4 = v20;
        CFRelease(v18);
      }
    }

    else
    {
      [(VKCImageAnalyzerRequest *)self photosImageSize];
      Width = v6;
      v4 = v7;
    }

    goto LABEL_22;
  }

  if (requestType == 6)
  {
LABEL_15:
    cgImageRef = [(VKCImageAnalyzerRequest *)self cgImageRef];
    Width = CGImageGetWidth(cgImageRef);
    Height = CGImageGetHeight(cgImageRef);
    goto LABEL_16;
  }

  if (requestType == 7)
  {
    goto LABEL_13;
  }

LABEL_22:
  v23 = Width;
  v24 = v4;
  result.height = v24;
  result.width = v23;
  return result;
}

- (CGSize)imageSizeFromCGImageSource:(CGImageSource *)source
{
  v3 = CGImageSourceCopyPropertiesAtIndex(source, 0, 0);
  v4 = v3;
  if (v3)
  {
    v5 = [(__CFDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
    [v5 doubleValue];
    v7 = v6;

    v8 = *MEMORY[0x1E696DEC8];
    v9 = [(__CFDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
    [v9 doubleValue];
    v11 = v10;

    v12 = [(__CFDictionary *)v4 objectForKeyedSubscript:v8];
    integerValue = [v12 integerValue];

    if ((integerValue - 5) >= 4)
    {
      v14 = v11;
    }

    else
    {
      v14 = v7;
    }

    if ((integerValue - 5) < 4)
    {
      v7 = v11;
    }
  }

  else
  {
    v7 = *MEMORY[0x1E695F060];
    v14 = *(MEMORY[0x1E695F060] + 8);
  }

  v15 = v7;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (NSArray)defaultBarcodeSymbologies
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = *MEMORY[0x1E69848C0];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  image = [(VKCImageAnalyzerRequest *)self image];

  if (image)
  {
    v5 = [VKCImageAnalyzerRequest alloc];
    image2 = [(VKCImageAnalyzerRequest *)self image];
    v7 = [(VKCImageAnalyzerRequest *)v5 initWithImage:image2 orientation:[(VKCImageAnalyzerRequest *)self imageOrientation] requestType:[(VKCImageAnalyzerRequest *)self analysisTypes]];
LABEL_5:
    v10 = v7;
LABEL_6:

    return v10;
  }

  ciImage = [(VKCImageAnalyzerRequest *)self ciImage];

  if (ciImage)
  {
    v9 = [VKCImageAnalyzerRequest alloc];
    image2 = [(VKCImageAnalyzerRequest *)self ciImage];
    v7 = [(VKCImageAnalyzerRequest *)v9 initWithCIImage:image2 orientation:[(VKCImageAnalyzerRequest *)self imageOrientation] requestType:[(VKCImageAnalyzerRequest *)self analysisTypes]];
    goto LABEL_5;
  }

  if ([(VKCImageAnalyzerRequest *)self cgImageRef])
  {
    v12 = [VKCImageAnalyzerRequest alloc];
    cgImageRef = [(VKCImageAnalyzerRequest *)self cgImageRef];
    imageOrientation = [(VKCImageAnalyzerRequest *)self imageOrientation];
    analysisTypes = [(VKCImageAnalyzerRequest *)self analysisTypes];

    return [(VKCImageAnalyzerRequest *)v12 initWithCGImage:cgImageRef orientation:imageOrientation requestType:analysisTypes];
  }

  else if ([(VKCImageAnalyzerRequest *)self pixelBuffer])
  {
    v16 = [VKCImageAnalyzerRequest alloc];
    pixelBuffer = [(VKCImageAnalyzerRequest *)self pixelBuffer];
    imageOrientation2 = [(VKCImageAnalyzerRequest *)self imageOrientation];
    analysisTypes2 = [(VKCImageAnalyzerRequest *)self analysisTypes];

    return [(VKCImageAnalyzerRequest *)v16 initWithCVPixelBuffer:pixelBuffer orientation:imageOrientation2 requestType:analysisTypes2];
  }

  else
  {
    localIdentifier = [(VKCImageAnalyzerRequest *)self localIdentifier];

    if (localIdentifier)
    {
      v21 = [VKCImageAnalyzerRequest alloc];
      image2 = [(VKCImageAnalyzerRequest *)self localIdentifier];
      v22 = [(VKCImageAnalyzerRequest *)self URL];
      [(VKCImageAnalyzerRequest *)self imageSize];
      v10 = [(VKCImageAnalyzerRequest *)v21 initWithLocalIdentifier:image2 photoLibraryURL:v22 imageSize:[(VKCImageAnalyzerRequest *)self analysisTypes] requestType:v23, v24];

      goto LABEL_6;
    }

    v25 = [(VKCImageAnalyzerRequest *)self URL];

    if (v25)
    {
      v26 = [VKCImageAnalyzerRequest alloc];
      image2 = [(VKCImageAnalyzerRequest *)self URL];
      v7 = [(VKCImageAnalyzerRequest *)v26 initWithImageURL:image2 requestType:[(VKCImageAnalyzerRequest *)self analysisTypes]];
      goto LABEL_5;
    }

    [VKAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[VKCImageAnalyzerRequest copyWithZone:]" simulateCrash:0 showAlert:0 format:@"Unable to create a copy of VKImageAnalyzerRequest"];
    return 0;
  }
}

- (id)blockingCreatePNGAssetDataWithError:(id *)error
{
  v52[1] = *MEMORY[0x1E69E9840];
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__13;
  v41 = __Block_byref_object_dispose__13;
  v42 = 0;
  image = [(VKCImageAnalyzerRequest *)self image];

  if (image)
  {
    image2 = [(VKCImageAnalyzerRequest *)self image];
LABEL_5:
    v7 = v38[5];
    v38[5] = image2;
    goto LABEL_6;
  }

  if ([(VKCImageAnalyzerRequest *)self cgImageRef])
  {
    image2 = [MEMORY[0x1E69DCAB8] vk_imageWithCGImage:{-[VKCImageAnalyzerRequest cgImageRef](self, "cgImageRef")}];
    goto LABEL_5;
  }

  if ([(VKCImageAnalyzerRequest *)self pixelBuffer])
  {
    v13 = vk_cgImageFromPixelBuffer([(VKCImageAnalyzerRequest *)self pixelBuffer]);
    v14 = [MEMORY[0x1E69DCAB8] vk_imageWithCGImage:v13];
    v15 = v38[5];
    v38[5] = v14;

    CGImageRelease(v13);
    goto LABEL_7;
  }

  localIdentifier = [(VKCImageAnalyzerRequest *)self localIdentifier];

  if (!localIdentifier)
  {
    goto LABEL_7;
  }

  v48 = 0;
  v49 = &v48;
  v50 = 0x2050000000;
  v17 = getPHPhotoLibraryClass_softClass;
  v51 = getPHPhotoLibraryClass_softClass;
  if (!getPHPhotoLibraryClass_softClass)
  {
    v43 = MEMORY[0x1E69E9820];
    v44 = 3221225472;
    v45 = __getPHPhotoLibraryClass_block_invoke;
    v46 = &unk_1E7BE3F48;
    v47 = &v48;
    __getPHPhotoLibraryClass_block_invoke(&v43);
    v17 = v49[3];
  }

  v18 = v17;
  _Block_object_dispose(&v48, 8);
  v19 = [v17 alloc];
  v20 = [(VKCImageAnalyzerRequest *)self URL];
  v7 = [v19 initWithPhotoLibraryURL:v20];

  if (v7)
  {
    v48 = 0;
    v49 = &v48;
    v50 = 0x2050000000;
    v21 = getPHFetchOptionsClass_softClass;
    v51 = getPHFetchOptionsClass_softClass;
    if (!getPHFetchOptionsClass_softClass)
    {
      v43 = MEMORY[0x1E69E9820];
      v44 = 3221225472;
      v45 = __getPHFetchOptionsClass_block_invoke;
      v46 = &unk_1E7BE3F48;
      v47 = &v48;
      __getPHFetchOptionsClass_block_invoke(&v43);
      v21 = v49[3];
    }

    v22 = v21;
    _Block_object_dispose(&v48, 8);
    v23 = [v21 fetchOptionsWithPhotoLibrary:v7 orObject:0];
    v48 = 0;
    v49 = &v48;
    v50 = 0x2050000000;
    v24 = getPHAssetClass_softClass;
    v51 = getPHAssetClass_softClass;
    if (!getPHAssetClass_softClass)
    {
      v43 = MEMORY[0x1E69E9820];
      v44 = 3221225472;
      v45 = __getPHAssetClass_block_invoke;
      v46 = &unk_1E7BE3F48;
      v47 = &v48;
      __getPHAssetClass_block_invoke(&v43);
      v24 = v49[3];
    }

    v25 = v24;
    _Block_object_dispose(&v48, 8);
    localIdentifier2 = [(VKCImageAnalyzerRequest *)self localIdentifier];
    v52[0] = localIdentifier2;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
    v28 = [v24 fetchAssetsWithLocalIdentifiers:v27 options:v23];
    firstObject = [v28 firstObject];

    v48 = 0;
    v49 = &v48;
    v50 = 0x2050000000;
    v30 = getPHImageRequestOptionsClass_softClass;
    v51 = getPHImageRequestOptionsClass_softClass;
    if (!getPHImageRequestOptionsClass_softClass)
    {
      v43 = MEMORY[0x1E69E9820];
      v44 = 3221225472;
      v45 = __getPHImageRequestOptionsClass_block_invoke;
      v46 = &unk_1E7BE3F48;
      v47 = &v48;
      __getPHImageRequestOptionsClass_block_invoke(&v43);
      v30 = v49[3];
    }

    v31 = v30;
    _Block_object_dispose(&v48, 8);
    v32 = [[v30 alloc] init];
    [v32 setSynchronous:1];
    [v32 setNetworkAccessAllowed:1];
    [v32 setDeliveryMode:1];
    v48 = 0;
    v49 = &v48;
    v50 = 0x2050000000;
    v33 = getPHImageManagerClass_softClass;
    v51 = getPHImageManagerClass_softClass;
    if (!getPHImageManagerClass_softClass)
    {
      v43 = MEMORY[0x1E69E9820];
      v44 = 3221225472;
      v45 = __getPHImageManagerClass_block_invoke;
      v46 = &unk_1E7BE3F48;
      v47 = &v48;
      __getPHImageManagerClass_block_invoke(&v43);
      v33 = v49[3];
    }

    v34 = v33;
    _Block_object_dispose(&v48, 8);
    defaultManager = [v33 defaultManager];
    [(VKCImageAnalyzerRequest *)self imageSize];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __63__VKCImageAnalyzerRequest_blockingCreatePNGAssetDataWithError___block_invoke;
    v36[3] = &unk_1E7BE69A0;
    v36[4] = &v37;
    v36[5] = error;
    [defaultManager requestImageForAsset:firstObject targetSize:0 contentMode:v32 options:v36 resultHandler:?];
  }

LABEL_6:

LABEL_7:
  imageOrientation = [(VKCImageAnalyzerRequest *)self imageOrientation];
  v9 = v38[5];
  if (imageOrientation && v9)
  {
    v10 = [MEMORY[0x1E69DCAB8] vk_orientedImageFromImage:v9 toOrientation:imageOrientation];
    vk_PNGData = [v10 vk_PNGData];
  }

  else
  {
    vk_PNGData = [v38[5] vk_PNGData];
  }

  _Block_object_dispose(&v37, 8);

  return vk_PNGData;
}

void __63__VKCImageAnalyzerRequest_blockingCreatePNGAssetDataWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v8 = getPHImageErrorKeySymbolLoc_ptr;
  v17 = getPHImageErrorKeySymbolLoc_ptr;
  if (!getPHImageErrorKeySymbolLoc_ptr)
  {
    v9 = PhotosLibrary();
    v15[3] = dlsym(v9, "PHImageErrorKey");
    getPHImageErrorKeySymbolLoc_ptr = v15[3];
    v8 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v8)
  {
    v13 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v14, 8);
    _Unwind_Resume(v13);
  }

  v10 = *v8;
  v11 = [v7 objectForKeyedSubscript:v10];

  if (v11 && *(a1 + 40))
  {
    v12 = v11;
    **(a1 + 40) = v11;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (BOOL)saveAssetsToFeedbackAttachmentsFolder:(id)folder error:(id *)error
{
  folderCopy = folder;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [(VKCImageAnalyzerRequest *)self URL];
  if (v8)
  {
    v9 = v8;
    localIdentifier = [(VKCImageAnalyzerRequest *)self localIdentifier];
    if (localIdentifier)
    {
    }

    else
    {
      v11 = [(VKCImageAnalyzerRequest *)self URL];
      isFileURL = [v11 isFileURL];

      if (isFileURL)
      {
        v13 = [(VKCImageAnalyzerRequest *)self URL];
        lastPathComponent = [v13 lastPathComponent];
        v15 = [folderCopy URLByAppendingPathComponent:lastPathComponent];
        v16 = [defaultManager copyItemAtURL:v13 toURL:v15 error:error];

LABEL_9:
        goto LABEL_10;
      }
    }
  }

  v17 = [(VKCImageAnalyzerRequest *)self blockingCreatePNGAssetDataWithError:error];
  v13 = v17;
  v16 = error == 0;
  if (!error && v17)
  {
    lastPathComponent = [folderCopy URLByAppendingPathComponent:@"RequestAsset.png"];
    v16 = [v13 writeToURL:lastPathComponent options:2 error:0];
    goto LABEL_9;
  }

LABEL_10:

  return v16;
}

- (CGSize)photosImageSize
{
  width = self->_photosImageSize.width;
  height = self->_photosImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)tempPixelBufferRef
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1B4335000, a2, OS_LOG_TYPE_ERROR, "Unable to create CVPixelBuffer from CGImage for request: %@", &v2, 0xCu);
}

@end