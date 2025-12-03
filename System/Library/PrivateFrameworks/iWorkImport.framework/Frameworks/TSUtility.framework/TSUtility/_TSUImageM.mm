@interface _TSUImageM
+ (id)initWithCGImage:(CGImage *)image;
+ (id)initWithCGImage:(CGImage *)image scale:(double)scale orientation:(int64_t)orientation;
+ (id)initWithContentsOfFile:(id)file;
+ (id)initWithData:(id)data;
+ (id)initWithImageSourceRef:(CGImageSource *)ref;
+ (id)initWithUIImage:(id)image;
@end

@implementation _TSUImageM

+ (id)initWithCGImage:(CGImage *)image
{
  v4 = [TSUCGImage alloc];

  return [(TSUCGImage *)v4 initWithCGImage:image scale:0 orientation:0.0];
}

+ (id)initWithData:(id)data
{
  v4 = CGImageSourceCreateWithData(data, MEMORY[0x277CBEC10]);
  v5 = [self initWithImageSourceRef:v4];
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
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
    refCopy = sub_277083B28(refCopy);
  }

  else
  {
    ImageAtIndex = 0;
  }

  v5 = [[TSUCGImage alloc] initWithCGImage:ImageAtIndex scale:refCopy orientation:0.0];
  CGImageRelease(ImageAtIndex);
  return v5;
}

+ (id)initWithUIImage:(id)image
{
  v4 = [TSUUIImage alloc];

  return [(TSUUIImage *)v4 initWithUIImage:image];
}

@end