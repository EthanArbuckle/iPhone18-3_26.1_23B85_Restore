@interface _TSUImageM
+ (id)initWithCGImage:(CGImage *)image;
+ (id)initWithCGImage:(CGImage *)image scale:(double)scale orientation:(int64_t)orientation;
+ (id)initWithContentsOfFile:(id)file;
+ (id)initWithData:(id)data;
+ (id)initWithImageSourceRef:(CGImageSource *)ref;
@end

@implementation _TSUImageM

+ (id)initWithCGImage:(CGImage *)image
{
  v4 = [TSUCGImage alloc];

  return [(TSUCGImage *)v4 initWithCGImage:image scale:0 orientation:0.0];
}

+ (id)initWithData:(id)data
{
  v4 = [TSUUIImage alloc];

  return [(TSUUIImage *)v4 initWithData:data];
}

+ (id)initWithCGImage:(CGImage *)image scale:(double)scale orientation:(int64_t)orientation
{
  v8 = [TSUCGImage alloc];

  return [(TSUCGImage *)v8 initWithCGImage:image scale:orientation orientation:scale];
}

+ (id)initWithContentsOfFile:(id)file
{
  v4 = [TSUUIImage alloc];

  return [(TSUUIImage *)v4 initWithContentsOfFile:file];
}

+ (id)initWithImageSourceRef:(CGImageSource *)ref
{
  refCopy = ref;
  if (ref)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(ref, 0, 0);
    refCopy = TSUImageSourceOrientation(refCopy);
  }

  else
  {
    ImageAtIndex = 0;
  }

  v5 = [[TSUCGImage alloc] initWithCGImage:ImageAtIndex scale:refCopy orientation:0.0];
  CGImageRelease(ImageAtIndex);
  return v5;
}

@end