@interface VKCImageAnalyzerRequest
+ (unint64_t)newQueryIDForParsec;
- (BOOL)saveAssetsToFeedbackAttachmentsFolder:(id)a3 error:(id *)a4;
- (CGImage)blockingGenerateCGImage;
- (CGSize)imageSize;
- (CGSize)imageSizeFromCGImageSource:(CGImageSource *)a3;
- (CGSize)photosImageSize;
- (NSArray)defaultBarcodeSymbologies;
- (NSString)description;
- (VKCImageAnalyzerRequest)init;
- (VKCImageAnalyzerRequest)initWithCGImage:(CGImage *)a3 orientation:(int64_t)a4 requestType:(unint64_t)a5;
- (VKCImageAnalyzerRequest)initWithCIImage:(id)a3 orientation:(int64_t)a4 requestType:(unint64_t)a5;
- (VKCImageAnalyzerRequest)initWithCVPixelBuffer:(__CVBuffer *)a3 orientation:(int64_t)a4 requestType:(unint64_t)a5;
- (VKCImageAnalyzerRequest)initWithImage:(id)a3 orientation:(int64_t)a4 requestType:(unint64_t)a5;
- (VKCImageAnalyzerRequest)initWithImage:(id)a3 requestType:(unint64_t)a4;
- (VKCImageAnalyzerRequest)initWithImageURL:(id)a3 requestType:(unint64_t)a4;
- (VKCImageAnalyzerRequest)initWithLocalIdentifier:(id)a3 photoLibraryURL:(id)a4 cgImage:(CGImage *)a5 orientation:(int64_t)a6 requestType:(unint64_t)a7;
- (VKCImageAnalyzerRequest)initWithLocalIdentifier:(id)a3 photoLibraryURL:(id)a4 imageSize:(CGSize)a5 requestType:(unint64_t)a6;
- (VKCImageAnalyzerRequest)initWithLocalIdentifier:(id)a3 photoLibraryURL:(id)a4 pixelBuffer:(__CVBuffer *)a5 orientation:(int64_t)a6 requestType:(unint64_t)a7;
- (VKCImageAnalyzerRequest)initWithView:(id)a3 requestType:(unint64_t)a4;
- (__CVBuffer)tempPixelBufferRef;
- (__CVBuffer)viPixelBufferRef;
- (id)blockingCreatePNGAssetDataWithError:(id *)a3;
- (id)blockingGenerateCIImage;
- (id)blockingGenerateImage;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createVNRequestHandler;
- (id)madRequests;
- (id)processedBarcodeSymbologies;
- (id)requestIDValue;
- (id)shortLoggingDescription;
- (id)viImageType;
- (id)viRequest;
- (unsigned)cgimageOrientation;
- (void)dealloc;
- (void)setBarcodeSymbologies:(id)a3;
- (void)setLocales:(id)a3;
- (void)setRequestID:(int)a3;
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
    v4 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v4 scale];
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

- (VKCImageAnalyzerRequest)initWithImage:(id)a3 requestType:(unint64_t)a4
{
  v6 = a3;
  v7 = -[VKCImageAnalyzerRequest initWithImage:orientation:requestType:](self, "initWithImage:orientation:requestType:", v6, [v6 vk_imageOrientation], a4);

  return v7;
}

- (VKCImageAnalyzerRequest)initWithImage:(id)a3 orientation:(int64_t)a4 requestType:(unint64_t)a5
{
  v9 = a3;
  v10 = [(VKCImageAnalyzerRequest *)self init];
  if (v10)
  {
    if (!v9)
    {
      v11 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [VKCImageAnalyzerRequest initWithImage:orientation:requestType:];
      }
    }

    objc_storeStrong(&v10->_image, a3);
    v10->_imageOrientation = a4;
    v10->_analysisTypes = a5;
    v10->_requestType = 0;
  }

  return v10;
}

- (VKCImageAnalyzerRequest)initWithCIImage:(id)a3 orientation:(int64_t)a4 requestType:(unint64_t)a5
{
  v9 = a3;
  v10 = [(VKCImageAnalyzerRequest *)self init];
  if (v10)
  {
    if (!v9)
    {
      v11 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [VKCImageAnalyzerRequest initWithCIImage:orientation:requestType:];
      }
    }

    objc_storeStrong(&v10->_ciImage, a3);
    v10->_imageOrientation = a4;
    v10->_analysisTypes = a5;
    v10->_requestType = 2;
  }

  return v10;
}

- (VKCImageAnalyzerRequest)initWithCGImage:(CGImage *)a3 orientation:(int64_t)a4 requestType:(unint64_t)a5
{
  v8 = [(VKCImageAnalyzerRequest *)self init];
  if (v8)
  {
    if (!a3)
    {
      v9 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [VKCImageAnalyzerRequest initWithCGImage:orientation:requestType:];
      }
    }

    v8->_cgImageRef = CGImageRetain(a3);
    v8->_imageOrientation = a4;
    v8->_analysisTypes = a5;
    v8->_requestType = 1;
  }

  return v8;
}

- (VKCImageAnalyzerRequest)initWithCVPixelBuffer:(__CVBuffer *)a3 orientation:(int64_t)a4 requestType:(unint64_t)a5
{
  if (a3 && !CVPixelBufferGetIOSurface(a3))
  {
    v10 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1B4335000, v10, OS_LOG_TYPE_DEFAULT, "pixelBuffer is not IOSurfaceBacked, converting to CIImage", v15, 2u);
    }

    v11 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:a3];
    v12 = [(VKCImageAnalyzerRequest *)self initWithCIImage:v11 orientation:a4 requestType:a5];
  }

  else
  {
    v9 = [(VKCImageAnalyzerRequest *)self init];
    if (v9)
    {
      if (a3)
      {
        v9->_pixelBuffer = CVPixelBufferRetain(a3);
      }

      else
      {
        v13 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [VKCImageAnalyzerRequest initWithCVPixelBuffer:orientation:requestType:];
        }
      }

      v9->_imageOrientation = a4;
      v9->_analysisTypes = a5;
      v9->_requestType = 3;
    }

    v12 = v9;
  }

  return v12;
}

- (VKCImageAnalyzerRequest)initWithLocalIdentifier:(id)a3 photoLibraryURL:(id)a4 imageSize:(CGSize)a5 requestType:(unint64_t)a6
{
  height = a5.height;
  width = a5.width;
  v12 = a3;
  v13 = a4;
  v14 = [(VKCImageAnalyzerRequest *)self init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_URL, a4);
    objc_storeStrong(&v15->_localIdentifier, a3);
    v15->_analysisTypes = a6;
    v15->_requestType = 5;
    v15->_photosImageSize.width = width;
    v15->_photosImageSize.height = height;
  }

  return v15;
}

- (VKCImageAnalyzerRequest)initWithLocalIdentifier:(id)a3 photoLibraryURL:(id)a4 cgImage:(CGImage *)a5 orientation:(int64_t)a6 requestType:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = [(VKCImageAnalyzerRequest *)self init];
  if (v15)
  {
    if (!a5)
    {
      v16 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [VKCImageAnalyzerRequest initWithCGImage:orientation:requestType:];
      }
    }

    v15->_cgImageRef = CGImageRetain(a5);
    objc_storeStrong(&v15->_URL, a4);
    objc_storeStrong(&v15->_localIdentifier, a3);
    v15->_imageOrientation = a6;
    v15->_analysisTypes = a7;
    v15->_requestType = 6;
  }

  return v15;
}

- (VKCImageAnalyzerRequest)initWithLocalIdentifier:(id)a3 photoLibraryURL:(id)a4 pixelBuffer:(__CVBuffer *)a5 orientation:(int64_t)a6 requestType:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = [(VKCImageAnalyzerRequest *)self init];
  if (v15)
  {
    if (a5)
    {
      v15->_pixelBuffer = CVPixelBufferRetain(a5);
    }

    else
    {
      v16 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [VKCImageAnalyzerRequest initWithLocalIdentifier:photoLibraryURL:pixelBuffer:orientation:requestType:];
      }
    }

    objc_storeStrong(&v15->_URL, a4);
    objc_storeStrong(&v15->_localIdentifier, a3);
    v15->_imageOrientation = a6;
    v15->_analysisTypes = a7;
    v15->_requestType = 7;
  }

  return v15;
}

- (VKCImageAnalyzerRequest)initWithImageURL:(id)a3 requestType:(unint64_t)a4
{
  v7 = a3;
  v8 = [(VKCImageAnalyzerRequest *)self init];
  if (v8)
  {
    if (!v7)
    {
      v9 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [VKCImageAnalyzerRequest initWithImageURL:requestType:];
      }
    }

    objc_storeStrong(&v8->_URL, a3);
    v8->_analysisTypes = a4;
    v8->_requestType = 4;
  }

  return v8;
}

- (VKCImageAnalyzerRequest)initWithView:(id)a3 requestType:(unint64_t)a4
{
  v6 = a3;
  if (!v6)
  {
    v7 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [VKCImageAnalyzerRequest initWithView:requestType:];
    }
  }

  v8 = [v6 vk_renderImageFromViewBackingStore];
  v9 = [(VKCImageAnalyzerRequest *)self initWithImage:v8 orientation:0 requestType:a4];

  return v9;
}

- (id)requestIDValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(VKCImageAnalyzerRequest *)self requestID];

  return [v2 numberWithInt:v3];
}

- (void)setRequestID:(int)a3
{
  v5 = [(VKCImageAnalyzerRequest *)self processDate];

  if (a3 >= 1 && !v5)
  {
    self->_requestID = a3;
  }
}

- (void)setLocales:(id)a3
{
  v6 = a3;
  v5 = [(VKCImageAnalyzerRequest *)self processDate];

  if (!v5)
  {
    objc_storeStrong(&self->_locales, a3);
  }
}

- (void)setBarcodeSymbologies:(id)a3
{
  v6 = a3;
  v5 = [(VKCImageAnalyzerRequest *)self processDate];

  if (!v5)
  {
    objc_storeStrong(&self->_barcodeSymbologies, a3);
  }
}

- (id)processedBarcodeSymbologies
{
  v3 = [(VKCImageAnalyzerRequest *)self barcodeSymbologies];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(VKCImageAnalyzerRequest *)self defaultBarcodeSymbologies];
  }

  v6 = v5;

  if (([(VKCImageAnalyzerRequest *)self analysisTypes]& 8) != 0)
  {
    v7 = [v6 vk_arrayByAddingNonNilObject:*MEMORY[0x1E69848A0]];

    v6 = v7;
  }

  return v6;
}

- (unsigned)cgimageOrientation
{
  v2 = [(VKCImageAnalyzerRequest *)self imageOrientation];

  return vk_cgImagePropertyOrientationFromVKOrientation(v2);
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
  v9 = [(VKCImageAnalyzerRequest *)self locales];
  v10 = [(VKCImageAnalyzerRequest *)self barcodeSymbologies];
  [(VKCImageAnalyzerRequest *)self imageSize];
  v13 = VKMUIStringForSize(v11, v12);
  v14 = VKMUIStringForImageOrientation([(VKCImageAnalyzerRequest *)self imageOrientation]);
  v15 = [v4 stringWithFormat:@"%@ \n requestID: %@ \n madRequestID: %@ \n cancelled: %@ \n analysisTypes: %@ \n requestType: %@ \n locales: %@ \n barcodeSymbologies %@ \n imageSize %@ \n orientation: %@", v5, v17, v3, v6, v7, v8, v9, v10, v13, v14];

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
      v6 = [(VKCImageAnalyzerRequest *)self viConfiguration];
      if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
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
        v17 = [v6 isScreenshotsVLUAuthorized];
        [v16 setVluAuthorized:v17];

        if (objc_opt_respondsToSelector())
        {
          v18 = [v6 environmentBundleIdentifier];
          [v16 setEnvironmentBundleIdentifier:v18];
        }

        [v3 setConfig:v16];
      }
    }

    else
    {
      v6 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
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
  v4 = [(VKCImageAnalyzerRequest *)self processedAnalysisTypes];
  if (v4)
  {
    v5 = [(VKCImageAnalyzerRequest *)self locales];
    if ([v5 count])
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

  if ((v4 & 0xC) != 0)
  {
    v8 = objc_alloc(MEMORY[0x1E69AE428]);
    v9 = [(VKCImageAnalyzerRequest *)self processedBarcodeSymbologies];
    v10 = [v8 initWithSymbologies:v9];

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

  if ((v4 & 0x10) != 0)
  {
    v14 = objc_alloc_init(MEMORY[0x1E69AE480]);
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[VKCImageAnalyzerRequest queryID](self, "queryID")}];
    [v14 setQueryID:v15];

    v16 = [(VKCImageAnalyzerRequest *)self viImageType];
    [v14 setImageType:v16];

    v17 = [(VKCImageAnalyzerRequest *)self imageURL];
    [v14 setImageURL:v17];

    v18 = [(VKCImageAnalyzerRequest *)self pageURL];
    [v14 setReferralURL:v18];

    v19 = [(VKCImageAnalyzerRequest *)self location];
    [v14 setLocation:v19];

    [v3 addObject:v14];
  }

  v20 = [v3 copy];

  return v20;
}

- (id)viImageType
{
  v2 = [(VKCImageAnalyzerRequest *)self imageSource];
  if (v2 > 2)
  {
    return 0;
  }

  else
  {
    return qword_1E7BE69F0[v2];
  }
}

- (__CVBuffer)viPixelBufferRef
{
  v3 = [(VKCImageAnalyzerRequest *)self pixelBuffer];
  if (v3)
  {
    v4 = v3;
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
    v4 = [(VKCImageAnalyzerRequest *)self tempPixelBufferRef];
    v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 0;
      v6 = "viPixelBufferRef provided by generating pixel buffer";
      v7 = &v9;
      goto LABEL_6;
    }
  }

  return v4;
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
      v3 = [(VKCImageAnalyzerRequest *)self cgImageRef];

      return vk_ioSurfaceBackedPixelBufferFromCGImage(v3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v5 = [(VKCImageAnalyzerRequest *)self image];
    v6 = [v5 ioSurface];

    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = self;
      _os_log_impl(&dword_1B4335000, v7, OS_LOG_TYPE_DEFAULT, "Creating tempPixelBufferRef from IOSurface for request: %@", buf, 0xCu);
    }

    CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v6, 0, &pixelBufferOut);
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
        v9 = [(VKCImageAnalyzerRequest *)self image];
        v10 = [v9 vk_cgImageGeneratingIfNecessary];

        if (v10)
        {
          CGImageGetColorSpace(v10);
          return vk_ioSurfaceBackedPixelBufferFromCGImage(v10);
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

  v8 = [(VKCImageAnalyzerRequest *)self requestType];
  v9 = 0;
  if (v8 > 1)
  {
    switch(v8)
    {
      case 2:
        v14 = [(VKCImageAnalyzerRequest *)self ciImage];
        break;
      case 3:
        v14 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:-[VKCImageAnalyzerRequest pixelBuffer](self options:{"pixelBuffer"), v7}];
        break;
      case 4:
        v10 = MEMORY[0x1E695F658];
        v11 = MEMORY[0x1E69DCAB8];
        v12 = [(VKCImageAnalyzerRequest *)self URL];
        v13 = [v11 vk_imageWithContentsOfURL:v12];
        v9 = [v10 imageWithCGImage:objc_msgSend(v13 options:{"vk_cgImage"), v7}];

        goto LABEL_13;
      default:
        goto LABEL_14;
    }

LABEL_11:
    v9 = v14;
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 != 1)
    {
      goto LABEL_14;
    }

    v14 = [MEMORY[0x1E695F658] imageWithCGImage:-[VKCImageAnalyzerRequest cgImageRef](self options:{"cgImageRef"), v7}];
    goto LABEL_11;
  }

  v15 = MEMORY[0x1E695F658];
  v12 = [(VKCImageAnalyzerRequest *)self image];
  v9 = [v15 imageWithCGImage:objc_msgSend(v12 options:{"vk_cgImage"), v7}];
LABEL_13:

LABEL_14:

  return v9;
}

- (id)blockingGenerateImage
{
  v3 = [(VKCImageAnalyzerRequest *)self requestType];
  v4 = 0;
  if (v3 > 1)
  {
    switch(v3)
    {
      case 2:
        v9 = MEMORY[0x1E69DCAB8];
        v6 = [(VKCImageAnalyzerRequest *)self ciImage];
        v10 = v9;
        break;
      case 3:
        v6 = [objc_alloc(MEMORY[0x1E695F658]) initWithCVPixelBuffer:{-[VKCImageAnalyzerRequest pixelBuffer](self, "pixelBuffer")}];
        v10 = MEMORY[0x1E69DCAB8];
        break;
      case 4:
        v5 = MEMORY[0x1E69DCAB8];
        v6 = [(VKCImageAnalyzerRequest *)self URL];
        v7 = [v5 vk_imageWithContentsOfURL:v6];
        goto LABEL_12;
      default:
        goto LABEL_15;
    }

    v7 = [v10 vk_imageWithCIImage:v6];
LABEL_12:
    v4 = v7;

    goto LABEL_15;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_15;
    }

    v8 = [MEMORY[0x1E69DCAB8] vk_imageWithCGImage:{-[VKCImageAnalyzerRequest cgImageRef](self, "cgImageRef")}];
  }

  else
  {
    v8 = [(VKCImageAnalyzerRequest *)self image];
  }

  v4 = v8;
LABEL_15:

  return v4;
}

- (CGImage)blockingGenerateCGImage
{
  v3 = [(VKCImageAnalyzerRequest *)self requestType];
  v4 = 0;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v10 = [(VKCImageAnalyzerRequest *)self ciImage];
      v4 = [v10 CGImage];

      if (v4)
      {
        return v4;
      }

      v11 = [MEMORY[0x1E695F620] context];
      v12 = [(VKCImageAnalyzerRequest *)self ciImage];
      [(VKCImageAnalyzerRequest *)self imageSize];
      v4 = [v11 createCGImage:v12 fromRect:VKMRectWithSize()];

      if (!v4)
      {
        return v4;
      }

      goto LABEL_15;
    }

    if (v3 != 3)
    {
      if (v3 == 4)
      {
        v5 = MEMORY[0x1E69DCAB8];
        v6 = [(VKCImageAnalyzerRequest *)self URL];
        v7 = [v5 vk_imageWithContentsOfURL:v6];
        v8 = [v7 vk_cgImage];

        return v8;
      }

      return v4;
    }

    v4 = vk_cgImageFromPixelBuffer([(VKCImageAnalyzerRequest *)self pixelBuffer]);
    if (v4)
    {
LABEL_15:
      CFAutorelease(v4);
    }

    return v4;
  }

  if (!v3)
  {
    v13 = [(VKCImageAnalyzerRequest *)self image];
    v4 = [v13 vk_cgImageGeneratingIfNecessary];

    return v4;
  }

  if (v3 != 1)
  {
    return v4;
  }

  return [(VKCImageAnalyzerRequest *)self cgImageRef];
}

- (id)createVNRequestHandler
{
  v3 = [(VKCImageAnalyzerRequest *)self requestType];
  v4 = 0;
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_14;
      }

      v9 = objc_alloc(MEMORY[0x1E69845B8]);
      v10 = [(VKCImageAnalyzerRequest *)self cgImageRef];
      v11 = [(VKCImageAnalyzerRequest *)self cgimageOrientation];
      v12 = [v9 initWithCGImage:v10 orientation:v11 options:MEMORY[0x1E695E0F8]];
      goto LABEL_11;
    }

    v18 = objc_alloc(MEMORY[0x1E69845B8]);
    v6 = [(VKCImageAnalyzerRequest *)self image];
    v19 = [v6 vk_cgImage];
    v20 = [(VKCImageAnalyzerRequest *)self cgimageOrientation];
    v8 = [v18 initWithCGImage:v19 orientation:v20 options:MEMORY[0x1E695E0F8]];
  }

  else
  {
    if (v3 != 2)
    {
      if (v3 != 3)
      {
        if (v3 != 4)
        {
          goto LABEL_14;
        }

        v5 = objc_alloc(MEMORY[0x1E69845B8]);
        v6 = [(VKCImageAnalyzerRequest *)self URL];
        v7 = [(VKCImageAnalyzerRequest *)self cgimageOrientation];
        v8 = [v5 initWithURL:v6 orientation:v7 options:MEMORY[0x1E695E0F8]];
        goto LABEL_13;
      }

      v15 = objc_alloc(MEMORY[0x1E69845B8]);
      v16 = [(VKCImageAnalyzerRequest *)self pixelBuffer];
      v17 = [(VKCImageAnalyzerRequest *)self cgimageOrientation];
      v12 = [v15 initWithCVPixelBuffer:v16 orientation:v17 options:MEMORY[0x1E695E0F8]];
LABEL_11:
      v4 = v12;
      goto LABEL_14;
    }

    v13 = objc_alloc(MEMORY[0x1E69845B8]);
    v6 = [(VKCImageAnalyzerRequest *)self ciImage];
    v14 = [(VKCImageAnalyzerRequest *)self cgimageOrientation];
    v8 = [v13 initWithCIImage:v6 orientation:v14 options:MEMORY[0x1E695E0F8]];
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
  v5 = [(VKCImageAnalyzerRequest *)self requestType];
  if (v5 <= 3)
  {
    if (v5 <= 1)
    {
      if (v5)
      {
        if (v5 != 1)
        {
          goto LABEL_22;
        }

        goto LABEL_15;
      }

      v12 = [(VKCImageAnalyzerRequest *)self image];
      [v12 size];
      Width = v13;
      v4 = v14;
LABEL_21:

      goto LABEL_22;
    }

    if (v5 == 2)
    {
      v12 = [(VKCImageAnalyzerRequest *)self ciImage];
      [v12 extent];
      Width = v21;
      v4 = v22;
      goto LABEL_21;
    }

LABEL_13:
    v8 = [(VKCImageAnalyzerRequest *)self pixelBuffer];
    if (v8)
    {
      v9 = v8;
      Width = CVPixelBufferGetWidth(v8);
      Height = CVPixelBufferGetHeight(v9);
LABEL_16:
      v4 = Height;
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  if (v5 <= 5)
  {
    if (v5 == 4)
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

  if (v5 == 6)
  {
LABEL_15:
    v11 = [(VKCImageAnalyzerRequest *)self cgImageRef];
    Width = CGImageGetWidth(v11);
    Height = CGImageGetHeight(v11);
    goto LABEL_16;
  }

  if (v5 == 7)
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

- (CGSize)imageSizeFromCGImageSource:(CGImageSource *)a3
{
  v3 = CGImageSourceCopyPropertiesAtIndex(a3, 0, 0);
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
    v13 = [v12 integerValue];

    if ((v13 - 5) >= 4)
    {
      v14 = v11;
    }

    else
    {
      v14 = v7;
    }

    if ((v13 - 5) < 4)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(VKCImageAnalyzerRequest *)self image];

  if (v4)
  {
    v5 = [VKCImageAnalyzerRequest alloc];
    v6 = [(VKCImageAnalyzerRequest *)self image];
    v7 = [(VKCImageAnalyzerRequest *)v5 initWithImage:v6 orientation:[(VKCImageAnalyzerRequest *)self imageOrientation] requestType:[(VKCImageAnalyzerRequest *)self analysisTypes]];
LABEL_5:
    v10 = v7;
LABEL_6:

    return v10;
  }

  v8 = [(VKCImageAnalyzerRequest *)self ciImage];

  if (v8)
  {
    v9 = [VKCImageAnalyzerRequest alloc];
    v6 = [(VKCImageAnalyzerRequest *)self ciImage];
    v7 = [(VKCImageAnalyzerRequest *)v9 initWithCIImage:v6 orientation:[(VKCImageAnalyzerRequest *)self imageOrientation] requestType:[(VKCImageAnalyzerRequest *)self analysisTypes]];
    goto LABEL_5;
  }

  if ([(VKCImageAnalyzerRequest *)self cgImageRef])
  {
    v12 = [VKCImageAnalyzerRequest alloc];
    v13 = [(VKCImageAnalyzerRequest *)self cgImageRef];
    v14 = [(VKCImageAnalyzerRequest *)self imageOrientation];
    v15 = [(VKCImageAnalyzerRequest *)self analysisTypes];

    return [(VKCImageAnalyzerRequest *)v12 initWithCGImage:v13 orientation:v14 requestType:v15];
  }

  else if ([(VKCImageAnalyzerRequest *)self pixelBuffer])
  {
    v16 = [VKCImageAnalyzerRequest alloc];
    v17 = [(VKCImageAnalyzerRequest *)self pixelBuffer];
    v18 = [(VKCImageAnalyzerRequest *)self imageOrientation];
    v19 = [(VKCImageAnalyzerRequest *)self analysisTypes];

    return [(VKCImageAnalyzerRequest *)v16 initWithCVPixelBuffer:v17 orientation:v18 requestType:v19];
  }

  else
  {
    v20 = [(VKCImageAnalyzerRequest *)self localIdentifier];

    if (v20)
    {
      v21 = [VKCImageAnalyzerRequest alloc];
      v6 = [(VKCImageAnalyzerRequest *)self localIdentifier];
      v22 = [(VKCImageAnalyzerRequest *)self URL];
      [(VKCImageAnalyzerRequest *)self imageSize];
      v10 = [(VKCImageAnalyzerRequest *)v21 initWithLocalIdentifier:v6 photoLibraryURL:v22 imageSize:[(VKCImageAnalyzerRequest *)self analysisTypes] requestType:v23, v24];

      goto LABEL_6;
    }

    v25 = [(VKCImageAnalyzerRequest *)self URL];

    if (v25)
    {
      v26 = [VKCImageAnalyzerRequest alloc];
      v6 = [(VKCImageAnalyzerRequest *)self URL];
      v7 = [(VKCImageAnalyzerRequest *)v26 initWithImageURL:v6 requestType:[(VKCImageAnalyzerRequest *)self analysisTypes]];
      goto LABEL_5;
    }

    [VKAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[VKCImageAnalyzerRequest copyWithZone:]" simulateCrash:0 showAlert:0 format:@"Unable to create a copy of VKImageAnalyzerRequest"];
    return 0;
  }
}

- (id)blockingCreatePNGAssetDataWithError:(id *)a3
{
  v52[1] = *MEMORY[0x1E69E9840];
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__13;
  v41 = __Block_byref_object_dispose__13;
  v42 = 0;
  v5 = [(VKCImageAnalyzerRequest *)self image];

  if (v5)
  {
    v6 = [(VKCImageAnalyzerRequest *)self image];
LABEL_5:
    v7 = v38[5];
    v38[5] = v6;
    goto LABEL_6;
  }

  if ([(VKCImageAnalyzerRequest *)self cgImageRef])
  {
    v6 = [MEMORY[0x1E69DCAB8] vk_imageWithCGImage:{-[VKCImageAnalyzerRequest cgImageRef](self, "cgImageRef")}];
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

  v16 = [(VKCImageAnalyzerRequest *)self localIdentifier];

  if (!v16)
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
    v26 = [(VKCImageAnalyzerRequest *)self localIdentifier];
    v52[0] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
    v28 = [v24 fetchAssetsWithLocalIdentifiers:v27 options:v23];
    v29 = [v28 firstObject];

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
    v35 = [v33 defaultManager];
    [(VKCImageAnalyzerRequest *)self imageSize];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __63__VKCImageAnalyzerRequest_blockingCreatePNGAssetDataWithError___block_invoke;
    v36[3] = &unk_1E7BE69A0;
    v36[4] = &v37;
    v36[5] = a3;
    [v35 requestImageForAsset:v29 targetSize:0 contentMode:v32 options:v36 resultHandler:?];
  }

LABEL_6:

LABEL_7:
  v8 = [(VKCImageAnalyzerRequest *)self imageOrientation];
  v9 = v38[5];
  if (v8 && v9)
  {
    v10 = [MEMORY[0x1E69DCAB8] vk_orientedImageFromImage:v9 toOrientation:v8];
    v11 = [v10 vk_PNGData];
  }

  else
  {
    v11 = [v38[5] vk_PNGData];
  }

  _Block_object_dispose(&v37, 8);

  return v11;
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

- (BOOL)saveAssetsToFeedbackAttachmentsFolder:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [(VKCImageAnalyzerRequest *)self URL];
  if (v8)
  {
    v9 = v8;
    v10 = [(VKCImageAnalyzerRequest *)self localIdentifier];
    if (v10)
    {
    }

    else
    {
      v11 = [(VKCImageAnalyzerRequest *)self URL];
      v12 = [v11 isFileURL];

      if (v12)
      {
        v13 = [(VKCImageAnalyzerRequest *)self URL];
        v14 = [v13 lastPathComponent];
        v15 = [v6 URLByAppendingPathComponent:v14];
        v16 = [v7 copyItemAtURL:v13 toURL:v15 error:a4];

LABEL_9:
        goto LABEL_10;
      }
    }
  }

  v17 = [(VKCImageAnalyzerRequest *)self blockingCreatePNGAssetDataWithError:a4];
  v13 = v17;
  v16 = a4 == 0;
  if (!a4 && v17)
  {
    v14 = [v6 URLByAppendingPathComponent:@"RequestAsset.png"];
    v16 = [v13 writeToURL:v14 options:2 error:0];
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
  v3 = a1;
  _os_log_error_impl(&dword_1B4335000, a2, OS_LOG_TYPE_ERROR, "Unable to create CVPixelBuffer from CGImage for request: %@", &v2, 0xCu);
}

@end