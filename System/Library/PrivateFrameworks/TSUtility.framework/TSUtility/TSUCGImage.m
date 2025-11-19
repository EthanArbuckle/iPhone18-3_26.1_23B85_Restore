@interface TSUCGImage
- (CGSize)size;
- (TSUCGImage)initWithCGImage:(CGImage *)a3 scale:(double)a4 orientation:(int64_t)a5;
- (double)scale;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation TSUCGImage

- (TSUCGImage)initWithCGImage:(CGImage *)a3 scale:(double)a4 orientation:(int64_t)a5
{
  v11.receiver = self;
  v11.super_class = TSUCGImage;
  v8 = [(TSUImage *)&v11 init];
  if (v8)
  {
    v9 = CGImageRetain(a3);
    v8->mCGImage = v9;
    v8->mOrientation = a5;
    v8->mScale = a4;
    if (!v9)
    {

      return 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  mCGImage = self->mCGImage;
  mScale = self->mScale;
  mOrientation = self->mOrientation;

  return [v4 initWithCGImage:mCGImage scale:mOrientation orientation:mScale];
}

- (CGSize)size
{
  [(TSUCGImage *)self scale];
  v4 = v3;
  Width = CGImageGetWidth(self->mCGImage);
  Height = CGImageGetHeight(self->mCGImage);
  v7 = Height;
  mOrientation = self->mOrientation;
  if ((mOrientation & 2) != 0)
  {
    v9 = Height;
  }

  else
  {
    v9 = Width;
  }

  if ((mOrientation & 2) != 0)
  {
    v7 = Width;
  }

  v10 = v7 / v4;
  v11 = v9 / v4;
  result.height = v10;
  result.width = v11;
  return result;
}

- (double)scale
{
  result = self->mScale;
  if (result == 0.0)
  {
    return 1.0;
  }

  return result;
}

- (void)dealloc
{
  CGImageRelease(self->mCGImage);
  v3.receiver = self;
  v3.super_class = TSUCGImage;
  [(TSUImage *)&v3 dealloc];
}

@end