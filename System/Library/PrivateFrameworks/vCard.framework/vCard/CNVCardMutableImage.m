@interface CNVCardMutableImage
+ (CGRect)scaleRect:(CGRect)a3 byFactor:(double)a4;
+ (id)CGImageCreateWithData:(id)a3 maxSizeValue:(id)a4;
+ (id)scaleCropRects:(id)a3 factor:(double)a4;
- (BOOL)hasAlphaChannel;
- (BOOL)isSourceLossless;
- (BOOL)shouldReturnPNG;
- (CGSize)originalSize;
- (CGSize)size;
- (CNVCardMutableImage)initWithData:(id)a3 cropRects:(id)a4 size:(CGSize)a5;
- (NSNumber)compressionQuality;
- (id)copyWithZone:(_NSZone *)a3;
- (id)cropRects;
- (id)data;
- (id)renderCGImage:(CGImage *)a3;
- (void)dealloc;
- (void)describePropertiesWithBuilder:(id)a3;
- (void)nts_initCGImage;
- (void)nts_invalidateImageQuality;
- (void)nts_invalidateImageSize;
- (void)nts_updateRepresentation;
- (void)setCompressionQuality:(id)a3;
@end

@implementation CNVCardMutableImage

- (CNVCardMutableImage)initWithData:(id)a3 cropRects:(id)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = CNVCardMutableImage;
  v11 = [(CNVCardImage *)&v18 initWithData:v9 cropRects:v10 size:width, height];
  if (v11)
  {
    v12 = [v9 copy];
    originalData = v11->_originalData;
    v11->_originalData = v12;

    v14 = [v10 copy];
    originalCropRects = v11->_originalCropRects;
    v11->_originalCropRects = v14;

    v11->_originalSize.width = width;
    v11->_originalSize.height = height;
    v11->_CGImage = 0;
    v11->_sourceImageFormatUTI = 0;
    v16 = v11;
  }

  return v11;
}

- (void)dealloc
{
  CGImage = self->_CGImage;
  if (CGImage)
  {
    CFRelease(CGImage);
  }

  sourceImageFormatUTI = self->_sourceImageFormatUTI;
  if (sourceImageFormatUTI)
  {
    CFRelease(sourceImageFormatUTI);
  }

  v5.receiver = self;
  v5.super_class = CNVCardMutableImage;
  [(CNVCardMutableImage *)&v5 dealloc];
}

- (void)describePropertiesWithBuilder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CNVCardMutableImage;
  [(CNVCardImage *)&v21 describePropertiesWithBuilder:v4];
  v5 = MEMORY[0x277CCACA8];
  v6 = MEMORY[0x277CCABB0];
  v7 = [(CNVCardMutableImage *)self originalData];
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "length")}];
  v9 = [v5 stringWithFormat:@"%@ bytes", v8];
  v10 = [v4 appendName:@"originalData" object:v9];

  v11 = [(CNVCardMutableImage *)self originalCropRects];
  v12 = [v4 appendName:@"originalCropRects" object:v11];

  v13 = MEMORY[0x277CCACA8];
  v14 = MEMORY[0x277CCABB0];
  [(CNVCardMutableImage *)self originalSize];
  v15 = [v14 numberWithDouble:?];
  v16 = MEMORY[0x277CCABB0];
  [(CNVCardMutableImage *)self originalSize];
  v18 = [v16 numberWithDouble:v17];
  v19 = [v13 stringWithFormat:@"%@x%@", v15, v18];
  v20 = [v4 appendName:@"originalSize" object:v19];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CNVCardImage alloc];
  v5 = [(CNVCardMutableImage *)self data];
  v6 = [(CNVCardMutableImage *)self cropRects];
  v7 = [(CNVCardImage *)v4 initWithData:v5 cropRects:v6];

  return v7;
}

- (id)data
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__0;
  v8 = __Block_byref_object_dispose__0;
  v9 = 0;
  cn_runWithObjectLock();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __27__CNVCardMutableImage_data__block_invoke(uint64_t a1)
{
  [*(a1 + 32) nts_updateRepresentation];
  v2 = *(*(a1 + 32) + 8);
  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (BOOL)isSourceLossless
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  cn_runWithObjectLock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __39__CNVCardMutableImage_isSourceLossless__block_invoke(uint64_t a1)
{
  [*(a1 + 32) nts_initCGImage];
  v2 = *(*(a1 + 32) + 104);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v3 = getkUTTypeJPEGSymbolLoc_ptr;
  v13 = getkUTTypeJPEGSymbolLoc_ptr;
  if (!getkUTTypeJPEGSymbolLoc_ptr)
  {
    v4 = CoreServicesLibrary();
    v11[3] = dlsym(v4, "kUTTypeJPEG");
    getkUTTypeJPEGSymbolLoc_ptr = v11[3];
    v3 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v3)
  {
    __39__CNVCardMutableImage_isSourceLossless__block_invoke_cold_1();
    goto LABEL_9;
  }

  v5 = *v3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = getUTTypeConformsToSymbolLoc_ptr;
  v13 = getUTTypeConformsToSymbolLoc_ptr;
  if (!getUTTypeConformsToSymbolLoc_ptr)
  {
    v7 = CoreServicesLibrary();
    v11[3] = dlsym(v7, "UTTypeConformsTo");
    getUTTypeConformsToSymbolLoc_ptr = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v6)
  {
LABEL_9:
    v9 = __39__CNVCardMutableImage_isSourceLossless__block_invoke_cold_1();
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v9);
  }

  result = v6(v2, v5);
  *(*(*(a1 + 40) + 8) + 24) = result == 0;
  return result;
}

- (BOOL)hasAlphaChannel
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  cn_runWithObjectLock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __38__CNVCardMutableImage_hasAlphaChannel__block_invoke(uint64_t a1)
{
  [*(a1 + 32) nts_initCGImage];
  v2 = *(*(a1 + 32) + 72);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v3 = getCGImageGetAlphaInfoSymbolLoc_ptr;
  v10 = getCGImageGetAlphaInfoSymbolLoc_ptr;
  if (!getCGImageGetAlphaInfoSymbolLoc_ptr)
  {
    v4 = CoreGraphicsLibrary();
    v8[3] = dlsym(v4, "CGImageGetAlphaInfo");
    getCGImageGetAlphaInfoSymbolLoc_ptr = v8[3];
    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v3)
  {
    v6 = __39__CNVCardMutableImage_isSourceLossless__block_invoke_cold_1();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  result = v3(v2);
  *(*(*(a1 + 40) + 8) + 24) = (result > 6) | (0x1Eu >> result) & 1;
  return result;
}

- (CGSize)size
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3010000000;
  v9 = &unk_27722227A;
  v10 = *MEMORY[0x277CCA870];
  cn_runWithObjectLock();
  v2 = v7[4];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  v4 = v2;
  v5 = v3;
  result.height = v5;
  result.width = v4;
  return result;
}

__n128 __27__CNVCardMutableImage_size__block_invoke(uint64_t a1)
{
  [*(a1 + 32) nts_updateRepresentation];
  result = *(*(a1 + 32) + 24);
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

void __31__CNVCardMutableImage_setSize___block_invoke(uint64_t a1)
{
  [*(a1 + 32) nts_invalidateImageSize];
  if (NSEqualSizes(*MEMORY[0x277CCA870], *(a1 + 40)) || (v2 = *(a1 + 40), [*(a1 + 32) originalSize], v2 >= v3) || (v4 = *(a1 + 48), objc_msgSend(*(a1 + 32), "originalSize"), v4 >= v5))
  {
    v6 = *(a1 + 32);

    [v6 setTargetSizeValue:0];
  }

  else
  {
    v7 = [MEMORY[0x277CCAE60] valueWithSize:{*(a1 + 40), *(a1 + 48)}];
    [*(a1 + 32) setTargetSizeValue:v7];
  }
}

- (void)nts_invalidateImageSize
{
  data = self->super._data;
  self->super._data = 0;

  cropRects = self->super._cropRects;
  self->super._cropRects = 0;

  targetSizeValue = self->_targetSizeValue;
  self->_targetSizeValue = 0;

  CGImage = self->_CGImage;
  if (CGImage)
  {
    CFRelease(CGImage);
  }

  self->_CGImage = 0;
  self->_attemptedCGImage = 0;
  sourceImageFormatUTI = self->_sourceImageFormatUTI;
  if (sourceImageFormatUTI)
  {
    CFRelease(sourceImageFormatUTI);
  }

  self->_sourceImageFormatUTI = 0;
}

- (NSNumber)compressionQuality
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__0;
  v8 = __Block_byref_object_dispose__0;
  v9 = 0;
  cn_runWithObjectLock();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (void)setCompressionQuality:(id)a3
{
  v4 = a3;
  v3 = v4;
  cn_runWithObjectLock();
}

void *__45__CNVCardMutableImage_setCompressionQuality___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[12] != *(a1 + 40))
  {
    [result nts_invalidateImageQuality];
    v3 = [*(a1 + 40) copy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 96);
    *(v4 + 96) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)nts_invalidateImageQuality
{
  data = self->super._data;
  self->super._data = 0;
  MEMORY[0x2821F96F8]();
}

- (id)cropRects
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__0;
  v8 = __Block_byref_object_dispose__0;
  v9 = 0;
  cn_runWithObjectLock();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __32__CNVCardMutableImage_cropRects__block_invoke(uint64_t a1)
{
  [*(a1 + 32) nts_updateRepresentation];
  v2 = *(*(a1 + 32) + 16);
  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (void)nts_initCGImage
{
  if (!self->_CGImage && !self->_attemptedCGImage)
  {
    v3 = [objc_opt_class() CGImageCreateWithData:self->_originalData maxSizeValue:self->_targetSizeValue];
    v4 = v3;
    self->_attemptedCGImage = 1;
    if (!v3)
    {
      goto LABEL_17;
    }

    v5 = [v3 imageRef];
    self->_CGImage = v5;
    if (!v5)
    {
      goto LABEL_17;
    }

    CFRetain(v5);
    if (!self->_CGImage)
    {
      goto LABEL_17;
    }

    v6 = [v4 sourceImageFormatUTI];
    self->_sourceImageFormatUTI = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    if (self->_targetSizeValue)
    {
      CGImage = self->_CGImage;
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v8 = getCGImageGetWidthSymbolLoc_ptr;
      v21 = getCGImageGetWidthSymbolLoc_ptr;
      if (!getCGImageGetWidthSymbolLoc_ptr)
      {
        v9 = CoreGraphicsLibrary();
        v19[3] = dlsym(v9, "CGImageGetWidth");
        getCGImageGetWidthSymbolLoc_ptr = v19[3];
        v8 = v19[3];
      }

      _Block_object_dispose(&v18, 8);
      if (v8)
      {
        v10 = v8(CGImage);
        v11 = self->_CGImage;
        v18 = 0;
        v19 = &v18;
        v20 = 0x2020000000;
        v12 = getCGImageGetHeightSymbolLoc_ptr;
        v21 = getCGImageGetHeightSymbolLoc_ptr;
        if (!getCGImageGetHeightSymbolLoc_ptr)
        {
          v13 = CoreGraphicsLibrary();
          v19[3] = dlsym(v13, "CGImageGetHeight");
          getCGImageGetHeightSymbolLoc_ptr = v19[3];
          v12 = v19[3];
        }

        _Block_object_dispose(&v18, 8);
        if (v12)
        {
          v14 = v12(v11);
          self->super._size.width = v10;
          self->super._size.height = v14;
          v15 = [objc_opt_class() scaleCropRects:self->_originalCropRects factor:v10 / self->_originalSize.width];
          cropRects = self->super._cropRects;
          self->super._cropRects = v15;

LABEL_17:
          return;
        }
      }

      else
      {
        __39__CNVCardMutableImage_isSourceLossless__block_invoke_cold_1();
      }

      v17 = __39__CNVCardMutableImage_isSourceLossless__block_invoke_cold_1();
      _Block_object_dispose(&v18, 8);
      _Unwind_Resume(v17);
    }

    objc_storeStrong(&self->super._cropRects, self->_originalCropRects);
    self->super._size = self->_originalSize;
    goto LABEL_17;
  }
}

- (void)nts_updateRepresentation
{
  [(CNVCardMutableImage *)self nts_initCGImage];
  if (!self->super._data)
  {
    v3 = [(CNVCardMutableImage *)self renderCGImage:self->_CGImage];
    data = self->super._data;
    self->super._data = v3;

    MEMORY[0x2821F96F8]();
  }
}

+ (id)CGImageCreateWithData:(id)a3 maxSizeValue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v7 = getCGImageSourceCreateWithDataSymbolLoc_ptr;
  v35 = getCGImageSourceCreateWithDataSymbolLoc_ptr;
  if (!getCGImageSourceCreateWithDataSymbolLoc_ptr)
  {
    v8 = ImageIOLibrary();
    v33[3] = dlsym(v8, "CGImageSourceCreateWithData");
    getCGImageSourceCreateWithDataSymbolLoc_ptr = v33[3];
    v7 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (!v7)
  {
    __39__CNVCardMutableImage_isSourceLossless__block_invoke_cold_1();
LABEL_30:
    __39__CNVCardMutableImage_isSourceLossless__block_invoke_cold_1();
LABEL_31:
    __39__CNVCardMutableImage_isSourceLossless__block_invoke_cold_1();
LABEL_32:
    __39__CNVCardMutableImage_isSourceLossless__block_invoke_cold_1();
    goto LABEL_33;
  }

  v9 = v7(v5, 0);
  if (!v9)
  {
    v29 = 0;
    goto LABEL_26;
  }

  v10 = v9;
  v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v12 = getkCGImageSourceCreateThumbnailFromImageAlwaysSymbolLoc_ptr;
  v35 = getkCGImageSourceCreateThumbnailFromImageAlwaysSymbolLoc_ptr;
  if (!getkCGImageSourceCreateThumbnailFromImageAlwaysSymbolLoc_ptr)
  {
    v13 = ImageIOLibrary();
    v33[3] = dlsym(v13, "kCGImageSourceCreateThumbnailFromImageAlways");
    getkCGImageSourceCreateThumbnailFromImageAlwaysSymbolLoc_ptr = v33[3];
    v12 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (!v12)
  {
    goto LABEL_30;
  }

  v14 = *v12;
  [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*v12];
  if (v6)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v15 = getkCGImageSourceThumbnailMaxPixelSizeSymbolLoc_ptr;
    v35 = getkCGImageSourceThumbnailMaxPixelSizeSymbolLoc_ptr;
    if (!getkCGImageSourceThumbnailMaxPixelSizeSymbolLoc_ptr)
    {
      v16 = ImageIOLibrary();
      v33[3] = dlsym(v16, "kCGImageSourceThumbnailMaxPixelSize");
      getkCGImageSourceThumbnailMaxPixelSizeSymbolLoc_ptr = v33[3];
      v15 = v33[3];
    }

    _Block_object_dispose(&v32, 8);
    if (!v15)
    {
LABEL_33:
      v31 = __39__CNVCardMutableImage_isSourceLossless__block_invoke_cold_1();
      _Block_object_dispose(&v32, 8);
      _Unwind_Resume(v31);
    }

    v17 = *v15;
    v18 = MEMORY[0x277CCABB0];
    [v6 sizeValue];
    v20 = v19;
    [v6 sizeValue];
    if (v20 >= v21)
    {
      v22 = v20;
    }

    else
    {
      v22 = v21;
    }

    v23 = [v18 numberWithDouble:v22];
    [v11 setObject:v23 forKeyedSubscript:v17];
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v24 = getCGImageSourceCreateThumbnailAtIndexSymbolLoc_ptr;
  v35 = getCGImageSourceCreateThumbnailAtIndexSymbolLoc_ptr;
  if (!getCGImageSourceCreateThumbnailAtIndexSymbolLoc_ptr)
  {
    v25 = ImageIOLibrary();
    v33[3] = dlsym(v25, "CGImageSourceCreateThumbnailAtIndex");
    getCGImageSourceCreateThumbnailAtIndexSymbolLoc_ptr = v33[3];
    v24 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (!v24)
  {
    goto LABEL_31;
  }

  v26 = v24(v10, 0, v11);
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v27 = getCGImageSourceGetTypeSymbolLoc_ptr;
  v35 = getCGImageSourceGetTypeSymbolLoc_ptr;
  if (!getCGImageSourceGetTypeSymbolLoc_ptr)
  {
    v28 = ImageIOLibrary();
    v33[3] = dlsym(v28, "CGImageSourceGetType");
    getCGImageSourceGetTypeSymbolLoc_ptr = v33[3];
    v27 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (!v27)
  {
    goto LABEL_32;
  }

  v29 = [[CGImageRefWithFormat alloc] initWithImage:v26 andFormat:v27(v10)];
  if (v26)
  {
    CFRelease(v26);
  }

  CFRelease(v10);

LABEL_26:

  return v29;
}

+ (id)scaleCropRects:(id)a3 factor:(double)a4
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__CNVCardMutableImage_scaleCropRects_factor___block_invoke;
  v6[3] = &__block_descriptor_48_e26___NSValue_16__0__NSValue_8l;
  v6[4] = a1;
  *&v6[5] = a4;
  v4 = [a3 _cn_mapValues:v6];

  return v4;
}

uint64_t __45__CNVCardMutableImage_scaleCropRects_factor___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAE60];
  v4 = *(a1 + 32);
  [a2 rectValue];
  v5 = *(a1 + 40);
  [v4 scaleRect:? byFactor:?];
  v9 = NSIntegralRect(v8);

  return [v3 valueWithRect:{v9.origin.x, v9.origin.y, v9.size.width, v9.size.height}];
}

+ (CGRect)scaleRect:(CGRect)a3 byFactor:(double)a4
{
  v4 = a3.origin.x * a4;
  v5 = a3.origin.y * a4;
  v6 = a3.size.width * a4;
  v7 = a3.size.height * a4;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (id)renderCGImage:(CGImage *)a3
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v5 = getCIImageClass_softClass;
  v31 = getCIImageClass_softClass;
  if (!getCIImageClass_softClass)
  {
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __getCIImageClass_block_invoke;
    v26 = &unk_27A7110B0;
    v27 = &v28;
    __getCIImageClass_block_invoke(&v23);
    v5 = v29[3];
  }

  v6 = v5;
  _Block_object_dispose(&v28, 8);
  v7 = [v5 imageWithCGImage:a3];
  if (!v7)
  {
    v16 = 0;
    goto LABEL_20;
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v8 = getCIContextClass_softClass;
  v31 = getCIContextClass_softClass;
  if (!getCIContextClass_softClass)
  {
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __getCIContextClass_block_invoke;
    v26 = &unk_27A7110B0;
    v27 = &v28;
    __getCIContextClass_block_invoke(&v23);
    v8 = v29[3];
  }

  v9 = v8;
  _Block_object_dispose(&v28, 8);
  v10 = [v8 context];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    if ([(CNVCardMutableImage *)self shouldReturnPNG])
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v12 = getkCIFormatRGBA8SymbolLoc_ptr;
      v31 = getkCIFormatRGBA8SymbolLoc_ptr;
      if (!getkCIFormatRGBA8SymbolLoc_ptr)
      {
        v23 = MEMORY[0x277D85DD0];
        v24 = 3221225472;
        v25 = __getkCIFormatRGBA8SymbolLoc_block_invoke;
        v26 = &unk_27A7110B0;
        v27 = &v28;
        v13 = CoreImageLibrary();
        v14 = dlsym(v13, "kCIFormatRGBA8");
        *(v27[1] + 24) = v14;
        getkCIFormatRGBA8SymbolLoc_ptr = *(v27[1] + 24);
        v12 = v29[3];
      }

      _Block_object_dispose(&v28, 8);
      if (v12)
      {
        v15 = [v10 PNGRepresentationOfImage:v7 format:*v12 colorSpace:objc_msgSend(v7 options:{"colorSpace"), v11}];
LABEL_18:
        v16 = v15;

        goto LABEL_19;
      }

      __39__CNVCardMutableImage_isSourceLossless__block_invoke_cold_1();
    }

    else
    {
      compressionQuality = self->_compressionQuality;
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v18 = getkCGImageDestinationLossyCompressionQualitySymbolLoc_ptr;
      v31 = getkCGImageDestinationLossyCompressionQualitySymbolLoc_ptr;
      if (!getkCGImageDestinationLossyCompressionQualitySymbolLoc_ptr)
      {
        v23 = MEMORY[0x277D85DD0];
        v24 = 3221225472;
        v25 = __getkCGImageDestinationLossyCompressionQualitySymbolLoc_block_invoke;
        v26 = &unk_27A7110B0;
        v27 = &v28;
        v19 = ImageIOLibrary();
        v20 = dlsym(v19, "kCGImageDestinationLossyCompressionQuality");
        *(v27[1] + 24) = v20;
        getkCGImageDestinationLossyCompressionQualitySymbolLoc_ptr = *(v27[1] + 24);
        v18 = v29[3];
      }

      _Block_object_dispose(&v28, 8);
      if (v18)
      {
        [v11 setObject:compressionQuality forKeyedSubscript:*v18];
        v15 = [v10 JPEGRepresentationOfImage:v7 colorSpace:objc_msgSend(v7 options:{"colorSpace"), v11}];
        goto LABEL_18;
      }
    }

    v22 = __39__CNVCardMutableImage_isSourceLossless__block_invoke_cold_1();
    _Block_object_dispose(&v28, 8);
    _Unwind_Resume(v22);
  }

  v16 = 0;
LABEL_19:

LABEL_20:

  return v16;
}

- (BOOL)shouldReturnPNG
{
  if ([(CNVCardMutableImage *)self isSourceLossless]|| (v3 = [(CNVCardMutableImage *)self hasAlphaChannel]))
  {
    compressionQuality = self->_compressionQuality;
    if (compressionQuality)
    {
      [(NSNumber *)compressionQuality doubleValue];
      LOBYTE(v3) = v5 >= 1.0;
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (CGSize)originalSize
{
  width = self->_originalSize.width;
  height = self->_originalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

uint64_t __39__CNVCardMutableImage_isSourceLossless__block_invoke_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return __getCIImageClass_block_invoke_cold_1(v0);
}

@end