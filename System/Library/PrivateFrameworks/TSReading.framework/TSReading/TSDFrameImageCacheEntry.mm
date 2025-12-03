@interface TSDFrameImageCacheEntry
- (CGImage)newImageForCALayer:(BOOL)layer mask:(BOOL)mask;
- (CGSize)size;
- (void)dealloc;
- (void)setImage:(CGImage *)image forCALayer:(BOOL)layer mask:(BOOL)mask;
@end

@implementation TSDFrameImageCacheEntry

- (void)dealloc
{
  for (i = 48; i != 80; i += 8)
  {
    CGImageRelease(*(&self->super.isa + i));
  }

  v4.receiver = self;
  v4.super_class = TSDFrameImageCacheEntry;
  [(TSDFrameImageCacheEntry *)&v4 dealloc];
}

- (CGImage)newImageForCALayer:(BOOL)layer mask:(BOOL)mask
{
  v4 = 2;
  if (!layer)
  {
    v4 = 0;
  }

  v5 = &self->super.isa + (v4 | mask);
  v6 = v5[6];
  if (v6)
  {
    CFRetain(v5[6]);
  }

  return v6;
}

- (void)setImage:(CGImage *)image forCALayer:(BOOL)layer mask:(BOOL)mask
{
  maskCopy = mask;
  layerCopy = layer;
  if (!image)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameImageCacheEntry setImage:forCALayer:mask:]"];
    [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameImageCache.m"), 73, @"invalid nil value for '%s'", "image"}];
  }

  v11 = 2;
  if (!layerCopy)
  {
    v11 = 0;
  }

  v12 = v11 | maskCopy;
  mImages = self->mImages;
  if (!mImages[v12])
  {
    mImages[v12] = CGImageRetain(image);
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