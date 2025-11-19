@interface _UIImageCGImageContent
- (BOOL)isEqual:(id)a3;
- (BOOL)isHDR;
- (BOOL)optimizeContentForImageSize:(CGSize)a3 completionHandler:(id)a4;
- (BOOL)prepareContentForDisplayWithCompletionHandler:(id)a3;
- (CGImage)_provideCGImageWithSize:(CGSize)a3 scale:(double)a4;
- (CGSize)sizeInPixels;
- (_UIImageCGImageContent)contentWithCGImage:(CGImage *)a3;
- (_UIImageCGImageContent)initWithCGImage:(CGImage *)a3 scale:(double)a4;
- (_UIImageCGImageContent)initWithCGImageSource:(CGImageSource *)a3 CGImage:(CGImage *)a4 scale:(double)a5;
- (_UIImageCGImageContent)initWithCGImageSource:(CGImageSource *)a3 scale:(double)a4;
- (double)imageMaximumHeadroom;
- (id)_activeDecompressorCreatingIfNecessary;
- (id)contentOptimizedForImageSize:(CGSize)a3;
- (id)contentPreparedForDisplay;
- (id)imageRendererFormat;
- (id)layerContents;
- (id)makeSDRVersion;
- (unint64_t)hash;
- (void)_contentWithCARenderRef;
- (void)_drawWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5 renditionContext:(id)a6;
- (void)dealloc;
@end

@implementation _UIImageCGImageContent

- (CGSize)sizeInPixels
{
  v2 = [(_UIImageCGImageContent *)self CGImage];
  Width = CGImageGetWidth(v2);
  Height = CGImageGetHeight(v2);
  v5 = Width;
  result.height = Height;
  result.width = v5;
  return result;
}

- (BOOL)isHDR
{
  ColorSpace = CGImageGetColorSpace([(_UIImageCGImageContent *)self CGImage]);

  return CGColorSpaceUsesITUR_2100TF(ColorSpace);
}

- (unint64_t)hash
{
  v2 = [(_UIImageCGImageContent *)self CGImage];

  return CFHash(v2);
}

- (void)dealloc
{
  CGImageRelease(atomic_load_explicit(&self->_imageRef, memory_order_acquire));
  v3.receiver = self;
  v3.super_class = _UIImageCGImageContent;
  [(_UIImageCGImageContent *)&v3 dealloc];
}

- (id)imageRendererFormat
{
  v3 = +[UIGraphicsImageRendererFormat preferredFormat];
  v4 = [(_UIImageCGImageContent *)self CGImage];
  ColorSpace = CGImageGetColorSpace(v4);
  if ((CGImageGetBitmapInfo(v4) & 0x100) != 0)
  {
    v6 = v3;
    v7 = 1;
LABEL_6:
    [v6 setPreferredRange:v7];
    goto LABEL_7;
  }

  if ([(_UIImageCGImageContent *)self isHDR])
  {
    if (CGColorSpaceIsHLGBased(ColorSpace))
    {
      v6 = v3;
      v7 = 101;
    }

    else
    {
      v6 = v3;
      v7 = 100;
    }

    goto LABEL_6;
  }

  if (!CGColorSpaceSupportsOutput(ColorSpace))
  {
    v6 = v3;
    v7 = 0;
    goto LABEL_6;
  }

  [v3 _setOverrideColorSpace:ColorSpace];
  [v3 _setOverrideBitsPerComponent:CGImageGetBitsPerComponent(v4)];
LABEL_7:
  [v3 setOpaque:CGImageHasAlpha() ^ 1];
  [(_UIImageContent *)self scale];
  [v3 setScale:?];

  return v3;
}

- (id)contentPreparedForDisplay
{
  v3 = [(_UIImageContent *)self _existingPreparedContentForDisplay];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [(_UIImageCGImageContent *)self _activeDecompressorCreatingIfNecessary];
    v6 = v5;
    if (!v5 || (v7 = [v5 waitForImageRef]) == 0 || (v8 = v7, v9 = [_UIImageCGImageContent alloc], -[_UIImageContent scale](self, "scale"), v10 = -[_UIImageCGImageContent initWithCGImage:scale:](v9, "initWithCGImage:scale:", v8), -[_UIImageCGImageContent _contentWithCARenderRef](v10), v11 = objc_claimAutoreleasedReturnValue(), v10, !v11))
    {
      v11 = [(_UIImageCGImageContent *)self _contentWithCARenderRef];
    }

    [(_UIImageContent *)_UIImageCGImageContent _cachePreparedContent:v11 forDisplayOfContent:self];
    objc_setAssociatedObject(self, @"com.apple.UIKit.active-decompressor", 0, 0x301);
    v4 = v11;
  }

  return v4;
}

- (id)_activeDecompressorCreatingIfNecessary
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = objc_getAssociatedObject(v1, @"com.apple.UIKit.active-decompressor");
    if (!v2)
    {
      v3 = [_UINewCGImageDecompressor alloc];
      v4 = [v1 CGImage];
      objc_opt_self();
      v5 = _UIImageDecompressionCompletionQueue();
      v2 = [(_UINewCGImageDecompressor *)v3 initWithSourceImage:v4 completionQueue:v5];

      objc_setAssociatedObject(v1, @"com.apple.UIKit.active-decompressor", v2, 1);
    }

    objc_sync_exit(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_contentWithCARenderRef
{
  if (a1 && ((v2 = [a1 CGImage], !objc_msgSend(MEMORY[0x1E69E58C0], "instancesRespondToSelector:", sel_CA_copyRenderValueWithColorspace_)) ? (v3 = objc_msgSend(v2, "CA_copyRenderValue")) : (v3 = objc_msgSend(v2, "CA_copyRenderValueWithColorspace:", CGImageGetColorSpace(v2))), v3))
  {
    v4 = [_UIImagePreparedCGImageContent alloc];
    [a1 scale];
    if (v4)
    {
      v6 = v5;
      if (!v2)
      {
        v9 = [MEMORY[0x1E696AAA8] currentHandler];
        [v9 handleFailureInMethod:sel_initWithCARenderRef_CGImage_scale_ object:v4 file:@"_UIImageContent.m" lineNumber:707 description:{@"Invalid parameter not satisfying: %@", @"originalImageRef != NULL"}];
      }

      v10.receiver = v4;
      v10.super_class = _UIImagePreparedCGImageContent;
      v7 = objc_msgSendSuper2(&v10, sel_initWithCGImage_scale_, v2, v6);
      if (v7)
      {
        v7[6] = CARenderRetain();
      }
    }

    else
    {
      v7 = 0;
    }

    CARenderRelease();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_UIImageCGImageContent)initWithCGImageSource:(CGImageSource *)a3 CGImage:(CGImage *)a4 scale:(double)a5
{
  if (!a4)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:740 description:@"Need an imageRef"];
  }

  v10 = CFGetTypeID(a4);
  if (v10 != CGImageGetTypeID())
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:741 description:@"imageRef passed is not a CGImageRef"];
  }

  v15.receiver = self;
  v15.super_class = _UIImageCGImageContent;
  v11 = [(_UIImageContent *)&v15 initWithScale:a5];
  if (v11)
  {
    atomic_store(CGImageRetain(a4), v11 + 5);
    [v11 _setCGImageSource:a3];
  }

  return v11;
}

- (_UIImageCGImageContent)initWithCGImage:(CGImage *)a3 scale:(double)a4
{
  ImageSource = CGImageGetImageSource();

  return [(_UIImageCGImageContent *)self initWithCGImageSource:ImageSource CGImage:a3 scale:a4];
}

- (_UIImageCGImageContent)initWithCGImageSource:(CGImageSource *)a3 scale:(double)a4
{
  ImageAtIndex = CGImageSourceCreateImageAtIndex(a3, 0, 0);
  if (ImageAtIndex)
  {
    v8 = ImageAtIndex;
    v9 = [(_UIImageCGImageContent *)self initWithCGImageSource:a3 CGImage:ImageAtIndex scale:a4];
    CGImageRelease(v8);
    self = v9;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)layerContents
{
  v2 = self;

  return [(_UIImageCGImageContent *)v2 CGImage];
}

- (double)imageMaximumHeadroom
{
  v2 = [(_UIImageCGImageContent *)self CGImage];
  ColorSpace = CGImageGetColorSpace(v2);
  v4 = CGColorSpaceUsesITUR_2100TF(ColorSpace);
  result = 1.0;
  if (v4)
  {
    if (CGImageGetHeadroom())
    {
      return 0.0;
    }

    else
    {
      v6 = CGImageGetColorSpace(v2);
      IsHLGBased = CGColorSpaceIsHLGBased(v6);
      result = 8.0;
      if (IsHLGBased)
      {
        return 5.0;
      }
    }
  }

  return result;
}

- (id)makeSDRVersion
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (![(_UIImageCGImageContent *)self isHDR])
  {
    v8 = self;
    goto LABEL_12;
  }

  v3 = [(_UIImageCGImageContent *)self CGImage];
  v4 = [(_UIImageContent *)self CGImageSource];
  if (!v4)
  {
    goto LABEL_7;
  }

  v16 = *MEMORY[0x1E696E018];
  v17[0] = *MEMORY[0x1E696E030];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v4, 0, v5);
  ColorSpace = CGImageGetColorSpace(ImageAtIndex);
  if (CGColorSpaceUsesITUR_2100TF(ColorSpace))
  {
    CFRelease(ImageAtIndex);

LABEL_7:
    v9 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
    Width = CGImageGetWidth(v3);
    Height = CGImageGetHeight(v3);
    if (CGImageHasAlpha())
    {
      v12 = 4353;
    }

    else
    {
      v12 = 4357;
    }

    v13 = CGBitmapContextCreate(0, Width, Height, 0x10uLL, 0, v9, v12);
    CGColorSpaceRelease(v9);
    CGContextSetBlendMode(v13, kCGBlendModeCopy);
    v19.origin.x = *MEMORY[0x1E695EFF8];
    v19.origin.y = *(MEMORY[0x1E695EFF8] + 8);
    v19.size.width = Width;
    v19.size.height = Height;
    CGContextDrawImage(v13, v19, v3);
    ImageAtIndex = CGBitmapContextCreateImage(v13);
    CGContextRelease(v13);
    goto LABEL_11;
  }

  if (!ImageAtIndex)
  {
    goto LABEL_7;
  }

LABEL_11:
  v14 = [_UIImageCGImageContent alloc];
  [(_UIImageContent *)self scale];
  v8 = [(_UIImageCGImageContent *)v14 initWithCGImageSource:v4 CGImage:ImageAtIndex scale:?];
  CFRelease(ImageAtIndex);
LABEL_12:

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    explicit = atomic_load_explicit(&self->_imageRef, memory_order_acquire);
    v6 = atomic_load_explicit(v4 + 5, memory_order_acquire);
    v10.receiver = self;
    v10.super_class = _UIImageCGImageContent;
    v7 = [(_UIImageContent *)&v10 isEqual:v4];
    if (explicit == v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGImage)_provideCGImageWithSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  [(_UIImageContent *)self size:a3.width];
  if (width == v8 && height == v7)
  {
    v15 = atomic_load(&self->_imageRef);
    v16 = CFRetain(v15);

    return CFAutorelease(v16);
  }

  else
  {
    v10 = 0;
    if (width > 0.0 && height > 0.0)
    {
      v11 = [(_UIImageCGImageContent *)self imageRendererFormat];
      v12 = [[UIGraphicsImageRenderer alloc] initWithSize:v11 format:width, height];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __56___UIImageCGImageContent__provideCGImageWithSize_scale___block_invoke;
      v17[3] = &unk_1E7106EC0;
      *&v17[5] = width;
      *&v17[6] = height;
      v17[4] = self;
      v13 = [(UIGraphicsImageRenderer *)v12 imageWithActions:v17];
      v10 = [v13 CGImage];
    }

    return v10;
  }
}

- (void)_drawWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5 renditionContext:(id)a6
{
  height = a3.height;
  width = a3.width;
  v9 = *MEMORY[0x1E695EFF8];
  v10 = *(MEMORY[0x1E695EFF8] + 8);
  v11 = [(_UIImageCGImageContent *)self CGImage];
  v12 = v9;
  v13 = v10;
  v14 = width;
  v15 = height;

  CGContextDrawImage(a5, *&v12, v11);
}

- (_UIImageCGImageContent)contentWithCGImage:(CGImage *)a3
{
  v5 = [_UIImageCGImageContent alloc];
  [(_UIImageContent *)self scale];
  v6 = [(_UIImageCGImageContent *)v5 initWithCGImage:a3 scale:?];

  return v6;
}

- (BOOL)prepareContentForDisplayWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(_UIImageContent *)self _existingPreparedContentForDisplay];
  if (v5)
  {
    objc_opt_self();
    v6 = _UIImageDecompressionCompletionQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72___UIImageCGImageContent_prepareContentForDisplayWithCompletionHandler___block_invoke;
    block[3] = &unk_1E70F4A50;
    v20 = v4;
    v19 = v5;
    dispatch_async(v6, block);

    v7 = v20;
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72___UIImageCGImageContent_prepareContentForDisplayWithCompletionHandler___block_invoke_2;
    aBlock[3] = &unk_1E70F37C0;
    aBlock[4] = self;
    v8 = v4;
    v17 = v8;
    v9 = _Block_copy(aBlock);
    v10 = [(_UIImageCGImageContent *)self _activeDecompressorCreatingIfNecessary];
    if (v10)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __72___UIImageCGImageContent_prepareContentForDisplayWithCompletionHandler___block_invoke_4;
      v13[3] = &unk_1E7106EE8;
      v13[4] = self;
      v14 = v8;
      v15 = v9;
      [(_UINewCGImageDecompressor *)v10 decompressAsync:v13];
    }

    else
    {
      v11 = AsyncFallbackPreparationQueue();
      dispatch_async(v11, v9);
    }

    v7 = v17;
  }

  return 1;
}

- (id)contentOptimizedForImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v19[4] = *MEMORY[0x1E69E9840];
  [(_UIImageCGImageContent *)self CGImage];
  v6 = [(_UIImageContent *)self CGImageSource];
  [(_UIImageContent *)self scale];
  v8 = v7;
  [(_UIImageCGImageContent *)self sizeInPixels];
  v9 = width * v8;
  if (width * v8 < height * v8)
  {
    v9 = height * v8;
  }

  v10 = vcvtpd_u64_f64(v9);
  if (v6)
  {
    v11 = *MEMORY[0x1E696DFE8];
    v18[0] = *MEMORY[0x1E696DFF0];
    v18[1] = v11;
    v19[0] = MEMORY[0x1E695E118];
    v19[1] = MEMORY[0x1E695E118];
    v18[2] = *MEMORY[0x1E696E100];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v10];
    v18[3] = *MEMORY[0x1E696E000];
    v19[2] = v12;
    v19[3] = MEMORY[0x1E695E110];
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
    v14 = [v13 mutableCopy];

    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v6, 0, v14);
    if (ThumbnailAtIndex)
    {
LABEL_5:
      v16 = [[_UIImageCGImageContent alloc] initWithCGImage:ThumbnailAtIndex scale:v8];
      CGImageRelease(ThumbnailAtIndex);
      goto LABEL_8;
    }
  }

  else
  {
    ThumbnailAtIndex = CGImageCreateThumb();
    if (ThumbnailAtIndex)
    {
      goto LABEL_5;
    }
  }

  v16 = 0;
LABEL_8:

  return v16;
}

- (BOOL)optimizeContentForImageSize:(CGSize)a3 completionHandler:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8 = a4;
  if (!v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:1105 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != NULL"}];
  }

  v9 = AsyncFallbackPreparationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72___UIImageCGImageContent_optimizeContentForImageSize_completionHandler___block_invoke;
  block[3] = &unk_1E71060F8;
  block[4] = self;
  v14 = v8;
  v15 = width;
  v16 = height;
  v10 = v8;
  dispatch_async(v9, block);

  return 1;
}

@end