@interface TSDBitmapRenderingQualityImageMapValue
- (CGImage)degradedImageRefForForProvider:(id)provider quality:(int)quality canvasScale:(float)scale;
- (void)addSize:(CGSize)size;
- (void)dealloc;
@end

@implementation TSDBitmapRenderingQualityImageMapValue

- (void)dealloc
{
  CGImageRelease(self->mDegradedImageRef);
  v3.receiver = self;
  v3.super_class = TSDBitmapRenderingQualityImageMapValue;
  [(TSDBitmapRenderingQualityImageMapValue *)&v3 dealloc];
}

- (void)addSize:(CGSize)size
{
  v4 = TSDCeilSize(size.width);
  width = self->mMaxSize.width;
  height = self->mMaxSize.height;
  if (v4 > width || v5 > height)
  {
    if (width > v4)
    {
      v4 = self->mMaxSize.width;
    }

    if (height > v5)
    {
      v5 = self->mMaxSize.height;
    }

    self->mMaxSize.width = v4;
    self->mMaxSize.height = v5;
    mDegradedImageRef = self->mDegradedImageRef;
    if (mDegradedImageRef)
    {
      CGImageRelease(mDegradedImageRef);
      self->mDegradedImageRef = 0;
    }
  }
}

- (CGImage)degradedImageRefForForProvider:(id)provider quality:(int)quality canvasScale:(float)scale
{
  result = self->mDegradedImageRef;
  if (!result)
  {
    if (quality == 1)
    {
      v11 = 0;
      v12 = 150.0;
    }

    else
    {
      if (quality == 2)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBitmapRenderingQualityImageMapValue degradedImageRefForForProvider:quality:canvasScale:]"];
        [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBitmapRenderingQualityInfo.m"), 116, @"Shouldn't be called for high DPI"}];
      }

      v11 = 1;
      v12 = 72.0;
    }

    v13 = TSDMultiplySizeScalar(self->mMaxSize.width, self->mMaxSize.height, ((v12 / 72.0) * scale));
    v14 = [provider CGImageForSize:v11 lowQuality:TSDCeilSize(v13)];
    self->mDegradedImageRef = v14;
    CGImageRetain(v14);
    return self->mDegradedImageRef;
  }

  return result;
}

@end