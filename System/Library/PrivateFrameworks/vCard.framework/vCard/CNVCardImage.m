@interface CNVCardImage
+ (CGSize)sizeOfImageData:(id)a3;
- (CGSize)size;
- (CNVCardImage)init;
- (CNVCardImage)initWithData:(id)a3 cropRects:(id)a4;
- (CNVCardImage)initWithData:(id)a3 cropRects:(id)a4 size:(CGSize)a5;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)describePropertiesWithBuilder:(id)a3;
@end

@implementation CNVCardImage

- (CNVCardImage)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNVCardImage)initWithData:(id)a3 cropRects:(id)a4
{
  v4 = a3;
  if (a3)
  {
    v6 = a4;
    v7 = v4;
    [objc_opt_class() sizeOfImageData:v7];
    v8 = [(CNVCardImage *)self initWithData:v7 cropRects:v6 size:?];

    self = v8;
    v4 = self;
  }

  return v4;
}

- (CNVCardImage)initWithData:(id)a3 cropRects:(id)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a3;
  v10 = a4;
  if (v9 && (v17.receiver = self, v17.super_class = CNVCardImage, (self = [(CNVCardImage *)&v17 init]) != 0))
  {
    v11 = [v9 copy];
    data = self->_data;
    self->_data = v11;

    v13 = [v10 copy];
    cropRects = self->_cropRects;
    self->_cropRects = v13;

    self->_size.width = width;
    self->_size.height = height;
    self = self;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  [(CNVCardImage *)self describePropertiesWithBuilder:v3];
  v4 = [v3 build];

  return v4;
}

- (void)describePropertiesWithBuilder:(id)a3
{
  v20 = a3;
  v4 = MEMORY[0x277CCACA8];
  v5 = MEMORY[0x277CCABB0];
  v6 = [(CNVCardImage *)self data];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "length")}];
  v8 = [v4 stringWithFormat:@"%@ bytes", v7];
  v9 = [v20 appendName:@"data" object:v8];

  v10 = [(CNVCardImage *)self cropRects];
  v11 = [v20 appendName:@"cropRects" object:v10];

  v12 = MEMORY[0x277CCACA8];
  v13 = MEMORY[0x277CCABB0];
  [(CNVCardImage *)self size];
  v14 = [v13 numberWithDouble:?];
  v15 = MEMORY[0x277CCABB0];
  [(CNVCardImage *)self size];
  v17 = [v15 numberWithDouble:v16];
  v18 = [v12 stringWithFormat:@"%@x%@", v14, v17];
  v19 = [v20 appendName:@"size" object:v18];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CNVCardMutableImage alloc];
  v5 = [(CNVCardImage *)self data];
  v6 = [(CNVCardImage *)self cropRects];
  [(CNVCardImage *)self size];
  v7 = [(CNVCardMutableImage *)v4 initWithData:v5 cropRects:v6 size:?];

  return v7;
}

+ (CGSize)sizeOfImageData:(id)a3
{
  v3 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v4 = getCGImageSourceCreateWithDataSymbolLoc_ptr_0;
  v27 = getCGImageSourceCreateWithDataSymbolLoc_ptr_0;
  if (!getCGImageSourceCreateWithDataSymbolLoc_ptr_0)
  {
    v5 = ImageIOLibrary_0();
    v25[3] = dlsym(v5, "CGImageSourceCreateWithData");
    getCGImageSourceCreateWithDataSymbolLoc_ptr_0 = v25[3];
    v4 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v4)
  {
    __39__CNVCardMutableImage_isSourceLossless__block_invoke_cold_1();
LABEL_18:
    __39__CNVCardMutableImage_isSourceLossless__block_invoke_cold_1();
LABEL_19:
    __39__CNVCardMutableImage_isSourceLossless__block_invoke_cold_1();
    goto LABEL_20;
  }

  v6 = v4(v3, 0);
  if (!v6)
  {
    v15 = 0.0;
    v20 = 0.0;
    goto LABEL_16;
  }

  v7 = v6;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v8 = getCGImageSourceCopyPropertiesAtIndexSymbolLoc_ptr;
  v27 = getCGImageSourceCopyPropertiesAtIndexSymbolLoc_ptr;
  if (!getCGImageSourceCopyPropertiesAtIndexSymbolLoc_ptr)
  {
    v9 = ImageIOLibrary_0();
    v25[3] = dlsym(v9, "CGImageSourceCopyPropertiesAtIndex");
    getCGImageSourceCopyPropertiesAtIndexSymbolLoc_ptr = v25[3];
    v8 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v8)
  {
    goto LABEL_18;
  }

  v10 = (v8)(v7, 0, 0);
  CFRelease(v7);
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v11 = getkCGImagePropertyPixelWidthSymbolLoc_ptr;
  v27 = getkCGImagePropertyPixelWidthSymbolLoc_ptr;
  if (!getkCGImagePropertyPixelWidthSymbolLoc_ptr)
  {
    v12 = ImageIOLibrary_0();
    v25[3] = dlsym(v12, "kCGImagePropertyPixelWidth");
    getkCGImagePropertyPixelWidthSymbolLoc_ptr = v25[3];
    v11 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v11)
  {
    goto LABEL_19;
  }

  v13 = [v10 objectForKeyedSubscript:*v11];
  [v13 doubleValue];
  v15 = v14;

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v16 = getkCGImagePropertyPixelHeightSymbolLoc_ptr;
  v27 = getkCGImagePropertyPixelHeightSymbolLoc_ptr;
  if (!getkCGImagePropertyPixelHeightSymbolLoc_ptr)
  {
    v17 = ImageIOLibrary_0();
    v25[3] = dlsym(v17, "kCGImagePropertyPixelHeight");
    getkCGImagePropertyPixelHeightSymbolLoc_ptr = v25[3];
    v16 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v16)
  {
LABEL_20:
    v23 = __39__CNVCardMutableImage_isSourceLossless__block_invoke_cold_1();
    _Block_object_dispose(&v24, 8);
    _Unwind_Resume(v23);
  }

  v18 = [v10 objectForKeyedSubscript:*v16];
  [v18 doubleValue];
  v20 = v19;

LABEL_16:
  v21 = v15;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end