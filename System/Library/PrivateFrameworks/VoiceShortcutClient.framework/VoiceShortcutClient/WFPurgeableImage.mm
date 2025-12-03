@interface WFPurgeableImage
- (CGImage)copyImage;
- (WFPurgeableImage)initWithCGImage:(CGImage *)image;
- (id)description;
- (void)accessImageContext:(id)context;
- (void)dealloc;
@end

@implementation WFPurgeableImage

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self)
  {
    width = self->_size.width;
    height = self->_size.height;
    bytes = self->_bytes;
  }

  else
  {
    bytes = 0;
    height = 0.0;
    width = 0.0;
  }

  v9 = bytes;
  v10 = [(NSPurgeableData *)v9 length];
  if (self)
  {
    v11 = self->_bytes;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v3 stringWithFormat:@"<%@ %p, size: %f x %f, bytes: %lu, discarded: %d>", v5, self, *&width, *&height, v10, -[NSPurgeableData isContentDiscarded](v11, "isContentDiscarded")];

  return v12;
}

- (void)accessImageContext:(id)context
{
  contextCopy = context;
  if (self)
  {
    bytes = self->_bytes;
    if (bytes)
    {
      goto LABEL_5;
    }

    v5 = objc_alloc(MEMORY[0x1E696AE58]);
    v6 = (self->_size.height * self->_bytesPerRow);
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E696AE58]);
    v6 = 0;
  }

  v7 = [v5 initWithLength:v6];
  v8 = self->_bytes;
  self->_bytes = v7;

  bytes = self->_bytes;
LABEL_5:
  if (([(NSPurgeableData *)bytes beginContentAccess]& 1) != 0)
  {
    v9 = self->_bytes;
    v10 = CGBitmapContextCreate([(NSPurgeableData *)v9 mutableBytes], self->_size.width, self->_size.height, self->_bitsPerComponent, self->_bytesPerRow, self->_colorSpace, self->_bitmapInfo);

    CGContextTranslateCTM(v10, 0.0, -self->_size.height);
    contextCopy[2](contextCopy, v10);
    CGContextRelease(v10);
    [(NSPurgeableData *)self->_bytes endContentAccess];
  }

  else
  {
    contextCopy[2](contextCopy, 0);
  }
}

- (CGImage)copyImage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__WFPurgeableImage_copyImage__block_invoke;
  v5[3] = &unk_1E7B022A0;
  v5[4] = &v6;
  [(WFPurgeableImage *)self accessImageContext:v5];
  v2 = v7[3];
  if (v2)
  {
    v3 = CFAutorelease(v2);
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

CGImageRef __29__WFPurgeableImage_copyImage__block_invoke(CGImageRef result, CGContextRef context)
{
  if (context)
  {
    v2 = result;
    result = CGBitmapContextCreateImage(context);
    *(*(*(v2 + 32) + 8) + 24) = result;
  }

  return result;
}

- (void)dealloc
{
  CGColorSpaceRelease(self->_colorSpace);
  v3.receiver = self;
  v3.super_class = WFPurgeableImage;
  [(WFPurgeableImage *)&v3 dealloc];
}

- (WFPurgeableImage)initWithCGImage:(CGImage *)image
{
  if (!image)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFImageCache.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"image"}];
  }

  v20.receiver = self;
  v20.super_class = WFPurgeableImage;
  v5 = [(WFPurgeableImage *)&v20 init];
  if (!v5 || ((Width = CGImageGetWidth(image), Height = CGImageGetHeight(image), ColorSpace = CGImageGetColorSpace(image), BitmapInfo = CGImageGetBitmapInfo(image), BytesPerRow = CGImageGetBytesPerRow(image), BitsPerComponent = CGImageGetBitsPerComponent(image), *MEMORY[0x1E695F060] == Width) ? (v12 = *(MEMORY[0x1E695F060] + 8) == Height) : (v12 = 0), v12))
  {
    v14 = 0;
  }

  else
  {
    v13 = BitsPerComponent;
    v14 = 0;
    if ((ColorSpace || (BitmapInfo & 0x1F) == 7) && BitsPerComponent && BytesPerRow)
    {
      v5->_size.width = Width;
      v5->_size.height = Height;
      v15 = CGColorSpaceRetain(ColorSpace);
      v5->_bitmapInfo = BitmapInfo;
      v5->_colorSpace = v15;
      v5->_bitsPerComponent = v13;
      v5->_bytesPerRow = BytesPerRow;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __36__WFPurgeableImage_initWithCGImage___block_invoke;
      v19[3] = &__block_descriptor_56_e20_v16__0__CGContext__8l;
      *&v19[4] = Width;
      *&v19[5] = Height;
      v19[6] = image;
      [(WFPurgeableImage *)v5 accessImageContext:v19];
      v14 = v5;
    }
  }

  return v14;
}

void __36__WFPurgeableImage_initWithCGImage___block_invoke(uint64_t a1, CGContextRef c)
{
  v2.size.width = *(a1 + 32);
  v2.size.height = *(a1 + 40);
  v2.origin.x = 0.0;
  v2.origin.y = 0.0;
  CGContextDrawImage(c, v2, *(a1 + 48));
}

@end