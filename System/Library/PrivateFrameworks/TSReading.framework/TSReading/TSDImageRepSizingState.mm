@interface TSDImageRepSizingState
- (CGSize)desiredSize;
- (TSDImageRepSizingState)initWithDesiredSize:(CGSize)size provider:(id)provider maskPath:(CGPath *)path wideGamutCanvas:(BOOL)canvas;
- (void)dealloc;
- (void)generateSizedImage;
- (void)setSizedImage:(CGImage *)image;
@end

@implementation TSDImageRepSizingState

- (TSDImageRepSizingState)initWithDesiredSize:(CGSize)size provider:(id)provider maskPath:(CGPath *)path wideGamutCanvas:(BOOL)canvas
{
  height = size.height;
  width = size.width;
  if (!provider)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageRepSizingState initWithDesiredSize:provider:maskPath:wideGamutCanvas:]"];
    [currentHandler handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageRepSizingState.m"), 23, @"invalid nil value for '%s'", "provider"}];
  }

  v17.receiver = self;
  v17.super_class = TSDImageRepSizingState;
  v14 = [(TSDImageRepSizingState *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->mDesiredSize.width = width;
    v14->mDesiredSize.height = height;
    v14->mProvider = provider;
    v15->mStatus = 0;
    v15->mWideGamutCanvas = canvas;
    if (path)
    {
      v15->mMaskPath = CGPathRetain(path);
    }
  }

  return v15;
}

- (void)dealloc
{
  CGImageRelease(self->mSizedImage);
  mMaskPath = self->mMaskPath;
  if (mMaskPath)
  {
    CGPathRelease(mMaskPath);
  }

  v4.receiver = self;
  v4.super_class = TSDImageRepSizingState;
  [(TSDImageRepSizingState *)&v4 dealloc];
}

- (void)setSizedImage:(CGImage *)image
{
  mSizedImage = self->mSizedImage;
  if (mSizedImage != image)
  {
    CGImageRelease(mSizedImage);
    self->mSizedImage = CGImageRetain(image);
  }
}

- (void)generateSizedImage
{
  CGImageRelease(self->mSizedImage);
  self->mSizedImage = 0;
  if (!self->mStatus)
  {
    width = self->mDesiredSize.width;
    height = self->mDesiredSize.height;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (([(TSDImageProvider *)self->mProvider naturalSize], width == v6) ? (v7 = height == v5) : (v7 = 0), v7 && !self->mMaskPath))
    {
      self->mSizedImage = CGImageRetain([(TSDImageProvider *)self->mProvider CGImageForNaturalSize]);
      self->mSizedImageOrientation = [(TSDImageProvider *)self->mProvider orientation];
    }

    else
    {
      v8 = 11;
      if (self->mWideGamutCanvas && ![(TSDImageProvider *)self->mProvider isError]&& [(TSDImageProvider *)self->mProvider imageGamut]!= 2)
      {
        v8 = 43;
      }

      v9 = TSDBitmapContextCreate(v8, width);
      if (v9)
      {
        v10 = v9;
        CGContextSetInterpolationQuality(v9, kCGInterpolationHigh);
        v11 = TSDRectWithSize();
        v13 = v12;
        v15 = v14;
        v17 = v16;
        mMaskPath = self->mMaskPath;
        if (mMaskPath)
        {
          CGContextAddPath(v10, mMaskPath);
          CGContextClip(v10);
        }

        [(TSDImageProvider *)self->mProvider drawImageInContext:v10 rect:v11, v13, v15, v17];
        self->mSizedImage = CGBitmapContextCreateImage(v10);
        self->mSizedImageOrientation = 0;

        CGContextRelease(v10);
      }
    }
  }
}

- (CGSize)desiredSize
{
  width = self->mDesiredSize.width;
  height = self->mDesiredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end