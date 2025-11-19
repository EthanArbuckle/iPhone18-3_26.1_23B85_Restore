@interface TSUImage
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)imageWithCGImage:(CGImage *)a3;
+ (id)imageWithCGImage:(CGImage *)a3 scale:(double)a4 orientation:(int64_t)a5;
+ (id)imageWithContentsOfFile:(id)a3;
+ (id)imageWithData:(id)a3;
+ (id)imageWithSize:(CGSize)a3 drawnUsingBlock:(id)a4;
+ (id)imageWithUIImage:(id)a3;
+ (id)noisePatternWithWidth:(unint64_t)a3 height:(unint64_t)a4 factor:(double)a5;
- (BOOL)isEmpty;
- (CGImage)CGImage;
- (CGImage)CGImageForSize:(CGSize)a3;
- (CGSize)size;
- (TSUImage)init;
- (TSUImage)initWithCGImage:(CGImage *)a3;
- (TSUImage)initWithCGImage:(CGImage *)a3 scale:(double)a4 orientation:(int64_t)a5;
- (TSUImage)initWithContentsOfFile:(id)a3;
- (TSUImage)initWithData:(id)a3;
- (TSUImage)initWithImageSourceRef:(CGImageSource *)a3;
- (TSUImage)initWithUIImage:(id)a3;
- (UIImage)UIImage;
- (double)scale;
- (id)JPEGRepresentationWithCompressionQuality:(double)a3;
- (id)PNGRepresentation;
- (id)TIFFRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)imagePartsWithLeftCapWidth:(double)a3 rightCapWidth:(double)a4 topCapHeight:(double)a5 bottomCapHeight:(double)a6;
- (id)stretchedImageOfSize:(CGSize)a3 leftCapWidth:(double)a4 rightCapWidth:(double)a5 topCapHeight:(double)a6 bottomCapHeight:(double)a7;
- (int64_t)imageOrientation;
- (void)dealloc;
- (void)drawInRect:(CGRect)a3;
- (void)drawInRect:(CGRect)a3 context:(CGContext *)a4 stretchingCenterWidthBy:(double)a5;
@end

@implementation TSUImage

+ (id)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [_TSUImageM allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___TSUImage;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

+ (id)imageWithContentsOfFile:(id)a3
{
  v3 = [[a1 alloc] initWithContentsOfFile:a3];

  return v3;
}

+ (id)imageWithData:(id)a3
{
  v3 = [[a1 alloc] initWithData:a3];

  return v3;
}

+ (id)imageWithCGImage:(CGImage *)a3
{
  v3 = [[a1 alloc] initWithCGImage:a3];

  return v3;
}

+ (id)imageWithCGImage:(CGImage *)a3 scale:(double)a4 orientation:(int64_t)a5
{
  v5 = [[a1 alloc] initWithCGImage:a3 scale:a5 orientation:a4];

  return v5;
}

- (TSUImage)init
{
  v3.receiver = self;
  v3.super_class = TSUImage;
  result = [(TSUImage *)&v3 init];
  if (result)
  {
    __dmb(0xBu);
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUImage copyWithZone:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUImage.m"), 733, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSUImage copyWithZone:]"), 0}]);
}

- (TSUImage)initWithContentsOfFile:(id)a3
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUImage initWithContentsOfFile:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUImage.m"), 739, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSUImage initWithContentsOfFile:]"), 0}]);
}

- (TSUImage)initWithData:(id)a3
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUImage initWithData:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUImage.m"), 745, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSUImage initWithData:]"), 0}]);
}

- (TSUImage)initWithCGImage:(CGImage *)a3
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUImage initWithCGImage:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUImage.m"), 751, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSUImage initWithCGImage:]"), 0}]);
}

- (TSUImage)initWithCGImage:(CGImage *)a3 scale:(double)a4 orientation:(int64_t)a5
{
  v5 = [TSUAssertionHandler currentHandler:a3];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUImage initWithCGImage:scale:orientation:]"];
  [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUImage.m"), 757, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSUImage initWithCGImage:scale:orientation:]"), 0}]);
}

- (TSUImage)initWithImageSourceRef:(CGImageSource *)a3
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUImage initWithImageSourceRef:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUImage.m"), 763, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSUImage initWithImageSourceRef:]"), 0}]);
}

- (CGSize)size
{
  v2 = +[TSUAssertionHandler currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUImage size]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUImage.m"), 770, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSUImage size]"), 0}]);
}

- (double)scale
{
  v2 = +[TSUAssertionHandler currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUImage scale]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUImage.m"), 775, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSUImage scale]"), 0}]);
}

- (void)dealloc
{
  CGImageRelease(self->mCachedSliceableImage);
  mImageSlices = self->mImageSlices;
  if (mImageSlices)
  {
    CFRelease(mImageSlices);
  }

  v4.receiver = self;
  v4.super_class = TSUImage;
  [(TSUImage *)&v4 dealloc];
}

- (CGImage)CGImageForSize:(CGSize)a3
{
  v3 = [TSUAssertionHandler currentHandler:a3.width];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUImage CGImageForSize:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUImage.m"), 790, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSUImage CGImageForSize:]"), 0}]);
}

- (CGImage)CGImage
{
  v2 = +[TSUAssertionHandler currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUImage CGImage]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUImage.m"), 795, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSUImage CGImage]"), 0}]);
}

- (int64_t)imageOrientation
{
  v2 = +[TSUAssertionHandler currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUImage imageOrientation]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUImage.m"), 800, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSUImage imageOrientation]"), 0}]);
}

- (BOOL)isEmpty
{
  v2 = [(TSUImage *)self CGImage];

  return TSUCGImageIsEmpty(v2);
}

- (id)imagePartsWithLeftCapWidth:(double)a3 rightCapWidth:(double)a4 topCapHeight:(double)a5 bottomCapHeight:(double)a6
{
  v38[34] = *MEMORY[0x277D85DE8];
  if ([(TSUImage *)self imageOrientation])
  {
    v11 = +[TSUAssertionHandler currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUImage imagePartsWithLeftCapWidth:rightCapWidth:topCapHeight:bottomCapHeight:]"];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUImage.m"), 813, @"Method may not produce desired output if image orientation is not facing up."}];
  }

  [(TSUImage *)self scale];
  v14 = v13;
  v15 = [(TSUImage *)self CGImageForContentsScale:?];
  v16 = v14 * a3;
  v17 = v14 * a4;
  v18 = v14 * a5;
  v19 = v14 * a6;
  Width = CGImageGetWidth(v15);
  Height = CGImageGetHeight(v15);
  v22 = Height;
  if (v18 >= Height)
  {
    v23 = Height;
  }

  else
  {
    v23 = v18;
  }

  if (v19 >= v22 - v23)
  {
    v24 = v22 - v23;
  }

  else
  {
    v24 = v19;
  }

  if (v16 >= Width)
  {
    v25 = Width;
  }

  else
  {
    v25 = v16;
  }

  if (v17 >= Width - v25)
  {
    v26 = Width - v25;
  }

  else
  {
    v26 = v17;
  }

  TSUSplitRectIntoSlices(v37, 0.0, 0.0, Width, v22, v25, v26, v23, v24);
  v27 = [MEMORY[0x277CBEB18] arrayWithCapacity:9];
  v28 = 0;
  v29 = v38;
  do
  {
    v30 = *(v29 - 2);
    v31 = *(v29 - 1);
    v32 = *v29;
    v33 = v29[1];
    v39.origin.x = v30;
    v39.origin.y = v31;
    v39.size.width = *v29;
    v39.size.height = v33;
    if (CGRectIsEmpty(v39) || (v40.origin.x = v30, v40.origin.y = v31, v40.size.width = v32, v40.size.height = v33, CGRectIsNull(v40)))
    {
      [v27 insertObject:objc_msgSend(MEMORY[0x277CBEB68] atIndex:{"null"), v28}];
    }

    else
    {
      v41.origin.x = v30;
      v41.origin.y = v31;
      v41.size.width = v32;
      v41.size.height = v33;
      v34 = CGImageCreateWithImageInRect(v15, v41);
      [(TSUImage *)self scale];
      [v27 insertObject:+[TSUImage imageWithCGImage:scale:orientation:](TSUImage atIndex:{"imageWithCGImage:scale:orientation:", v34, -[TSUImage imageOrientation](self, "imageOrientation"), v35), v28}];
      CGImageRelease(v34);
    }

    ++v28;
    v29 += 4;
  }

  while (v28 != 9);
  return v27;
}

- (id)TIFFRepresentation
{
  v2 = [(TSUImage *)self CGImage];

  return TSUCGImageTIFFRepresentation(v2);
}

- (id)JPEGRepresentationWithCompressionQuality:(double)a3
{
  v4 = [(TSUImage *)self CGImage];

  return TSUCGImageJPEGRepresentation(v4, a3);
}

- (id)PNGRepresentation
{
  v2 = [(TSUImage *)self CGImage];

  return TSUCGImagePNGRepresentation(v2);
}

- (id)stretchedImageOfSize:(CGSize)a3 leftCapWidth:(double)a4 rightCapWidth:(double)a5 topCapHeight:(double)a6 bottomCapHeight:(double)a7
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __89__TSUImage_stretchedImageOfSize_leftCapWidth_rightCapWidth_topCapHeight_bottomCapHeight___block_invoke;
  v12[3] = &unk_279D66100;
  v13 = a3;
  v12[4] = self;
  v14 = a6;
  v15 = a7;
  v16 = a4;
  v17 = a5;
  v8 = __89__TSUImage_stretchedImageOfSize_leftCapWidth_rightCapWidth_topCapHeight_bottomCapHeight___block_invoke(v12, [(TSUImage *)self CGImageForSize:?], 1.0);
  [(TSUImage *)self scale];
  v10 = [TSUImage imageWithCGImage:v8 scale:[(TSUImage *)self imageOrientation] orientation:v9];
  CGImageRelease(v8);
  return v10;
}

CGImageRef __89__TSUImage_stretchedImageOfSize_leftCapWidth_rightCapWidth_topCapHeight_bottomCapHeight___block_invoke(uint64_t a1, CGImageRef image, double a3)
{
  v38 = *MEMORY[0x277D85DE8];
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v8 = fabs(*(a1 + 40));
  [*(a1 + 32) scale];
  v10 = ceil(v8 * v9 * a3);
  v11 = fabs(*(a1 + 48));
  [*(a1 + 32) scale];
  v13 = ceil(v11 * v12 * a3);
  v14 = *(a1 + 64);
  if (*(a1 + 56) * a3 >= Height)
  {
    v15 = Height;
  }

  else
  {
    v15 = *(a1 + 56) * a3;
  }

  if (v14 * a3 >= Height - v15)
  {
    v16 = Height - v15;
  }

  else
  {
    v16 = v14 * a3;
  }

  v17 = *(a1 + 80);
  if (*(a1 + 72) * a3 >= Width)
  {
    v18 = Width;
  }

  else
  {
    v18 = *(a1 + 72) * a3;
  }

  if (v17 * a3 >= Width - v18)
  {
    v19 = Width - v18;
  }

  else
  {
    v19 = v17 * a3;
  }

  TSUSplitRectIntoSlices(v37, 0.0, 0.0, Width, Height, v18, v19, v15, v16);
  TSUSplitRectIntoSlices(v36, 0.0, 0.0, v10, v13, v18, v19, v15, v16);
  v20 = TSUCreateRGBABitmapContext(1, v10, v13, 1.0);
  for (i = 0; i != 288; i += 32)
  {
    v22 = *&v37[i];
    v23 = *&v37[i + 8];
    v24 = *&v37[i + 16];
    v25 = *&v37[i + 24];
    v26 = *&v36[i];
    v27 = *&v36[i + 8];
    v28 = *&v36[i + 16];
    v29 = *&v36[i + 24];
    v39.origin.x = v22;
    v39.origin.y = v23;
    v39.size.width = v24;
    v39.size.height = v25;
    if (!CGRectIsEmpty(v39))
    {
      v40.origin.x = v22;
      v40.origin.y = v23;
      v40.size.width = v24;
      v40.size.height = v25;
      if (!CGRectIsNull(v40))
      {
        v41.origin.x = v26;
        v41.origin.y = v27;
        v41.size.width = v28;
        v41.size.height = v29;
        if (!CGRectIsEmpty(v41))
        {
          v42.origin.x = v26;
          v42.origin.y = v27;
          v42.size.width = v28;
          v42.size.height = v29;
          if (!CGRectIsNull(v42))
          {
            v43.origin.x = v22;
            v43.origin.y = v23;
            v43.size.width = v24;
            v43.size.height = v25;
            v30 = CGImageCreateWithImageInRect(image, v43);
            if (v30)
            {
              v31 = v30;
              CGContextSaveGState(v20);
              v44.origin.x = v26;
              v44.origin.y = v27;
              v44.size.width = v28;
              v44.size.height = v29;
              MaxY = CGRectGetMaxY(v44);
              v45.origin.x = v26;
              v45.origin.y = v27;
              v45.size.width = v28;
              v45.size.height = v29;
              MinY = CGRectGetMinY(v45);
              CGContextTranslateCTM(v20, 0.0, MaxY + MinY);
              CGContextScaleCTM(v20, 1.0, -1.0);
              v46.origin.x = v26;
              v46.origin.y = v27;
              v46.size.width = v28;
              v46.size.height = v29;
              CGContextDrawImage(v20, v46, v31);
              CGImageRelease(v31);
              CGContextRestoreGState(v20);
            }
          }
        }
      }
    }
  }

  v34 = CGBitmapContextCreateImage(v20);
  CGContextRelease(v20);
  return v34;
}

- (void)drawInRect:(CGRect)a3 context:(CGContext *)a4 stretchingCenterWidthBy:(double)a5
{
  height = a3.size.height;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(TSUImage *)self CGImageForSize:a3.size.width, a3.size.height];
  Width = CGImageGetWidth(v10);
  v12 = CGImageGetHeight(v10);
  if ((Width & 0x80000001) == 1)
  {
    v13 = 1.0;
  }

  else
  {
    v13 = 2.0;
  }

  v14 = floor(vcvtd_n_f64_u64(Width, 1uLL)) - (v13 + -1.0);
  mImageSliceCacheLock = self->mImageSliceCacheLock;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__TSUImage_drawInRect_context_stretchingCenterWidthBy___block_invoke;
  block[3] = &unk_279D65CF0;
  block[4] = self;
  if (mImageSliceCacheLock != -1)
  {
    dispatch_once(&self->mImageSliceCacheLock, block);
  }

  v16 = Width - (v13 + v14);
  mCachedSliceableImage = self->mCachedSliceableImage;
  if (!mCachedSliceableImage || !CFEqual(v10, mCachedSliceableImage))
  {
    v18 = v12;
    self->mCachedSliceableImage = CGImageRetain(v10);
    CFDictionaryRemoveAllValues(self->mImageSlices);
    v27.origin.x = 0.0;
    v27.origin.y = 0.0;
    v27.size.width = v14;
    v27.size.height = v12;
    v19 = CGImageCreateWithImageInRect(v10, v27);
    v28.origin.y = 0.0;
    v28.origin.x = v13 + v14;
    v28.size.width = Width - (v13 + v14);
    v28.size.height = v18;
    v20 = CGImageCreateWithImageInRect(v10, v28);
    v29.origin.y = 0.0;
    v29.origin.x = v14;
    v29.size.width = v13;
    v29.size.height = v18;
    v21 = CGImageCreateWithImageInRect(v10, v29);
    CFDictionarySetValue(self->mImageSlices, &unk_287DF7788, v19);
    CFDictionarySetValue(self->mImageSlices, &unk_287DF77A0, v21);
    CFDictionarySetValue(self->mImageSlices, &unk_287DF77B8, v20);
    CGImageRelease(v19);
    CGImageRelease(v20);
    CGImageRelease(v21);
  }

  Value = CFDictionaryGetValue(self->mImageSlices, &unk_287DF7788);
  v23 = CFDictionaryGetValue(self->mImageSlices, &unk_287DF77A0);
  v24 = CFDictionaryGetValue(self->mImageSlices, &unk_287DF77B8);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = v14;
  v30.size.height = height;
  CGContextDrawImage(a4, v30, Value);
  v31.origin.x = x + v14;
  v31.origin.y = y;
  v31.size.width = a5;
  v31.size.height = height;
  CGContextDrawImage(a4, v31, v23);
  v32.origin.x = x + v14 + a5;
  v32.origin.y = y;
  v32.size.width = v16;
  v32.size.height = height;
  CGContextDrawImage(a4, v32, v24);
}

CFMutableDictionaryRef __55__TSUImage_drawInRect_context_stretchingCenterWidthBy___block_invoke(uint64_t a1)
{
  result = CFDictionaryCreateMutable(0, 12, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(*(a1 + 32) + 16) = result;
  return result;
}

+ (id)imageWithSize:(CGSize)a3 drawnUsingBlock:(id)a4
{
  UIGraphicsBeginImageContextWithOptions(a3, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  (*(a4 + 2))(a4, CurrentContext);
  v6 = [TSUImage imageWithUIImage:UIGraphicsGetImageFromCurrentImageContext()];
  UIGraphicsEndImageContext();
  return v6;
}

- (void)drawInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(TSUImage *)self UIImage];

  [(UIImage *)v7 drawInRect:x, y, width, height];
}

+ (id)imageWithUIImage:(id)a3
{
  v3 = [[TSUUIImage alloc] initWithUIImage:a3];

  return v3;
}

- (TSUImage)initWithUIImage:(id)a3
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUImage(UIKitAdditions) initWithUIImage:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUImage.m"), 1089, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSUImage(UIKitAdditions) initWithUIImage:]"), 0}]);
}

- (UIImage)UIImage
{
  mCachedImageLock = self->mCachedImageLock;
  p_mCachedImageLock = &self->mCachedImageLock;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__TSUImage_UIKitAdditions__UIImage__block_invoke;
  block[3] = &unk_279D65CF0;
  block[4] = self;
  if (mCachedImageLock != -1)
  {
    dispatch_once(p_mCachedImageLock, block);
  }

  return self->mCachedSystemImage;
}

uint64_t __35__TSUImage_UIKitAdditions__UIImage__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D755B8]);
  v3 = [*(a1 + 32) CGImage];
  [*(a1 + 32) scale];
  result = [v2 initWithCGImage:v3 scale:objc_msgSend(*(a1 + 32) orientation:{"imageOrientation"), v4}];
  *(*(a1 + 32) + 32) = result;
  return result;
}

+ (id)noisePatternWithWidth:(unint64_t)a3 height:(unint64_t)a4 factor:(double)a5
{
  v9 = a4 * a3;
  v10 = malloc_type_malloc(a4 * a3, 0x100004077774924uLL);
  srand(0x7Cu);
  if (v9)
  {
    v11 = v10;
    do
    {
      v12 = rand();
      if (v12 <= 0)
      {
        v13 = --v12;
      }

      else
      {
        v13 = v12;
      }

      v14 = v13 * a5;
      if (v14 > 255.0)
      {
        v14 = 255.0;
      }

      *v11++ = v14;
      --v9;
    }

    while (v9);
  }

  DeviceGray = CGColorSpaceCreateDeviceGray();
  v16 = CGBitmapContextCreate(v10, a3, a4, 8uLL, a3, DeviceGray, 0);
  Image = CGBitmapContextCreateImage(v16);
  CGColorSpaceRelease(DeviceGray);
  free(v10);
  CGContextRelease(v16);
  v18 = [a1 imageWithCGImage:Image];
  CGImageRelease(Image);
  return v18;
}

@end