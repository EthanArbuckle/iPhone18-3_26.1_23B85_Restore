@interface TSDFrameImageCacheEntry
- (CGImage)newImageForCALayer:(BOOL)layer mask:(BOOL)mask;
- (CGSize)size;
- (TSDFrameImageCacheEntry)initWithFrame:(id)frame size:(CGSize)size viewScale:(double)scale;
- (int)p_cacheIndexForCALayer:(BOOL)layer mask:(BOOL)mask;
- (void)dealloc;
- (void)setImage:(CGImage *)image forCALayer:(BOOL)layer mask:(BOOL)mask;
@end

@implementation TSDFrameImageCacheEntry

- (TSDFrameImageCacheEntry)initWithFrame:(id)frame size:(CGSize)size viewScale:(double)scale
{
  height = size.height;
  width = size.width;
  frameCopy = frame;
  v17.receiver = self;
  v17.super_class = TSDFrameImageCacheEntry;
  v12 = [(TSDFrameImageCacheEntry *)&v17 init];
  if (v12)
  {
    v12->mFrameSpec = objc_msgSend_frameSpec(frameCopy, v10, v11);
    objc_msgSend_assetScale(frameCopy, v13, v14);
    v12->mSize.width = width;
    v12->mSize.height = height;
    v12->mAssetScale = v15;
    v12->mViewScale = scale;
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

- (int)p_cacheIndexForCALayer:(BOOL)layer mask:(BOOL)mask
{
  if (layer)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4 | mask;
}

- (CGImage)newImageForCALayer:(BOOL)layer mask:(BOOL)mask
{
  v4 = &self->super.isa + objc_msgSend_p_cacheIndexForCALayer_mask_(self, a2, layer, mask);
  v5 = v4[1];
  if (v5)
  {
    CFRetain(v4[1]);
  }

  return v5;
}

- (void)setImage:(CGImage *)image forCALayer:(BOOL)layer mask:(BOOL)mask
{
  maskCopy = mask;
  layerCopy = layer;
  if (!image)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDFrameImageCacheEntry setImage:forCALayer:mask:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFrameImageCache.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 92, 0, "invalid nil value for '%{public}s'", "image");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_p_cacheIndexForCALayer_mask_(self, a2, layerCopy, maskCopy);
  mImages = self->mImages;
  if (!mImages[v16])
  {
    mImages[v16] = CGImageRetain(image);
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