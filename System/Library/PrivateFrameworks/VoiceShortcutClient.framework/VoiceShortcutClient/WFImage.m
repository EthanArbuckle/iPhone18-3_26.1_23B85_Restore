@interface WFImage
+ (id)_applicationIconImageLoadingQueue;
+ (id)applicationIconImageForBundleIdentifier:(id)a3 format:(unint64_t)a4;
+ (id)applicationIconImageForBundleIdentifier:(id)a3 length:(double)a4 scale:(double)a5;
+ (id)applicationIconImageForCalendarDate:(id)a3 descriptor:(id)a4;
+ (id)documentIconImageForFileType:(id)a3;
+ (id)glyphNamed:(id)a3 pointSize:(double)a4 inCatalogs:(id)a5;
+ (id)glyphNamed:(id)a3 pointSize:(double)a4 symbolSize:(unint64_t)a5;
+ (id)glyphNamed:(id)a3 pointSize:(double)a4 symbolSize:(unint64_t)a5 scaleFactor:(double)a6;
+ (id)glyphNamed:(id)a3 pointSize:(double)a4 symbolSize:(unint64_t)a5 symbolWeight:(int64_t)a6 scaleFactor:(double)a7 rightToLeft:(BOOL)a8 appearanceName:(id)a9 inCatalogs:(id)a10;
+ (id)glyphNamed:(id)a3 pointSize:(double)a4 symbolWeight:(int64_t)a5 scaleFactor:(double)a6 inCatalogs:(id)a7;
+ (id)imageNamed:(id)a3 inBundle:(id)a4 scale:(double)a5;
+ (id)imageWithContentsOfURL:(id)a3;
+ (id)imageWithDeviceScreenScaleImageData:(id)a3;
+ (id)systemImageNamed:(id)a3 configuration:(id)a4 renderingMode:(unint64_t)a5;
+ (void)applicationIconImageForBundleIdentifier:(id)a3 length:(double)a4 scale:(double)a5 completionHandler:(id)a6;
- (BOOL)isEqual:(id)a3;
- (CGImage)CGImage;
- (CGImage)createNonRotatedCGImageRepresentation;
- (CGImage)internalCGImage;
- (CGImageSource)internalImageSource;
- (CGSize)CGImageSize;
- (CGSize)sizeInPixels;
- (CGSize)sizeInPoints;
- (NSData)PNGRepresentation;
- (NSImage)NSImage;
- (UIImage)UIImage;
- (UIImage)platformImage;
- (UIImage)untintedUIImage;
- (WFImage)imageWithDisplayStyle:(unint64_t)a3;
- (WFImage)imageWithRenderingMode:(unint64_t)a3;
- (WFImage)imageWithTintColor:(id)a3;
- (WFImage)initWithCGImage:(CGImage *)a3 scale:(double)a4 orientation:(unsigned int)a5 renderingMode:(unint64_t)a6;
- (WFImage)initWithCoder:(id)a3;
- (WFImage)initWithContentsOfURL:(id)a3;
- (WFImage)initWithData:(id)a3 scale:(double)a4 allowAnimated:(BOOL)a5;
- (WFImage)initWithName:(id)a3 bundle:(id)a4 scale:(double)a5;
- (WFImage)initWithPlatformImage:(id)a3;
- (WFImage)initWithPlatformImage:(id)a3 scale:(double)a4;
- (WFImage)initWithRepresentationType:(int64_t)a3;
- (WFImage)initWithSymbolName:(id)a3 configuration:(id)a4 renderingMode:(unint64_t)a5;
- (double)scale;
- (id)applicationIconImageWithFormat:(unint64_t)a3;
- (id)imageByTintingBitmapWithTintColor:(id)a3;
- (id)resizedImageWithSizeInPoints:(CGSize)a3;
- (id)resizedImageWithSizeInPoints:(CGSize)a3 scale:(double)a4;
- (id)roundedWithContinuousCornerRadius:(double)a3 size:(CGSize)a4;
- (id)tintedImageWithColor:(id)a3;
- (unint64_t)hash;
- (unsigned)orientation;
- (void)dealloc;
- (void)drawInContext:(id)a3 inRect:(CGRect)a4 blendMode:(int)a5 alpha:(double)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFImage

- (double)scale
{
  result = self->_scale;
  if (result == 0.0)
  {
    v3 = +[WFDevice currentDevice];
    [v3 screenScale];
    v5 = v4;

    return v5;
  }

  return result;
}

- (NSData)PNGRepresentation
{
  v52[1] = *MEMORY[0x1E69E9840];
  if ([(WFImage *)self hasValidImage])
  {
    v3 = objc_opt_new();
    v4 = [*MEMORY[0x1E6982F28] identifier];
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v5 = getCGImageDestinationCreateWithDataSymbolLoc_ptr;
    v50 = getCGImageDestinationCreateWithDataSymbolLoc_ptr;
    if (!getCGImageDestinationCreateWithDataSymbolLoc_ptr)
    {
      v6 = ImageIOLibrary_5544();
      v48[3] = dlsym(v6, "CGImageDestinationCreateWithData");
      getCGImageDestinationCreateWithDataSymbolLoc_ptr = v48[3];
      v5 = v48[3];
    }

    _Block_object_dispose(&v47, 8);
    if (!v5)
    {
      v31 = [MEMORY[0x1E696AAA8] currentHandler];
      v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGImageDestinationRef  _Nullable soft_CGImageDestinationCreateWithData(CFMutableDataRef _Nonnull, CFStringRef _Nonnull, size_t, CFDictionaryRef _Nullable)"}];
      [v31 handleFailureInFunction:v32 file:@"WFImage+Representations.m" lineNumber:19 description:{@"%s", dlerror()}];

      goto LABEL_46;
    }

    v7 = v5(v3, v4, 1, 0);

    if (!v7)
    {
LABEL_33:

      goto LABEL_35;
    }

    v8 = objc_opt_new();
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v9 = getkCGImagePropertyPNGCompressionFilterSymbolLoc_ptr;
    v50 = getkCGImagePropertyPNGCompressionFilterSymbolLoc_ptr;
    if (!getkCGImagePropertyPNGCompressionFilterSymbolLoc_ptr)
    {
      v10 = ImageIOLibrary_5544();
      v48[3] = dlsym(v10, "kCGImagePropertyPNGCompressionFilter");
      getkCGImagePropertyPNGCompressionFilterSymbolLoc_ptr = v48[3];
      v9 = v48[3];
    }

    _Block_object_dispose(&v47, 8);
    if (!v9)
    {
      v33 = [MEMORY[0x1E696AAA8] currentHandler];
      v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCGImagePropertyPNGCompressionFilter(void)"];
      [v33 handleFailureInFunction:v34 file:@"WFImage+Representations.m" lineNumber:23 description:{@"%s", dlerror()}];

      goto LABEL_46;
    }

    v51 = *v9;
    v52[0] = &unk_1F2931050;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v12 = getkCGImagePropertyPNGDictionarySymbolLoc_ptr;
    v50 = getkCGImagePropertyPNGDictionarySymbolLoc_ptr;
    if (!getkCGImagePropertyPNGDictionarySymbolLoc_ptr)
    {
      v13 = ImageIOLibrary_5544();
      v48[3] = dlsym(v13, "kCGImagePropertyPNGDictionary");
      getkCGImagePropertyPNGDictionarySymbolLoc_ptr = v48[3];
      v12 = v48[3];
    }

    _Block_object_dispose(&v47, 8);
    if (!v12)
    {
      v35 = [MEMORY[0x1E696AAA8] currentHandler];
      v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCGImagePropertyPNGDictionary(void)"];
      [v35 handleFailureInFunction:v36 file:@"WFImage+Representations.m" lineNumber:22 description:{@"%s", dlerror()}];

      goto LABEL_46;
    }

    [v8 setObject:v11 forKeyedSubscript:*v12];

    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v14 = getkCGImagePropertyPNGBandCountSymbolLoc_ptr;
    v50 = getkCGImagePropertyPNGBandCountSymbolLoc_ptr;
    if (!getkCGImagePropertyPNGBandCountSymbolLoc_ptr)
    {
      v15 = ImageIOLibrary_5544();
      v48[3] = dlsym(v15, "kCGImagePropertyPNGBandCount");
      getkCGImagePropertyPNGBandCountSymbolLoc_ptr = v48[3];
      v14 = v48[3];
    }

    _Block_object_dispose(&v47, 8);
    if (!v14)
    {
      v37 = [MEMORY[0x1E696AAA8] currentHandler];
      v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCGImagePropertyPNGBandCount(void)"];
      [v37 handleFailureInFunction:v38 file:@"WFImage+Representations.m" lineNumber:24 description:{@"%s", dlerror()}];

      goto LABEL_46;
    }

    [v8 setObject:&unk_1F2931068 forKeyedSubscript:*v14];
    [(WFImage *)self scale];
    if (v16 != 1.0)
    {
      v17 = [MEMORY[0x1E696AD98] numberWithDouble:v16 * 72.0];
      v47 = 0;
      v48 = &v47;
      v49 = 0x2020000000;
      v18 = getkCGImagePropertyDPIWidthSymbolLoc_ptr;
      v50 = getkCGImagePropertyDPIWidthSymbolLoc_ptr;
      if (!getkCGImagePropertyDPIWidthSymbolLoc_ptr)
      {
        v19 = ImageIOLibrary_5544();
        v48[3] = dlsym(v19, "kCGImagePropertyDPIWidth");
        getkCGImagePropertyDPIWidthSymbolLoc_ptr = v48[3];
        v18 = v48[3];
      }

      _Block_object_dispose(&v47, 8);
      if (!v18)
      {
        v43 = [MEMORY[0x1E696AAA8] currentHandler];
        v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCGImagePropertyDPIWidth(void)"];
        [v43 handleFailureInFunction:v44 file:@"WFImage+Representations.m" lineNumber:25 description:{@"%s", dlerror()}];

        goto LABEL_46;
      }

      [v8 setObject:v17 forKeyedSubscript:*v18];
      v47 = 0;
      v48 = &v47;
      v49 = 0x2020000000;
      v20 = getkCGImagePropertyDPIHeightSymbolLoc_ptr;
      v50 = getkCGImagePropertyDPIHeightSymbolLoc_ptr;
      if (!getkCGImagePropertyDPIHeightSymbolLoc_ptr)
      {
        v21 = ImageIOLibrary_5544();
        v48[3] = dlsym(v21, "kCGImagePropertyDPIHeight");
        getkCGImagePropertyDPIHeightSymbolLoc_ptr = v48[3];
        v20 = v48[3];
      }

      _Block_object_dispose(&v47, 8);
      if (!v20)
      {
        v45 = [MEMORY[0x1E696AAA8] currentHandler];
        v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCGImagePropertyDPIHeight(void)"];
        [v45 handleFailureInFunction:v46 file:@"WFImage+Representations.m" lineNumber:26 description:{@"%s", dlerror()}];

        goto LABEL_46;
      }

      [v8 setObject:v17 forKeyedSubscript:*v20];
    }

    v22 = [(WFImage *)self createNonRotatedCGImageRepresentation];
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v23 = getCGImageDestinationAddImageSymbolLoc_ptr;
    v50 = getCGImageDestinationAddImageSymbolLoc_ptr;
    if (!getCGImageDestinationAddImageSymbolLoc_ptr)
    {
      v24 = ImageIOLibrary_5544();
      v48[3] = dlsym(v24, "CGImageDestinationAddImage");
      getCGImageDestinationAddImageSymbolLoc_ptr = v48[3];
      v23 = v48[3];
    }

    _Block_object_dispose(&v47, 8);
    if (v23)
    {
      v23(v7, v22, v8);
      CGImageRelease(v22);
      v47 = 0;
      v48 = &v47;
      v49 = 0x2020000000;
      v25 = getCGImageDestinationFinalizeSymbolLoc_ptr;
      v50 = getCGImageDestinationFinalizeSymbolLoc_ptr;
      if (!getCGImageDestinationFinalizeSymbolLoc_ptr)
      {
        v26 = ImageIOLibrary_5544();
        v48[3] = dlsym(v26, "CGImageDestinationFinalize");
        getCGImageDestinationFinalizeSymbolLoc_ptr = v48[3];
        v25 = v48[3];
      }

      _Block_object_dispose(&v47, 8);
      if (v25)
      {
        v27 = v25(v7);
        CFRelease(v7);
        if (v27)
        {
          v28 = v3;
        }

        else
        {
          v28 = 0;
        }

        v7 = v28;

        goto LABEL_33;
      }

      v41 = [MEMORY[0x1E696AAA8] currentHandler];
      v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool soft_CGImageDestinationFinalize(CGImageDestinationRef _Nonnull)"];
      [v41 handleFailureInFunction:v42 file:@"WFImage+Representations.m" lineNumber:21 description:{@"%s", dlerror()}];
    }

    else
    {
      v39 = [MEMORY[0x1E696AAA8] currentHandler];
      v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void soft_CGImageDestinationAddImage(CGImageDestinationRef _Nonnull, CGImageRef _Nonnull, CFDictionaryRef _Nullable)"}];
      [v39 handleFailureInFunction:v40 file:@"WFImage+Representations.m" lineNumber:20 description:{@"%s", dlerror()}];
    }

LABEL_46:
    __break(1u);
  }

  v7 = 0;
LABEL_35:
  v29 = *MEMORY[0x1E69E9840];

  return v7;
}

- (CGImage)internalCGImage
{
  WeakRetained = objc_loadWeakRetained(&self->_internalCGImage);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    goto LABEL_17;
  }

  v5 = [(WFImage *)self representationType];
  if (v5 > 2)
  {
    if ((v5 - 4) < 2)
    {
      v10 = [(WFImage *)self platformImage];
      v4 = CGImageRetain([v10 CGImage]);

      goto LABEL_16;
    }

    if (v5 == 3)
    {
      v9 = CGImageRetain(self->_CGImage);
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  if ((v5 - 1) >= 2)
  {
    if (!v5)
    {
      return 0;
    }

LABEL_19:
    objc_storeWeak(&self->_internalCGImage, 0);
    return 0;
  }

  v6 = [(WFImage *)self internalImageSource];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v7 = getCGImageSourceCreateImageAtIndexSymbolLoc_ptr;
  v17 = getCGImageSourceCreateImageAtIndexSymbolLoc_ptr;
  if (!getCGImageSourceCreateImageAtIndexSymbolLoc_ptr)
  {
    v8 = ImageIOLibrary();
    v15[3] = dlsym(v8, "CGImageSourceCreateImageAtIndex");
    getCGImageSourceCreateImageAtIndexSymbolLoc_ptr = v15[3];
    v7 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (v7)
  {
    v9 = (v7)(v6, 0, 0);
LABEL_15:
    v4 = v9;
LABEL_16:
    objc_storeWeak(&self->_internalCGImage, v4);
    if (!v4)
    {
      return v4;
    }

LABEL_17:
    CFAutorelease(v4);
    return v4;
  }

  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGImageRef  _Nullable soft_CGImageSourceCreateImageAtIndex(CGImageSourceRef _Nonnull, size_t, CFDictionaryRef _Nullable)"}];
  [v12 handleFailureInFunction:v13 file:@"WFImage.m" lineNumber:40 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (UIImage)platformImage
{
  v3 = [(WFImage *)self tintColor];

  if (v3)
  {
    v4 = [(WFImage *)self tintColor];
    v5 = [(WFImage *)self imageWithTintColor:v4];
    v6 = [v5 untintedPlatformImage];
  }

  else
  {
    v6 = [(WFImage *)self untintedPlatformImage];
  }

  return v6;
}

- (UIImage)UIImage
{
  v3 = [(WFImage *)self tintColor];

  if (v3)
  {
    v4 = [(WFImage *)self tintColor];
    v5 = [(WFImage *)self imageWithTintColor:v4];
    v6 = [v5 untintedUIImage];
  }

  else
  {
    v6 = [(WFImage *)self untintedUIImage];
  }

  return v6;
}

- (UIImage)untintedUIImage
{
  WeakRetained = objc_loadWeakRetained(&self->_UIImage);
  if (!WeakRetained)
  {
    v4 = [(WFImage *)self representationType];
    v5 = 0;
    if (v4 > 2)
    {
      if (v4 != 3)
      {
        if (v4 == 4)
        {
          UIImageClass = getUIImageClass();
          v9 = [(WFImage *)self symbolName];
          v13 = [(WFImage *)self symbolConfiguration];
          v24 = [v13 uiKitConfiguration];
          v5 = [(objc_class *)UIImageClass _systemImageNamed:v9 withConfiguration:v24];

          goto LABEL_22;
        }

        if (v4 != 5)
        {
          goto LABEL_30;
        }

        v12 = getUIImageClass();
        v9 = [(WFImage *)self name];
        v13 = [(WFImage *)self bundle];
        v14 = [(objc_class *)v12 imageNamed:v9 inBundle:v13 withConfiguration:0];
LABEL_20:
        v5 = v14;
LABEL_22:

LABEL_29:
        goto LABEL_30;
      }

      v16 = objc_alloc(getUIImageClass());
      v17 = [(WFImage *)self CGImage];
      [(WFImage *)self scale];
      v19 = v18;
      v20 = [(WFImage *)self orientation]- 2;
      if (v20 > 6)
      {
        v21 = 0;
      }

      else
      {
        v21 = qword_1B1F36948[v20];
      }

      v15 = [v16 initWithCGImage:v17 scale:v21 orientation:v19];
    }

    else
    {
      if (v4)
      {
        if (v4 != 1)
        {
          if (v4 == 2)
          {
            if ([(WFImage *)self allowsAnimated])
            {
              v6 = [(WFImage *)self data];
              if ([v6 length] >= 5 && (v7 = objc_msgSend(v6, "bytes"), *v7 == 71) && v7[1] == 73)
              {
                v8 = v7[2];

                if (v8 == 70)
                {
                  v9 = [(WFImage *)self data];
                  [(WFImage *)self scale];
                  v11 = WFUIImageWithAnimatedGIFDataAndOptions(v9, v10);
LABEL_28:
                  v5 = v11;
                  goto LABEL_29;
                }
              }

              else
              {
              }
            }

            v25 = objc_alloc(getUIImageClass());
            v9 = [(WFImage *)self data];
            [(WFImage *)self scale];
            v11 = [v25 initWithData:v9 scale:?];
            goto LABEL_28;
          }

LABEL_30:
          WeakRetained = [v5 imageWithRenderingMode:{-[WFImage renderingMode](self, "renderingMode")}];

          objc_storeWeak(&self->_UIImage, WeakRetained);
          goto LABEL_31;
        }

        v22 = objc_alloc(getUIImageClass());
        v9 = [(WFImage *)self URL];
        v13 = [v9 path];
        v14 = [v22 initWithContentsOfFile:v13];
        goto LABEL_20;
      }

      getUIImageClass();
      v15 = objc_opt_new();
    }

    v5 = v15;
    goto LABEL_30;
  }

LABEL_31:
  v26 = WeakRetained;

  return v26;
}

- (CGImage)createNonRotatedCGImageRepresentation
{
  if ([(WFImage *)self orientation]== 1)
  {
    v3 = [(WFImage *)self CGImage];

    return CGImageRetain(v3);
  }

  else
  {
    [(WFImage *)self sizeInPoints];
    v6 = v5;
    v8 = v7;
    [(WFImage *)self scale];
    v10 = [WFBitmapContext HDRCapableContextWithSize:v6 scale:v8, v9];
    v11 = *MEMORY[0x1E695EFF8];
    v12 = *(MEMORY[0x1E695EFF8] + 8);
    [(WFImage *)self sizeInPoints];
    [(WFImage *)self drawInContext:v10 inRect:v11, v12, v13, v14];
    Image = CGBitmapContextCreateImage([v10 CGContext]);

    return Image;
  }
}

- (unsigned)orientation
{
  if (([(WFImage *)self representationType]- 1) > 1)
  {
    return self->_orientation;
  }

  v3 = [(WFImage *)self internalImageSource];
  soft_CGImageSourceCopyProperties(v3);
  v5 = v4;
  getkCGImagePropertyOrientation();
  v7 = [v5 objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = v7;
LABEL_4:
    v9 = [v8 integerValue];

LABEL_5:
    return v9;
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v11 = getCGImageSourceGetCountSymbolLoc_ptr;
  v27 = getCGImageSourceGetCountSymbolLoc_ptr;
  if (!getCGImageSourceGetCountSymbolLoc_ptr)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __getCGImageSourceGetCountSymbolLoc_block_invoke;
    v23 = &unk_1E7B02C60;
    v12 = ImageIOLibrary();
    v25[3] = dlsym(v12, "CGImageSourceGetCount");
    getCGImageSourceGetCountSymbolLoc_ptr = v25[3];
    v11 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (v11)
  {
    if (!v11(v3))
    {
      v9 = 1;
      goto LABEL_5;
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v13 = getCGImageSourceCopyPropertiesAtIndexSymbolLoc_ptr;
    v27 = getCGImageSourceCopyPropertiesAtIndexSymbolLoc_ptr;
    if (!getCGImageSourceCopyPropertiesAtIndexSymbolLoc_ptr)
    {
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __getCGImageSourceCopyPropertiesAtIndexSymbolLoc_block_invoke;
      v23 = &unk_1E7B02C60;
      v14 = ImageIOLibrary();
      v25[3] = dlsym(v14, "CGImageSourceCopyPropertiesAtIndex");
      getCGImageSourceCopyPropertiesAtIndexSymbolLoc_ptr = v25[3];
      v13 = v25[3];
    }

    _Block_object_dispose(&v24, 8);
    if (v13)
    {
      v15 = (v13)(v3, 0, 0);

      getkCGImagePropertyOrientation();
      v17 = [v15 objectForKeyedSubscript:v16];
      if (!v17)
      {
        v9 = 1;
        v5 = v15;
        goto LABEL_5;
      }

      v8 = v17;
      v5 = v15;
      goto LABEL_4;
    }

    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFDictionaryRef  _Nullable soft_CGImageSourceCopyPropertiesAtIndex(CGImageSourceRef _Nonnull, size_t, CFDictionaryRef _Nullable)"}];
    [v18 handleFailureInFunction:v19 file:@"WFImage.m" lineNumber:42 description:{@"%s", dlerror(), v20, v21, v22, v23}];
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"size_t soft_CGImageSourceGetCount(CGImageSourceRef _Nonnull)"];
    [v18 handleFailureInFunction:v19 file:@"WFImage.m" lineNumber:43 description:{@"%s", dlerror(), v20, v21, v22, v23}];
  }

  __break(1u);
  return result;
}

- (void)dealloc
{
  CGImageRelease(self->_CGImage);
  v3.receiver = self;
  v3.super_class = WFImage;
  [(WFImage *)&v3 dealloc];
}

- (CGImage)CGImage
{
  CGImage = self->_CGImage;
  if (CGImage)
  {
    v4 = CGImageRetain(CGImage);
    CFAutorelease(v4);
    return self->_CGImage;
  }

  else
  {

    return [(WFImage *)self internalCGImage];
  }
}

- (CGSize)sizeInPoints
{
  [(WFImage *)self sizeInPixels];
  v4 = v3;
  v6 = v5;
  [(WFImage *)self scale];
  v8 = v4 / v7;
  [(WFImage *)self scale];
  v10 = v6 / v9;
  v11 = v8;
  result.height = v10;
  result.width = v11;
  return result;
}

- (CGSize)sizeInPixels
{
  [(WFImage *)self CGImageSize];
  v4 = v3;
  v6 = v5;
  v7 = [(WFImage *)self orientation]- 5;
  if (v7 >= 4)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (v7 >= 4)
  {
    v9 = v6;
  }

  else
  {
    v9 = v4;
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)CGImageSize
{
  if (![(WFImage *)self internalImageSource])
  {
LABEL_13:
    v18 = [(WFImage *)self CGImage];
    Width = CGImageGetWidth(v18);
    Height = CGImageGetHeight(v18);
    goto LABEL_14;
  }

  soft_CGImageSourceCopyProperties([(WFImage *)self internalImageSource]);
  v4 = v3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v5 = getkCGImagePropertyPixelWidthSymbolLoc_ptr;
  v31 = getkCGImagePropertyPixelWidthSymbolLoc_ptr;
  if (!getkCGImagePropertyPixelWidthSymbolLoc_ptr)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __getkCGImagePropertyPixelWidthSymbolLoc_block_invoke;
    v26 = &unk_1E7B02C60;
    v27 = &v28;
    v6 = ImageIOLibrary();
    v29[3] = dlsym(v6, "kCGImagePropertyPixelWidth");
    getkCGImagePropertyPixelWidthSymbolLoc_ptr = *(v27[1] + 24);
    v5 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v5)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCGImagePropertyPixelWidth(void)"];
    [v21 handleFailureInFunction:v22 file:@"WFImage.m" lineNumber:47 description:{@"%s", dlerror(), *&v23, v24, v25, v26}];
LABEL_17:

    __break(1u);
    goto LABEL_18;
  }

  v7 = [v4 objectForKeyedSubscript:*v5];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v8 = getkCGImagePropertyPixelHeightSymbolLoc_ptr;
  v31 = getkCGImagePropertyPixelHeightSymbolLoc_ptr;
  if (!getkCGImagePropertyPixelHeightSymbolLoc_ptr)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __getkCGImagePropertyPixelHeightSymbolLoc_block_invoke;
    v26 = &unk_1E7B02C60;
    v27 = &v28;
    v9 = ImageIOLibrary();
    v29[3] = dlsym(v9, "kCGImagePropertyPixelHeight");
    getkCGImagePropertyPixelHeightSymbolLoc_ptr = *(v27[1] + 24);
    v8 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v8)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCGImagePropertyPixelHeight(void)"];
    [v21 handleFailureInFunction:v22 file:@"WFImage.m" lineNumber:46 description:{@"%s", dlerror(), *&v23, v24, v25, v26}];
    goto LABEL_17;
  }

  v10 = [v4 objectForKeyedSubscript:*v8];
  v11 = v10;
  v12 = 0;
  if (v7 && v10)
  {
    v13 = MEMORY[0x1E696B098];
    v23 = [v7 integerValue];
    *&v24 = [v11 integerValue];
    v12 = [v13 valueWithBytes:&v23 objCType:"{CGSize=dd}"];
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  [v12 wf_CGSizeValue];
  Width = v14;
  Height = v16;

LABEL_14:
  v19 = Width;
  v20 = Height;
LABEL_18:
  result.height = v20;
  result.width = v19;
  return result;
}

- (CGImageSource)internalImageSource
{
  WeakRetained = objc_loadWeakRetained(&self->_internalImageSource);
  if (WeakRetained)
  {
    v4 = WeakRetained;
LABEL_3:
    CFAutorelease(v4);
    return v4;
  }

  v6 = [(WFImage *)self representationType];
  if (v6 == 1)
  {
    v7 = [(WFImage *)self URL];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v8 = getCGImageSourceCreateWithURLSymbolLoc_ptr;
    v20 = getCGImageSourceCreateWithURLSymbolLoc_ptr;
    if (!getCGImageSourceCreateWithURLSymbolLoc_ptr)
    {
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __getCGImageSourceCreateWithURLSymbolLoc_block_invoke;
      v16 = &unk_1E7B02C60;
      v12 = ImageIOLibrary();
      v18[3] = dlsym(v12, "CGImageSourceCreateWithURL");
      getCGImageSourceCreateWithURLSymbolLoc_ptr = v18[3];
      v8 = v18[3];
    }

    _Block_object_dispose(&v17, 8);
    if (!v8)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGImageSourceRef  _Nullable soft_CGImageSourceCreateWithURL(CFURLRef _Nonnull, CFDictionaryRef _Nullable)"}];
      [v10 handleFailureInFunction:v11 file:@"WFImage.m" lineNumber:38 description:{@"%s", dlerror(), v13, v14, v15, v16}];
      goto LABEL_18;
    }

LABEL_14:
    v4 = v8(v7, 0);

    objc_storeWeak(&self->_internalImageSource, v4);
    if (!v4)
    {
      return v4;
    }

    goto LABEL_3;
  }

  if (v6 != 2)
  {
    objc_storeWeak(&self->_internalImageSource, 0);
    return 0;
  }

  v7 = [(WFImage *)self data];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v8 = getCGImageSourceCreateWithDataSymbolLoc_ptr;
  v20 = getCGImageSourceCreateWithDataSymbolLoc_ptr;
  if (!getCGImageSourceCreateWithDataSymbolLoc_ptr)
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __getCGImageSourceCreateWithDataSymbolLoc_block_invoke;
    v16 = &unk_1E7B02C60;
    v9 = ImageIOLibrary();
    v18[3] = dlsym(v9, "CGImageSourceCreateWithData");
    getCGImageSourceCreateWithDataSymbolLoc_ptr = v18[3];
    v8 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (v8)
  {
    goto LABEL_14;
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGImageSourceRef  _Nullable soft_CGImageSourceCreateWithData(CFDataRef _Nonnull, CFDictionaryRef _Nullable)"}];
  [v10 handleFailureInFunction:v11 file:@"WFImage.m" lineNumber:39 description:{@"%s", dlerror(), v13, v14, v15, v16}];
LABEL_18:

  __break(1u);
  return result;
}

+ (id)imageNamed:(id)a3 inBundle:(id)a4 scale:(double)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x1E696AAE8] mainBundle];
  }

  v11 = v10;
  v12 = [[WFImage alloc] initWithName:v7 bundle:v10 scale:a5];

  return v12;
}

- (id)tintedImageWithColor:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"WFImage+Tinting.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"color"}];
  }

  v6 = [WFBitmapContext alloc];
  [(WFImage *)self sizeInPoints];
  v8 = v7;
  v10 = v9;
  [(WFImage *)self scale];
  v12 = [(WFBitmapContext *)v6 initWithSize:0 opaque:v8 scale:v10, v11];
  v13 = [(WFBitmapContext *)v12 CGContext];
  v14 = *MEMORY[0x1E695EFF8];
  v15 = *(MEMORY[0x1E695EFF8] + 8);
  [(WFImage *)self sizeInPoints];
  v17 = v16;
  v19 = v18;
  CGContextSetFillColorWithColor(v13, [v5 CGColor]);
  v25.origin.x = v14;
  v25.origin.y = v15;
  v25.size.width = v17;
  v25.size.height = v19;
  CGContextFillRect(v13, v25);
  [(WFImage *)self drawInContext:v12 inRect:22 blendMode:v14 alpha:v15, v17, v19, 1.0];
  v20 = [(WFBitmapContext *)v12 image];
  v21 = [v20 imageWithRenderingMode:1];

  return v21;
}

- (NSImage)NSImage
{
  WeakRetained = objc_loadWeakRetained(&self->_NSImage);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  if ([(WFImage *)self representationType]== 2)
  {
    v4 = [(WFImage *)self data];
    [v9 encodeObject:v4 forKey:@"data"];

    [v9 encodeBool:-[WFImage allowsAnimated](self forKey:{"allowsAnimated"), @"allowsAnimated"}];
  }

  else
  {
    v5 = [(WFImage *)self PNGRepresentation];
    if (v5)
    {
      [v9 encodeObject:v5 forKey:@"data"];
    }
  }

  [(WFImage *)self scale];
  [v9 encodeDouble:@"scale" forKey:?];
  [v9 encodeInteger:-[WFImage renderingMode](self forKey:{"renderingMode"), @"renderingMode"}];
  v6 = [(WFImage *)self tintColor];
  [v9 encodeObject:v6 forKey:@"tintColor"];

  v7 = [(WFImage *)self symbolName];
  [v9 encodeObject:v7 forKey:@"symbolName"];

  v8 = [(WFImage *)self symbolConfiguration];
  [v9 encodeObject:v8 forKey:@"symbolConfiguration"];

  [v9 encodeInteger:-[WFImage displayStyle](self forKey:{"displayStyle"), @"displayStyle"}];
}

- (WFImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"renderingMode"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
  v7 = [v4 decodeIntegerForKey:@"displayStyle"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
  if ([v8 length])
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symbolConfiguration"];
    v10 = [(WFImage *)self initWithSymbolName:v8 configuration:v9 renderingMode:v5];

    if (!v10)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  tintColor = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (!tintColor)
  {
    v10 = [(WFImage *)self initWithRepresentationType:0];
    goto LABEL_9;
  }

  v12 = [v4 decodeBoolForKey:@"allowsAnimated"];
  [v4 decodeDoubleForKey:@"scale"];
  v13 = [(WFImage *)self initWithData:tintColor scale:v12 allowAnimated:?];
  v10 = v13;
  if (v13)
  {
    v13->_renderingMode = v5;

LABEL_7:
    v10->_displayStyle = v7;
    v14 = v6;
    tintColor = v10->_tintColor;
    v10->_tintColor = v14;
  }

LABEL_9:

LABEL_10:
  return v10;
}

- (unint64_t)hash
{
  v3 = [(WFImage *)self representationType];
  [(WFImage *)self scale];
  return v3 ^ [(WFImage *)self orientation]^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(v14) = 1;
    goto LABEL_21;
  }

  v6 = v4;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = 0;
    goto LABEL_18;
  }

  v7 = [(WFImage *)self representationType];
  if (v7 != [(WFImage *)v6 representationType])
  {
    goto LABEL_18;
  }

  [(WFImage *)self scale];
  v9 = v8;
  [(WFImage *)v6 scale];
  if (v9 != v10)
  {
    goto LABEL_18;
  }

  v11 = [(WFImage *)self orientation];
  if (v11 != [(WFImage *)v6 orientation])
  {
    goto LABEL_18;
  }

  v12 = [(WFImage *)self renderingMode];
  if (v12 != [(WFImage *)v6 renderingMode])
  {
    goto LABEL_18;
  }

  v13 = [(WFImage *)self representationType];
  LOBYTE(v14) = 1;
  if (v13 <= 2)
  {
    if (v13 == 1)
    {
      v30 = [(WFImage *)self URL];
      v31 = [(WFImage *)v6 URL];
      v24 = v30;
      v32 = v31;
      v25 = v32;
      if (v24 == v32)
      {
        LOBYTE(v14) = 1;
      }

      else
      {
        LOBYTE(v14) = 0;
        if (v24 && v32)
        {
          LOBYTE(v14) = [v24 isEqual:v32];
        }
      }

      goto LABEL_40;
    }

    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v23 = [(WFImage *)self allowsAnimated];
    if (v23 == [(WFImage *)v6 allowsAnimated])
    {
      v24 = [(WFImage *)self data];
      v25 = [(WFImage *)v6 data];
      LOBYTE(v14) = [v24 isEqual:v25];
LABEL_40:

      goto LABEL_19;
    }

LABEL_18:
    LOBYTE(v14) = 0;
    goto LABEL_19;
  }

  switch(v13)
  {
    case 3:
      v26 = [(WFImage *)self CGImage];
      LOBYTE(v14) = v26 == [(WFImage *)v6 CGImage];
      break;
    case 4:
      v27 = [(WFImage *)self symbolName];
      v28 = [(WFImage *)v6 symbolName];
      v17 = v27;
      v29 = v28;
      v19 = v29;
      if (v17 == v29)
      {
      }

      else
      {
        LOBYTE(v14) = 0;
        v20 = v29;
        v21 = v17;
        if (!v17 || !v29)
        {
          goto LABEL_49;
        }

        v14 = [v17 isEqualToString:v29];

        if (!v14)
        {
          goto LABEL_50;
        }
      }

      v33 = [(WFImage *)self symbolConfiguration];
      v34 = [(WFImage *)v6 symbolConfiguration];
LABEL_43:
      v35 = v34;
      v21 = v33;
      v36 = v35;
      v20 = v36;
      if (v21 == v36)
      {
        LOBYTE(v14) = 1;
      }

      else
      {
        LOBYTE(v14) = 0;
        if (v21 && v36)
        {
          LOBYTE(v14) = [v21 isEqual:v36];
        }
      }

      goto LABEL_49;
    case 5:
      v15 = [(WFImage *)self name];
      v16 = [(WFImage *)v6 name];
      v17 = v15;
      v18 = v16;
      v19 = v18;
      if (v17 == v18)
      {

LABEL_42:
        v33 = [(WFImage *)self bundle];
        v34 = [(WFImage *)v6 bundle];
        goto LABEL_43;
      }

      LOBYTE(v14) = 0;
      v20 = v18;
      v21 = v17;
      if (v17 && v18)
      {
        v14 = [v17 isEqualToString:v18];

        if (!v14)
        {
          goto LABEL_50;
        }

        goto LABEL_42;
      }

LABEL_49:

LABEL_50:
      break;
  }

LABEL_19:

LABEL_21:
  return v14;
}

- (WFImage)imageWithDisplayStyle:(unint64_t)a3
{
  v4 = [(WFImage *)self copy];
  v4[8] = a3;

  return v4;
}

- (WFImage)imageWithRenderingMode:(unint64_t)a3
{
  if ([(WFImage *)self renderingMode]== a3)
  {
    v5 = self;
  }

  else
  {
    v6 = [WFImage alloc];
    v7 = [(WFImage *)self CGImage];
    [(WFImage *)self scale];
    v5 = [(WFImage *)v6 initWithCGImage:v7 scale:[(WFImage *)self orientation] orientation:a3 renderingMode:v8];
    if (v5)
    {
      v5->_representationType = [(WFImage *)self representationType];
      v9 = [(WFImage *)self symbolName];
      symbolName = v5->_symbolName;
      v5->_symbolName = v9;

      v11 = [(WFImage *)self name];
      name = v5->_name;
      v5->_name = v11;

      v13 = [(WFImage *)self bundle];
      bundle = v5->_bundle;
      v5->_bundle = v13;

      v15 = [(WFImage *)self data];
      data = v5->_data;
      v5->_data = v15;

      v17 = v5;
    }
  }

  return v5;
}

- (WFImage)imageWithTintColor:(id)a3
{
  v4 = a3;
  v5 = [(WFImage *)self copy];
  [v5 setTintColor:v4];

  return v5;
}

- (id)imageByTintingBitmapWithTintColor:(id)a3
{
  v4 = a3;
  v5 = [WFBitmapContext alloc];
  [(WFImage *)self sizeInPoints];
  v7 = v6;
  v9 = v8;
  [(WFImage *)self scale];
  v11 = [(WFBitmapContext *)v5 initWithSize:0 opaque:v7 scale:v9, v10];
  v12 = [(WFBitmapContext *)v11 CGContext];
  v13 = [v4 CGColor];

  CGContextSetFillColorWithColor(v12, v13);
  v14 = [(WFBitmapContext *)v11 CGContext];
  [(WFImage *)self sizeInPixels];
  v16 = v15;
  [(WFImage *)self sizeInPixels];
  v24.size.height = v17;
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = v16;
  CGContextFillRect(v14, v24);
  [(WFImage *)self sizeInPoints];
  v19 = v18;
  [(WFImage *)self sizeInPoints];
  [(WFImage *)self drawInContext:v11 inRect:22 blendMode:0.0 alpha:0.0, v19, v20, 1.0];
  v21 = [(WFBitmapContext *)v11 image];

  return v21;
}

- (void)drawInContext:(id)a3 inRect:(CGRect)a4 blendMode:(int)a5 alpha:(double)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  if (!CGRectIsEmpty(v20))
  {
    v14 = [v13 CGContext];
    CGContextSaveGState(v14);
    CGContextSetBlendMode(v14, a5);
    CGContextSetAlpha(v14, a6);
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    MinX = CGRectGetMinX(v21);
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    MaxY = CGRectGetMaxY(v22);
    CGContextTranslateCTM(v14, MinX, MaxY);
    CGContextScaleCTM(v14, 1.0, -1.0);
    [v13 scale];
    [(WFImage *)self contentsTransformForDrawingWithSize:width scale:height, v17];
    CGContextConcatCTM(v14, &v19);
    v18 = [(WFImage *)self CGImage];
    if (v18)
    {
      v23.origin.x = *MEMORY[0x1E695EFF8];
      v23.origin.y = *(MEMORY[0x1E695EFF8] + 8);
      v23.size.width = width;
      v23.size.height = height;
      CGContextDrawImage(v14, v23, v18);
    }

    CGContextRestoreGState(v14);
  }
}

- (WFImage)initWithPlatformImage:(id)a3 scale:(double)a4
{
  v5 = [(WFImage *)self initWithPlatformImage:a3];
  v6 = v5;
  if (v5)
  {
    v5->_scale = a4;
    v7 = v5;
  }

  return v6;
}

- (WFImage)initWithPlatformImage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 renderingMode];
    v7 = [v5 imageOrientation] - 1;
    if (v7 > 6)
    {
      v8 = 1;
    }

    else
    {
      v8 = dword_1B1F36928[v7];
    }

    v10 = [v5 CGImage];
    [v5 scale];
    self = [(WFImage *)self initWithCGImage:v10 scale:v8 orientation:v6 renderingMode:?];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (WFImage)initWithName:(id)a3 bundle:(id)a4 scale:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(WFImage *)self initWithRepresentationType:5];
  if (v10)
  {
    v11 = [v8 copy];
    name = v10->_name;
    v10->_name = v11;

    objc_storeStrong(&v10->_bundle, a4);
    v10->_scale = a5;
    v13 = v10;
  }

  return v10;
}

- (WFImage)initWithData:(id)a3 scale:(double)a4 allowAnimated:(BOOL)a5
{
  v8 = a3;
  if (v8 && (self = -[WFImage initWithRepresentationType:](self, "initWithRepresentationType:", 2)) != 0 && (v9 = [v8 copy], data = self->_data, self->_data = v9, data, self->_scale = a4, self->_allowsAnimated = a5, -[WFImage hasValidImage](self, "hasValidImage")))
  {
    self = self;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (WFImage)initWithContentsOfURL:(id)a3
{
  v5 = a3;
  if (v5 && (v6 = [(WFImage *)self initWithRepresentationType:1], (self = v6) != 0) && (objc_storeStrong(&v6->_URL, a3), [(WFImage *)self hasValidImage]))
  {
    self = self;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (WFImage)initWithSymbolName:(id)a3 configuration:(id)a4 renderingMode:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(WFImage *)self initWithRepresentationType:4];
  if (v10)
  {
    v11 = [v8 copy];
    symbolName = v10->_symbolName;
    v10->_symbolName = v11;

    v10->_renderingMode = a5;
    objc_storeStrong(&v10->_symbolConfiguration, a4);
    v13 = v10;
  }

  return v10;
}

- (WFImage)initWithCGImage:(CGImage *)a3 scale:(double)a4 orientation:(unsigned int)a5 renderingMode:(unint64_t)a6
{
  if (a3 && (self = [(WFImage *)self initWithRepresentationType:3]) != 0)
  {
    v10 = self;
    self->_CGImage = CGImageRetain(a3);
    v10->_scale = a4;
    v10->_orientation = a5;
    v10->_renderingMode = a6;
    self = v10;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (WFImage)initWithRepresentationType:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = WFImage;
  v4 = [(WFImage *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_representationType = a3;
    v4->_scale = 1.0;
    v4->_orientation = 1;
    v4->_renderingMode = 0;
    v6 = v4;
  }

  return v5;
}

+ (id)imageWithContentsOfURL:(id)a3
{
  v3 = a3;
  v4 = [[WFImage alloc] initWithContentsOfURL:v3];

  return v4;
}

+ (id)imageWithDeviceScreenScaleImageData:(id)a3
{
  v3 = a3;
  v4 = +[WFDevice currentDevice];
  [v4 screenScale];
  v5 = [WFImage imageWithData:v3 scale:?];

  return v5;
}

- (id)roundedWithContinuousCornerRadius:(double)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = [WFBitmapContext alloc];
  [(WFImage *)self scale];
  v10 = [(WFBitmapContext *)v8 initWithSize:0 opaque:width scale:height, v9];
  v11 = [(WFBitmapContext *)v10 CGContext];
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = width;
  v16.size.height = height;
  v12 = CGPathCreateWithRoundedRect(v16, a3, a3, 0);
  CGContextAddPath(v11, v12);
  CGContextClip(v11);
  [(WFImage *)self drawInContext:v10 inRect:0.0, 0.0, width, height];
  v13 = [(WFBitmapContext *)v10 image];

  return v13;
}

- (id)applicationIconImageWithFormat:(unint64_t)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = [(WFImage *)self createNonRotatedCGImageRepresentation];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v6 = getISImageClass_softClass;
  v20 = getISImageClass_softClass;
  if (!getISImageClass_softClass)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __getISImageClass_block_invoke;
    v16[3] = &unk_1E7B02C60;
    v16[4] = &v17;
    __getISImageClass_block_invoke(v16);
    v6 = v18[3];
  }

  v7 = v6;
  _Block_object_dispose(&v17, 8);
  v8 = [v6 alloc];
  [(WFImage *)self scale];
  v9 = [v8 initWithCGImage:v5 scale:?];
  CGImageRelease(v5);
  v10 = objc_alloc(getISIconClass());
  v21[0] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v12 = [v10 initWithImages:v11];

  v13 = WFImageForIconAndFormat(v12, a3);

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)applicationIconImageForCalendarDate:(id)a3 descriptor:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v28 = 0;
  if (!CalendarUIKitLibraryCore_frameworkLibrary)
  {
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __CalendarUIKitLibraryCore_block_invoke;
    v25 = &__block_descriptor_40_e5_v8__0l;
    v26 = &v28;
    v29 = xmmword_1E7B00D20;
    v30 = 0;
    CalendarUIKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (CalendarUIKitLibraryCore_frameworkLibrary)
  {
    v7 = v28;
    if (!v28)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CalendarUIKitLibrary(void)"];
    [v5 handleFailureInFunction:v6 file:@"WFImage+Icons.m" lineNumber:22 description:{@"%s", v28}];

    __break(1u);
  }

  free(v7);
LABEL_5:
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__5938;
  v26 = __Block_byref_object_dispose__5939;
  v27 = 0;
  *&v29 = 0;
  *(&v29 + 1) = &v29;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__5938;
  v32 = __Block_byref_object_dispose__5939;
  v33 = 0;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v8 = objc_alloc(getISIconClass());
    v9 = [MEMORY[0x1E695DEE8] currentCalendar];
    v10 = [v8 initWithDate:v5 calendar:v9 format:0];
    v11 = *(v23 + 40);
    *(v23 + 40) = v10;

    v12 = WFImageForIconAndDescriptor(*(v23 + 40), v6);
    v13 = *(*(&v29 + 1) + 40);
    *(*(&v29 + 1) + 40) = v12;
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__WFImage_Icons__applicationIconImageForCalendarDate_descriptor___block_invoke;
    block[3] = &unk_1E7B00CE8;
    v20 = &v22;
    v18 = v5;
    v21 = &v29;
    v19 = v6;
    dispatch_sync(MEMORY[0x1E69E96A0], block);

    v13 = v18;
  }

  v14 = *(*(&v29 + 1) + 40);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v22, 8);
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

uint64_t __65__WFImage_Icons__applicationIconImageForCalendarDate_descriptor___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(getISIconClass());
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [v2 initWithDate:v3 calendar:v4 format:0];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = WFImageForIconAndDescriptor(*(*(*(a1 + 48) + 8) + 40), *(a1 + 40));
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return MEMORY[0x1EEE66BB8]();
}

+ (id)documentIconImageForFileType:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E6963658];
  v5 = [v3 utType];
  v6 = [v5 identifier];
  v7 = [v3 MIMEType];
  v8 = [v4 documentProxyForName:0 type:v6 MIMEType:v7];

  v9 = [objc_alloc(getISIconClass()) initWithResourceProxy:v8];
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v10 = getkISImageDescriptorCustomDocumentSizeSymbolLoc_ptr;
  v45 = getkISImageDescriptorCustomDocumentSizeSymbolLoc_ptr;
  if (!getkISImageDescriptorCustomDocumentSizeSymbolLoc_ptr)
  {
    v11 = IconServicesLibrary();
    v43[3] = dlsym(v11, "kISImageDescriptorCustomDocumentSize");
    getkISImageDescriptorCustomDocumentSizeSymbolLoc_ptr = v43[3];
    v10 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v10)
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ISImageDescriptorName getkISImageDescriptorCustomDocumentSize(void)"];
    [v34 handleFailureInFunction:v35 file:@"WFImage+Icons.m" lineNumber:30 description:{@"%s", dlerror()}];

    goto LABEL_23;
  }

  v12 = *v10;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v13 = getkISImageDescriptorBadgedDocumentSizeSymbolLoc_ptr;
  v45 = getkISImageDescriptorBadgedDocumentSizeSymbolLoc_ptr;
  v46[0] = v12;
  if (!getkISImageDescriptorBadgedDocumentSizeSymbolLoc_ptr)
  {
    v14 = IconServicesLibrary();
    v43[3] = dlsym(v14, "kISImageDescriptorBadgedDocumentSize");
    getkISImageDescriptorBadgedDocumentSizeSymbolLoc_ptr = v43[3];
    v13 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v13)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ISImageDescriptorName getkISImageDescriptorBadgedDocumentSize(void)"];
    [v36 handleFailureInFunction:v37 file:@"WFImage+Icons.m" lineNumber:31 description:{@"%s", dlerror()}];

    goto LABEL_23;
  }

  v15 = *v13;
  v46[1] = v15;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v16 = getkISImageDescriptorCustomDocumentScalableSizeSymbolLoc_ptr;
  v45 = getkISImageDescriptorCustomDocumentScalableSizeSymbolLoc_ptr;
  if (!getkISImageDescriptorCustomDocumentScalableSizeSymbolLoc_ptr)
  {
    v17 = IconServicesLibrary();
    v43[3] = dlsym(v17, "kISImageDescriptorCustomDocumentScalableSize");
    getkISImageDescriptorCustomDocumentScalableSizeSymbolLoc_ptr = v43[3];
    v16 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v16)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ISImageDescriptorName getkISImageDescriptorCustomDocumentScalableSize(void)"];
    [v38 handleFailureInFunction:v39 file:@"WFImage+Icons.m" lineNumber:32 description:{@"%s", dlerror()}];

    goto LABEL_23;
  }

  v18 = *v16;
  v46[2] = v18;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v19 = getkISImageDescriptorBadgedDocumentScalableSizeSymbolLoc_ptr;
  v45 = getkISImageDescriptorBadgedDocumentScalableSizeSymbolLoc_ptr;
  if (!getkISImageDescriptorBadgedDocumentScalableSizeSymbolLoc_ptr)
  {
    v20 = IconServicesLibrary();
    v43[3] = dlsym(v20, "kISImageDescriptorBadgedDocumentScalableSize");
    getkISImageDescriptorBadgedDocumentScalableSizeSymbolLoc_ptr = v43[3];
    v19 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v19)
  {
    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ISImageDescriptorName getkISImageDescriptorBadgedDocumentScalableSize(void)"];
    [v40 handleFailureInFunction:v41 file:@"WFImage+Icons.m" lineNumber:33 description:{@"%s", dlerror()}];

LABEL_23:
    __break(1u);
  }

  v47 = *v19;
  v21 = MEMORY[0x1E695DEC8];
  v22 = v47;
  v23 = [v21 arrayWithObjects:v46 count:4];

  v24 = [v23 if_compactMap:&__block_literal_global_67];
  v25 = WFISImagesForIconAndDescriptors(v9, v24);
  v26 = [v25 if_firstObjectPassingTest:&__block_literal_global_70];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = [v25 firstObject];
  }

  v29 = v28;
  v30 = [v28 CGImage];
  [v29 scale];
  v31 = [WFImage imageWithCGImage:v30 scale:1 orientation:?];

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

id __47__WFImage_Icons__documentIconImageForFileType___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [getISImageDescriptorClass() imageDescriptorNamed:v2];

  return v3;
}

+ (void)applicationIconImageForBundleIdentifier:(id)a3 length:(double)a4 scale:(double)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v12 = [WFImage applicationIconImageForBundleIdentifier:v10 length:a4 scale:a5];
  if (v12)
  {
    v11[2](v11, v12);
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:a4 scale:{a4, a5}];
    v14 = [objc_alloc(MEMORY[0x1E696E720]) initWithBundleIdentifier:v10];
    v15 = [a1 _applicationIconImageLoadingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89__WFImage_Icons__applicationIconImageForBundleIdentifier_length_scale_completionHandler___block_invoke;
    block[3] = &unk_1E7B01F90;
    v19 = v14;
    v20 = v13;
    v21 = v11;
    v16 = v13;
    v17 = v14;
    dispatch_async(v15, block);
  }
}

void __89__WFImage_Icons__applicationIconImageForBundleIdentifier_length_scale_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696E748] sharedResolver];
  v3 = [v2 resolvedAppMatchingDescriptor:*(a1 + 32)];

  if ([v3 isInstalled])
  {
    v4 = objc_alloc(MEMORY[0x1E69A8A00]);
    v5 = [v3 bundleIdentifier];
    v6 = [v4 initWithBundleIdentifier:v5];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __89__WFImage_Icons__applicationIconImageForBundleIdentifier_length_scale_completionHandler___block_invoke_2;
    v20[3] = &unk_1E7B00C58;
    v7 = *(a1 + 40);
    v21 = *(a1 + 48);
    [v6 getImageForImageDescriptor:v7 completion:v20];
  }

  else
  {
    [*(a1 + 40) size];
    v9 = v8;
    [*(a1 + 40) scale];
    v11 = v9 * v10;
    [*(a1 + 40) size];
    v13 = v12;
    [*(a1 + 40) scale];
    v15 = v13 * v14;
    v16 = [v3 bundleIdentifier];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __89__WFImage_Icons__applicationIconImageForBundleIdentifier_length_scale_completionHandler___block_invoke_4;
    v17[3] = &unk_1E7B00C80;
    v19 = *(a1 + 48);
    v18 = *(a1 + 40);
    [WFAppIconLoader loadIconWithBundleIdentifier:v16 desiredSize:v17 completionHandler:v11, v15];

    v6 = v19;
  }
}

void __89__WFImage_Icons__applicationIconImageForBundleIdentifier_length_scale_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __89__WFImage_Icons__applicationIconImageForBundleIdentifier_length_scale_completionHandler___block_invoke_3;
  v6[3] = &unk_1E7B01CB8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __89__WFImage_Icons__applicationIconImageForBundleIdentifier_length_scale_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__WFImage_Icons__applicationIconImageForBundleIdentifier_length_scale_completionHandler___block_invoke_5;
  block[3] = &unk_1E7B01F90;
  v6 = v3;
  v8 = *(a1 + 40);
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __89__WFImage_Icons__applicationIconImageForBundleIdentifier_length_scale_completionHandler___block_invoke_5(void *a1)
{
  if (a1[4])
  {
    v2 = a1[6];
    v3 = *(a1[6] + 16);

    v3();
  }

  else
  {
    v4 = [MEMORY[0x1E69A8A00] genericApplicationIcon];
    v8 = [v4 imageForDescriptor:a1[5]];

    v5 = a1[6];
    v6 = [v8 CGImage];
    [v8 scale];
    v7 = [WFImage imageWithCGImage:v6 scale:1 orientation:?];
    (*(v5 + 16))(v5, v7);
  }
}

void __89__WFImage_Icons__applicationIconImageForBundleIdentifier_length_scale_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) CGImage];
  [*(a1 + 32) scale];
  v4 = [WFImage imageWithCGImage:v3 scale:1 orientation:?];
  (*(v2 + 16))(v2, v4);
}

+ (id)applicationIconImageForBundleIdentifier:(id)a3 length:(double)a4 scale:(double)a5
{
  v8 = a3;
  v9 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:a4 scale:{a4, a5}];
  [v9 setAppearance:0];
  if ([v8 isEqualToString:@"com.apple.mobilecal"] && (objc_msgSend(MEMORY[0x1E695DF00], "date"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a1, "applicationIconImageForCalendarDate:descriptor:", v10, v9), v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
  {
    v12 = [MEMORY[0x1E695DF00] date];
    v13 = [a1 applicationIconImageForCalendarDate:v12 descriptor:v9];
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E696E720]) initWithBundleIdentifier:v8];
    if (![v11 isInstalled])
    {
      v13 = 0;
      goto LABEL_12;
    }

    v12 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:v8];
    v14 = [v12 imageForDescriptor:v9];
    v15 = v14;
    if (v14 && ([v14 placeholder] & 1) == 0)
    {
      v16 = [v15 CGImage];
      [v15 scale];
      v13 = [WFImage imageWithCGImage:v16 scale:1 orientation:?];
    }

    else
    {
      v13 = 0;
    }
  }

LABEL_12:

  return v13;
}

+ (id)_applicationIconImageLoadingQueue
{
  if (_applicationIconImageLoadingQueue_onceToken != -1)
  {
    dispatch_once(&_applicationIconImageLoadingQueue_onceToken, &__block_literal_global_5949);
  }

  v3 = _applicationIconImageLoadingQueue_queue;

  return v3;
}

void __51__WFImage_Icons___applicationIconImageLoadingQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.shortcuts.WFImage-ApplicationIconLoading", v2);
  v1 = _applicationIconImageLoadingQueue_queue;
  _applicationIconImageLoadingQueue_queue = v0;
}

+ (id)applicationIconImageForBundleIdentifier:(id)a3 format:(unint64_t)a4
{
  v6 = a3;
  v7 = WFImageApplicationIconCache();
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%lu", v6, a4];
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    v10 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
  }

  else
  {
    if (![v6 isEqualToString:@"com.apple.mobilecal"])
    {
      goto LABEL_8;
    }

    v14 = WFISImageDescriptorNameFromWFImageApplicationIconFormat(a4, v13);
    v15 = [getISImageDescriptorClass() imageDescriptorNamed:v14];
    [v15 setAppearance:0];
    v16 = [MEMORY[0x1E695DF00] date];
    v12 = [a1 applicationIconImageForCalendarDate:v16 descriptor:v15];

    if (!v12)
    {
LABEL_8:
      v17 = [objc_alloc(getISIconClass()) initWithBundleIdentifier:v6];
      v12 = WFImageForIconAndFormat(v17, a4);
    }

    v10 = WFImageApplicationIconCache();
    v18 = v12;
    if (!v12)
    {
      v18 = [MEMORY[0x1E695DFB0] null];
    }

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%lu", v6, a4];
    [v10 setObject:v18 forKey:v19];

    if (!v12)
    {
    }
  }

  return v12;
}

+ (id)systemImageNamed:(id)a3 configuration:(id)a4 renderingMode:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[WFImage alloc] initWithSymbolName:v8 configuration:v7 renderingMode:a5];

  return v9;
}

+ (id)glyphNamed:(id)a3 pointSize:(double)a4 symbolSize:(unint64_t)a5 symbolWeight:(int64_t)a6 scaleFactor:(double)a7 rightToLeft:(BOOL)a8 appearanceName:(id)a9 inCatalogs:(id)a10
{
  v12 = a8;
  v41 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v20 = a9;
  v21 = a10;
  v22 = v21;
  if (v19)
  {
    if (v21)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v35 = [MEMORY[0x1E696AAA8] currentHandler];
  [v35 handleFailureInMethod:a2 object:a1 file:@"WFImage+Glyphs.m" lineNumber:190 description:{@"Invalid parameter not satisfying: %@", @"name"}];

  if (!v22)
  {
LABEL_3:
    v22 = WFImageBeginUsingCoreGlyphsCatalogs();
    WFImageEndUsingCoreGlyphsCatalogs();
  }

LABEL_4:
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v23 = v22;
  v24 = [v23 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v37;
    if (v12)
    {
      v27 = 4;
    }

    else
    {
      v27 = 5;
    }

    if (a5 < 3)
    {
      v28 = a5 + 1;
    }

    else
    {
      v28 = 0;
    }

    while (2)
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v30 = [*(*(&v36 + 1) + 8 * i) namedVectorGlyphWithName:v19 scaleFactor:0 deviceIdiom:v27 layoutDirection:v28 glyphSize:a6 glyphWeight:v20 glyphPointSize:a7 appearanceName:a4];
        if (v30)
        {
          v32 = v30;
          v31 = -[WFImage initWithCGImage:scale:orientation:renderingMode:]([WFImage alloc], "initWithCGImage:scale:orientation:renderingMode:", [v30 image], 1, 2, a7);

          goto LABEL_19;
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  v31 = 0;
LABEL_19:

  v33 = *MEMORY[0x1E69E9840];

  return v31;
}

+ (id)glyphNamed:(id)a3 pointSize:(double)a4 symbolSize:(unint64_t)a5 scaleFactor:(double)a6
{
  v10 = a3;
  v11 = [a1 glyphNamed:v10 pointSize:a5 symbolSize:4 symbolWeight:WFShouldReverseLayoutDirection() scaleFactor:@"UIAppearanceLight" rightToLeft:0 appearanceName:a4 inCatalogs:a6];

  return v11;
}

+ (id)glyphNamed:(id)a3 pointSize:(double)a4 symbolWeight:(int64_t)a5 scaleFactor:(double)a6 inCatalogs:(id)a7
{
  v13 = a3;
  v14 = a7;
  if (!v13)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"WFImage+Glyphs.m" lineNumber:174 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v15 = [a1 glyphNamed:v13 pointSize:1 symbolSize:a5 symbolWeight:WFShouldReverseLayoutDirection() scaleFactor:@"UIAppearanceLight" rightToLeft:v14 appearanceName:a4 inCatalogs:a6];

  return v15;
}

+ (id)glyphNamed:(id)a3 pointSize:(double)a4 inCatalogs:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"WFImage+Glyphs.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v11 = +[WFDevice currentDevice];
  [v11 screenScale];
  v13 = v12;

  v14 = [a1 glyphNamed:v9 pointSize:1 symbolSize:4 symbolWeight:WFShouldReverseLayoutDirection() scaleFactor:@"UIAppearanceLight" rightToLeft:v10 appearanceName:a4 inCatalogs:v13];

  return v14;
}

+ (id)glyphNamed:(id)a3 pointSize:(double)a4 symbolSize:(unint64_t)a5
{
  v9 = a3;
  if (!v9)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"WFImage+Glyphs.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v10 = +[WFDevice currentDevice];
  [v10 screenScale];
  v12 = v11;

  v13 = [a1 glyphNamed:v9 pointSize:a5 symbolSize:4 symbolWeight:WFShouldReverseLayoutDirection() scaleFactor:@"UIAppearanceLight" rightToLeft:0 appearanceName:a4 inCatalogs:v12];

  return v13;
}

- (id)resizedImageWithSizeInPoints:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v7 = [WFBitmapContext HDRCapableContextWithSize:a3.width scale:a3.height, a4];
  if (v7)
  {
    [(WFImage *)self drawInContext:v7 inRect:0.0, 0.0, width, height];
    v8 = [v7 image];
    v9 = [v8 imageWithRenderingMode:{-[WFImage renderingMode](self, "renderingMode")}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)resizedImageWithSizeInPoints:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(WFImage *)self scale];

  return [(WFImage *)self resizedImageWithSizeInPoints:width scale:height, v6];
}

@end