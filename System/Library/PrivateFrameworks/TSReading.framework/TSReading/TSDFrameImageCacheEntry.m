@interface TSDFrameImageCacheEntry
- (CGImage)newImageForCALayer:(BOOL)a3 mask:(BOOL)a4;
- (CGSize)size;
- (void)dealloc;
- (void)setImage:(CGImage *)a3 forCALayer:(BOOL)a4 mask:(BOOL)a5;
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

- (CGImage)newImageForCALayer:(BOOL)a3 mask:(BOOL)a4
{
  v4 = 2;
  if (!a3)
  {
    v4 = 0;
  }

  v5 = &self->super.isa + (v4 | a4);
  v6 = v5[6];
  if (v6)
  {
    CFRetain(v5[6]);
  }

  return v6;
}

- (void)setImage:(CGImage *)a3 forCALayer:(BOOL)a4 mask:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  if (!a3)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrameImageCacheEntry setImage:forCALayer:mask:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameImageCache.m"), 73, @"invalid nil value for '%s'", "image"}];
  }

  v11 = 2;
  if (!v6)
  {
    v11 = 0;
  }

  v12 = v11 | v5;
  mImages = self->mImages;
  if (!mImages[v12])
  {
    mImages[v12] = CGImageRetain(a3);
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