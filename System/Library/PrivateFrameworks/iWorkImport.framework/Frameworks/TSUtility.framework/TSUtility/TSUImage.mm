@interface TSUImage
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)imageNamed:(id)named inBundle:(id)bundle compatibleWithTraitCollection:(id)collection;
+ (id)imageWithCGImage:(CGImage *)image;
+ (id)imageWithCGImage:(CGImage *)image scale:(double)scale orientation:(int64_t)orientation;
+ (id)imageWithContentsOfFile:(id)file;
+ (id)imageWithData:(id)data;
+ (id)imageWithUIImage:(id)image;
+ (id)systemImageNamed:(id)named pointSize:(double)size weight:(int64_t)weight;
- (BOOL)isEmpty;
- (CGImage)CGImage;
- (CGImage)CGImageForSize:(CGSize)size;
- (CGSize)size;
- (TSUImage)init;
- (TSUImage)initWithCGImage:(CGImage *)image;
- (TSUImage)initWithCGImage:(CGImage *)image scale:(double)scale orientation:(int64_t)orientation;
- (TSUImage)initWithContentsOfFile:(id)file;
- (TSUImage)initWithData:(id)data;
- (TSUImage)initWithImageSourceRef:(CGImageSource *)ref;
- (TSUImage)initWithUIImage:(id)image;
- (UIImage)UIImage;
- (double)scale;
- (id)JPEGRepresentationWithCompressionQuality:(double)quality;
- (id)PNGRepresentation;
- (id)TIFFRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)stretchedImageOfSize:(CGSize)size leftCapWidth:(double)width rightCapWidth:(double)capWidth topCapHeight:(double)height bottomCapHeight:(double)capHeight;
- (int64_t)imageOrientation;
- (void)dealloc;
@end

@implementation TSUImage

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [_TSUImageM allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___TSUImage;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

+ (id)imageNamed:(id)named inBundle:(id)bundle compatibleWithTraitCollection:(id)collection
{
  v6 = [MEMORY[0x277D755B8] imageNamed:named inBundle:bundle compatibleWithTraitCollection:collection];
  v7 = [self alloc];

  return [v7 initWithUIImage:v6];
}

+ (id)systemImageNamed:(id)named pointSize:(double)size weight:(int64_t)weight
{
  v7 = [MEMORY[0x277D755D0] configurationWithPointSize:weight weight:size];
  [MEMORY[0x277D755B8] systemImageNamed:named withConfiguration:v7];

  return MEMORY[0x2821F9670](self, sel_imageWithUIImage_);
}

+ (id)imageWithContentsOfFile:(id)file
{
  v3 = [[self alloc] initWithContentsOfFile:file];

  return v3;
}

+ (id)imageWithData:(id)data
{
  v3 = [[self alloc] initWithData:data];

  return v3;
}

+ (id)imageWithCGImage:(CGImage *)image
{
  v3 = [[self alloc] initWithCGImage:image];

  return v3;
}

+ (id)imageWithCGImage:(CGImage *)image scale:(double)scale orientation:(int64_t)orientation
{
  v5 = [[self alloc] initWithCGImage:image scale:orientation orientation:scale];

  return v5;
}

- (TSUImage)init
{
  v4.receiver = self;
  v4.super_class = TSUImage;
  v2 = [(TSUImage *)&v4 init];
  if (v2)
  {
    v2->mImageSlicesOnce = objc_alloc_init(TSUOnce);
    v2->mCachedImageOnce = objc_alloc_init(TSUOnce);
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUImage copyWithZone:]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUImage.m"];
  v5 = objc_opt_class();
  [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:825 isFatal:0 description:"Abstract method not overridden by %{public}@", NSStringFromClass(v5)];
  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = [v6 exceptionWithName:v7 reason:objc_msgSend(v8 userInfo:{"stringWithFormat:", @"Abstract method not overridden by %@: %s", NSStringFromClass(v9), "-[TSUImage copyWithZone:]"), 0}];
  objc_exception_throw(v10);
}

- (TSUImage)initWithContentsOfFile:(id)file
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUImage initWithContentsOfFile:]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUImage.m"];
  v5 = objc_opt_class();
  [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:830 isFatal:0 description:"Abstract method not overridden by %{public}@", NSStringFromClass(v5)];
  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = [v6 exceptionWithName:v7 reason:objc_msgSend(v8 userInfo:{"stringWithFormat:", @"Abstract method not overridden by %@: %s", NSStringFromClass(v9), "-[TSUImage initWithContentsOfFile:]"), 0}];
  objc_exception_throw(v10);
}

- (TSUImage)initWithData:(id)data
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUImage initWithData:]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUImage.m"];
  v5 = objc_opt_class();
  [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:835 isFatal:0 description:"Abstract method not overridden by %{public}@", NSStringFromClass(v5)];
  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = [v6 exceptionWithName:v7 reason:objc_msgSend(v8 userInfo:{"stringWithFormat:", @"Abstract method not overridden by %@: %s", NSStringFromClass(v9), "-[TSUImage initWithData:]"), 0}];
  objc_exception_throw(v10);
}

- (TSUImage)initWithCGImage:(CGImage *)image
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUImage initWithCGImage:]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUImage.m"];
  v5 = objc_opt_class();
  [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:840 isFatal:0 description:"Abstract method not overridden by %{public}@", NSStringFromClass(v5)];
  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = [v6 exceptionWithName:v7 reason:objc_msgSend(v8 userInfo:{"stringWithFormat:", @"Abstract method not overridden by %@: %s", NSStringFromClass(v9), "-[TSUImage initWithCGImage:]"), 0}];
  objc_exception_throw(v10);
}

- (TSUImage)initWithCGImage:(CGImage *)image scale:(double)scale orientation:(int64_t)orientation
{
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[TSUImage initWithCGImage:scale:orientation:]", orientation, scale}];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUImage.m"];
  v7 = objc_opt_class();
  [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:845 isFatal:0 description:"Abstract method not overridden by %{public}@", NSStringFromClass(v7)];
  +[TSUAssertionHandler logBacktraceThrottled];
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = [v8 exceptionWithName:v9 reason:objc_msgSend(v10 userInfo:{"stringWithFormat:", @"Abstract method not overridden by %@: %s", NSStringFromClass(v11), "-[TSUImage initWithCGImage:scale:orientation:]"), 0}];
  objc_exception_throw(v12);
}

- (TSUImage)initWithImageSourceRef:(CGImageSource *)ref
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUImage initWithImageSourceRef:]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUImage.m"];
  v5 = objc_opt_class();
  [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:850 isFatal:0 description:"Abstract method not overridden by %{public}@", NSStringFromClass(v5)];
  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = [v6 exceptionWithName:v7 reason:objc_msgSend(v8 userInfo:{"stringWithFormat:", @"Abstract method not overridden by %@: %s", NSStringFromClass(v9), "-[TSUImage initWithImageSourceRef:]"), 0}];
  objc_exception_throw(v10);
}

- (CGSize)size
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUImage size]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUImage.m"];
  v4 = objc_opt_class();
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:856 isFatal:0 description:"Abstract method not overridden by %{public}@", NSStringFromClass(v4)];
  +[TSUAssertionHandler logBacktraceThrottled];
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = [v5 exceptionWithName:v6 reason:objc_msgSend(v7 userInfo:{"stringWithFormat:", @"Abstract method not overridden by %@: %s", NSStringFromClass(v8), "-[TSUImage size]"), 0}];
  objc_exception_throw(v9);
}

- (double)scale
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUImage scale]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUImage.m"];
  v4 = objc_opt_class();
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:860 isFatal:0 description:"Abstract method not overridden by %{public}@", NSStringFromClass(v4)];
  +[TSUAssertionHandler logBacktraceThrottled];
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = [v5 exceptionWithName:v6 reason:objc_msgSend(v7 userInfo:{"stringWithFormat:", @"Abstract method not overridden by %@: %s", NSStringFromClass(v8), "-[TSUImage scale]"), 0}];
  objc_exception_throw(v9);
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

- (CGImage)CGImageForSize:(CGSize)size
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[TSUImage CGImageForSize:]", size.width, size.height}];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUImage.m"];
  v5 = objc_opt_class();
  [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:876 isFatal:0 description:"Abstract method not overridden by %{public}@", NSStringFromClass(v5)];
  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = [v6 exceptionWithName:v7 reason:objc_msgSend(v8 userInfo:{"stringWithFormat:", @"Abstract method not overridden by %@: %s", NSStringFromClass(v9), "-[TSUImage CGImageForSize:]"), 0}];
  objc_exception_throw(v10);
}

- (CGImage)CGImage
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUImage CGImage]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUImage.m"];
  v4 = objc_opt_class();
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:880 isFatal:0 description:"Abstract method not overridden by %{public}@", NSStringFromClass(v4)];
  +[TSUAssertionHandler logBacktraceThrottled];
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = [v5 exceptionWithName:v6 reason:objc_msgSend(v7 userInfo:{"stringWithFormat:", @"Abstract method not overridden by %@: %s", NSStringFromClass(v8), "-[TSUImage CGImage]"), 0}];
  objc_exception_throw(v9);
}

- (int64_t)imageOrientation
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUImage imageOrientation]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUImage.m"];
  v4 = objc_opt_class();
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:884 isFatal:0 description:"Abstract method not overridden by %{public}@", NSStringFromClass(v4)];
  +[TSUAssertionHandler logBacktraceThrottled];
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = [v5 exceptionWithName:v6 reason:objc_msgSend(v7 userInfo:{"stringWithFormat:", @"Abstract method not overridden by %@: %s", NSStringFromClass(v8), "-[TSUImage imageOrientation]"), 0}];
  objc_exception_throw(v9);
}

- (BOOL)isEmpty
{
  cGImage = [(TSUImage *)self CGImage];

  return sub_277085754(cGImage);
}

- (id)TIFFRepresentation
{
  cGImage = [(TSUImage *)self CGImage];

  return CGImageTIFFRepresentation(cGImage);
}

- (id)JPEGRepresentationWithCompressionQuality:(double)quality
{
  cGImage = [(TSUImage *)self CGImage];

  return CGImageJPEGRepresentation(cGImage, quality);
}

- (id)PNGRepresentation
{
  cGImage = [(TSUImage *)self CGImage];

  return CGImagePNGRepresentation(cGImage);
}

- (id)stretchedImageOfSize:(CGSize)size leftCapWidth:(double)width rightCapWidth:(double)capWidth topCapHeight:(double)height bottomCapHeight:(double)capHeight
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_277085994;
  v13[3] = &unk_27A7022D8;
  sizeCopy = size;
  v13[4] = self;
  heightCopy = height;
  capHeightCopy = capHeight;
  widthCopy = width;
  capWidthCopy = capWidth;
  v8 = sub_277085994(v13, [(TSUImage *)self CGImageForSize:?], 1.0);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  [(TSUImage *)self scale];
  v11 = [TSUImage imageWithCGImage:v9 scale:[(TSUImage *)self imageOrientation] orientation:v10];
  CGImageRelease(v9);
  return v11;
}

+ (id)imageWithUIImage:(id)image
{
  v3 = [[TSUUIImage alloc] initWithUIImage:image];

  return v3;
}

- (TSUImage)initWithUIImage:(id)image
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUImage(UIKitAdditions) initWithUIImage:]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUImage.m"];
  v5 = objc_opt_class();
  [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:1039 isFatal:0 description:"Abstract method not overridden by %{public}@", NSStringFromClass(v5)];
  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = [v6 exceptionWithName:v7 reason:objc_msgSend(v8 userInfo:{"stringWithFormat:", @"Abstract method not overridden by %@: %s", NSStringFromClass(v9), "-[TSUImage(UIKitAdditions) initWithUIImage:]"), 0}];
  objc_exception_throw(v10);
}

- (UIImage)UIImage
{
  mCachedImageOnce = self->mCachedImageOnce;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_277085FFC;
  v5[3] = &unk_27A701878;
  v5[4] = self;
  [(TSUOnce *)mCachedImageOnce performBlockOnce:v5];
  return self->mCachedSystemImage;
}

@end