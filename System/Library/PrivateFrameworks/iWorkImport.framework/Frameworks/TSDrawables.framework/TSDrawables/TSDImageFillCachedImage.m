@interface TSDImageFillCachedImage
+ (id)cachedImageWithHandler:(id)a3;
- (TSDImageFillCachedImage)initWithHandler:(id)a3;
- (TSUImage)image;
- (void)flush;
@end

@implementation TSDImageFillCachedImage

+ (id)cachedImageWithHandler:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v7 = objc_msgSend_initWithHandler_(v5, v6, v4);

  return v7;
}

- (TSDImageFillCachedImage)initWithHandler:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TSDImageFillCachedImage;
  v7 = [(TSDImageFillCachedImage *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(v4, v5, v6);
    mHandler = v7->mHandler;
    v7->mHandler = v8;

    v7->mLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return v7;
}

- (TSUImage)image
{
  os_unfair_lock_lock(&self->mLock);
  if (!self->mCachedImage)
  {
    v3 = (*(self->mHandler + 2))();
    mCachedImage = self->mCachedImage;
    self->mCachedImage = v3;

    if (!self->mCachedImage)
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDImageFillCachedImage image]");
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageFill.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 133, 0, "invalid nil value for '%{public}s'", "mCachedImage");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
    }
  }

  os_unfair_lock_unlock(&self->mLock);
  v13 = self->mCachedImage;

  return v13;
}

- (void)flush
{
  os_unfair_lock_lock(&self->mLock);
  mCachedImage = self->mCachedImage;
  self->mCachedImage = 0;

  os_unfair_lock_unlock(&self->mLock);
}

@end