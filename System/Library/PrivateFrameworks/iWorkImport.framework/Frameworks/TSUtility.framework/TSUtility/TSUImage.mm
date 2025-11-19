@interface TSUImage
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)imageNamed:(id)a3 inBundle:(id)a4 compatibleWithTraitCollection:(id)a5;
+ (id)imageWithCGImage:(CGImage *)a3;
+ (id)imageWithCGImage:(CGImage *)a3 scale:(double)a4 orientation:(int64_t)a5;
+ (id)imageWithContentsOfFile:(id)a3;
+ (id)imageWithData:(id)a3;
+ (id)imageWithUIImage:(id)a3;
+ (id)systemImageNamed:(id)a3 pointSize:(double)a4 weight:(int64_t)a5;
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
- (id)stretchedImageOfSize:(CGSize)a3 leftCapWidth:(double)a4 rightCapWidth:(double)a5 topCapHeight:(double)a6 bottomCapHeight:(double)a7;
- (int64_t)imageOrientation;
- (void)dealloc;
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

+ (id)imageNamed:(id)a3 inBundle:(id)a4 compatibleWithTraitCollection:(id)a5
{
  v6 = [MEMORY[0x277D755B8] imageNamed:a3 inBundle:a4 compatibleWithTraitCollection:a5];
  v7 = [a1 alloc];

  return [v7 initWithUIImage:v6];
}

+ (id)systemImageNamed:(id)a3 pointSize:(double)a4 weight:(int64_t)a5
{
  v7 = [MEMORY[0x277D755D0] configurationWithPointSize:a5 weight:a4];
  [MEMORY[0x277D755B8] systemImageNamed:a3 withConfiguration:v7];

  return MEMORY[0x2821F9670](a1, sel_imageWithUIImage_);
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

- (id)copyWithZone:(_NSZone *)a3
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

- (TSUImage)initWithContentsOfFile:(id)a3
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

- (TSUImage)initWithData:(id)a3
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

- (TSUImage)initWithCGImage:(CGImage *)a3
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

- (TSUImage)initWithCGImage:(CGImage *)a3 scale:(double)a4 orientation:(int64_t)a5
{
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[TSUImage initWithCGImage:scale:orientation:]", a5, a4}];
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

- (TSUImage)initWithImageSourceRef:(CGImageSource *)a3
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

- (CGImage)CGImageForSize:(CGSize)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[TSUImage CGImageForSize:]", a3.width, a3.height}];
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
  v2 = [(TSUImage *)self CGImage];

  return sub_277085754(v2);
}

- (id)TIFFRepresentation
{
  v2 = [(TSUImage *)self CGImage];

  return CGImageTIFFRepresentation(v2);
}

- (id)JPEGRepresentationWithCompressionQuality:(double)a3
{
  v4 = [(TSUImage *)self CGImage];

  return CGImageJPEGRepresentation(v4, a3);
}

- (id)PNGRepresentation
{
  v2 = [(TSUImage *)self CGImage];

  return CGImagePNGRepresentation(v2);
}

- (id)stretchedImageOfSize:(CGSize)a3 leftCapWidth:(double)a4 rightCapWidth:(double)a5 topCapHeight:(double)a6 bottomCapHeight:(double)a7
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_277085994;
  v13[3] = &unk_27A7022D8;
  v14 = a3;
  v13[4] = self;
  v15 = a6;
  v16 = a7;
  v17 = a4;
  v18 = a5;
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

+ (id)imageWithUIImage:(id)a3
{
  v3 = [[TSUUIImage alloc] initWithUIImage:a3];

  return v3;
}

- (TSUImage)initWithUIImage:(id)a3
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