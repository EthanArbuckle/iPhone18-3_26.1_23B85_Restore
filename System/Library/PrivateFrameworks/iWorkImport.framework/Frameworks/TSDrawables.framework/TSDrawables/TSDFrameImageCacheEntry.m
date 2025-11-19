@interface TSDFrameImageCacheEntry
- (CGImage)newImageForCALayer:(BOOL)a3 mask:(BOOL)a4;
- (CGSize)size;
- (TSDFrameImageCacheEntry)initWithFrame:(id)a3 size:(CGSize)a4 viewScale:(double)a5;
- (int)p_cacheIndexForCALayer:(BOOL)a3 mask:(BOOL)a4;
- (void)dealloc;
- (void)setImage:(CGImage *)a3 forCALayer:(BOOL)a4 mask:(BOOL)a5;
@end

@implementation TSDFrameImageCacheEntry

- (TSDFrameImageCacheEntry)initWithFrame:(id)a3 size:(CGSize)a4 viewScale:(double)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v17.receiver = self;
  v17.super_class = TSDFrameImageCacheEntry;
  v12 = [(TSDFrameImageCacheEntry *)&v17 init];
  if (v12)
  {
    v12->mFrameSpec = objc_msgSend_frameSpec(v9, v10, v11);
    objc_msgSend_assetScale(v9, v13, v14);
    v12->mSize.width = width;
    v12->mSize.height = height;
    v12->mAssetScale = v15;
    v12->mViewScale = a5;
  }

  return v12;
}

- (void)dealloc
{
  for (i = 8; i != 40; i += 8)
  {
    CGImageRelease(*(&self->super.isa + i));
  }

  v4.receiver = self;
  v4.super_class = TSDFrameImageCacheEntry;
  [(TSDFrameImageCacheEntry *)&v4 dealloc];
}

- (int)p_cacheIndexForCALayer:(BOOL)a3 mask:(BOOL)a4
{
  if (a3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4 | a4;
}

- (CGImage)newImageForCALayer:(BOOL)a3 mask:(BOOL)a4
{
  v4 = &self->super.isa + objc_msgSend_p_cacheIndexForCALayer_mask_(self, a2, a3, a4);
  v5 = v4[1];
  if (v5)
  {
    CFRetain(v4[1]);
  }

  return v5;
}

- (void)setImage:(CGImage *)a3 forCALayer:(BOOL)a4 mask:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDFrameImageCacheEntry setImage:forCALayer:mask:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFrameImageCache.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 92, 0, "invalid nil value for '%{public}s'", "image");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_p_cacheIndexForCALayer_mask_(self, a2, v6, v5);
  mImages = self->mImages;
  if (!mImages[v16])
  {
    mImages[v16] = CGImageRetain(a3);
  }
}

- (CGSize)size
{
  width = self->mSize.width;
  height = self->mSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end