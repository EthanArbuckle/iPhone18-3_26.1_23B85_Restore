@interface SXAnimatedImage
+ (SXAnimatedImage)animatedImageWithData:(id)a3 scale:(double)a4 size:(CGSize)a5;
+ (SXAnimatedImage)animatedImageWithURL:(id)a3 scale:(double)a4 type:(int64_t)a5;
- (CGSize)imageSize;
- (SXAnimatedImage)initWithDataProvider:(CGDataProvider *)a3 scale:(double)a4 type:(int64_t)a5 size:(CGSize)a6;
- (SXAnimatedImage)initWithImageSource:(CGImageSource *)a3 scale:(double)a4 type:(int64_t)a5 size:(CGSize)a6;
- (SXAnimatedImageDelegate)delegate;
- (id)frameAtIndex:(unint64_t)a3 returnNearestPreloaded:(BOOL)a4;
- (void)animatedImageViewCache:(id)a3 didCacheImageForFrameIndex:(unint64_t)a4;
- (void)capturePropertiesForType:(int64_t)a3;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)generateFrames;
- (void)resumePreloading;
- (void)setPreloadType:(int64_t)a3 currentFrameIndex:(unint64_t)a4;
- (void)suspendPreloading;
@end

@implementation SXAnimatedImage

+ (SXAnimatedImage)animatedImageWithURL:(id)a3 scale:(double)a4 type:(int64_t)a5
{
  v8 = CGDataProviderCreateWithURL(a3);
  if (v8)
  {
    v9 = v8;
    v10 = [a1 alloc];
    v11 = [v10 initWithDataProvider:v9 scale:a5 type:a4 size:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    CGDataProviderRelease(v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (SXAnimatedImage)animatedImageWithData:(id)a3 scale:(double)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a3;
  v10 = CGDataProviderCreateWithCFData(v9);
  if (v10)
  {
    v11 = v10;
    v12 = +[SXImageDecodingTools sharedInstance];
    v13 = [v12 contentTypeForImageData:v9];
    v14 = v13 == *MEMORY[0x1E6963860];

    v15 = [[a1 alloc] initWithDataProvider:v11 scale:v14 type:a4 size:{width, height}];
    CGDataProviderRelease(v11);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (SXAnimatedImage)initWithDataProvider:(CGDataProvider *)a3 scale:(double)a4 type:(int64_t)a5 size:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v11 = CGImageSourceCreateWithDataProvider(a3, 0);
  v12 = [(SXAnimatedImage *)self initWithImageSource:v11 scale:a5 type:a4 size:width, height];
  CFRelease(v11);

  return v12;
}

- (SXAnimatedImage)initWithImageSource:(CGImageSource *)a3 scale:(double)a4 type:(int64_t)a5 size:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v18.receiver = self;
  v18.super_class = SXAnimatedImage;
  v11 = [(SXAnimatedImage *)&v18 init];
  if (v11)
  {
    v11->_imageSource = CFRetain(a3);
    v11->_imageType = a5;
    v11->_scale = a4;
    v12 = [[SXAnimatedImageViewCache alloc] initWithImageSize:width, height];
    cache = v11->_cache;
    v11->_cache = v12;

    [(SXAnimatedImageViewCache *)v11->_cache setDelegate:v11];
    [(SXAnimatedImage *)v11 capturePropertiesForType:v11->_imageType];
    [(SXAnimatedImage *)v11 generateFrames];
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v11 selector:sel_didReceiveMemoryWarning name:*MEMORY[0x1E69DDAD8] object:0];

    v15 = [(SXAnimatedImage *)v11 cache];
    [v15 setAnimatedImage:v11];

    v16 = [(SXAnimatedImage *)v11 cache];
    [v16 prepareImageForFrameIndex:0];
  }

  return v11;
}

- (void)capturePropertiesForType:(int64_t)a3
{
  v5 = 0;
  v6 = *MEMORY[0x1E696DEB0];
  v7 = *MEMORY[0x1E696DB70];
  v8 = MEMORY[0x1E696D3C8];
  self->_loopCount = -1;
  p_loopCount = &self->_loopCount;
  v10 = *v8;
  v11 = *MEMORY[0x1E696DB78];
  self->_imageSize = *MEMORY[0x1E695F060];
  do
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex([(SXAnimatedImage *)self imageSource], v5++, 0);
  }

  while (!ImageAtIndex);
  v13 = ImageAtIndex;
  if (a3 == 1)
  {
    v14 = v6;
  }

  else
  {
    v14 = v7;
  }

  Width = CGImageGetWidth(ImageAtIndex);
  [(SXAnimatedImage *)self scale];
  v17 = Width / v16;
  Height = CGImageGetHeight(v13);
  [(SXAnimatedImage *)self scale];
  self->_imageSize.width = v17;
  self->_imageSize.height = Height / v19;
  BytesPerRow = CGImageGetBytesPerRow(v13);
  self->_uncompressedByteSizePerFrame = CGImageGetHeight(v13) * BytesPerRow;
  CGImageRelease(v13);
  v21 = CGImageSourceCopyProperties([(SXAnimatedImage *)self imageSource], 0);
  value = 0;
  if (CFDictionaryGetValueIfPresent(v21, v14, &value))
  {
    if (a3 == 1)
    {
      v22 = v10;
    }

    else
    {
      v22 = v11;
    }

    number = 0;
    if (!CFDictionaryGetValueIfPresent(value, v22, &number))
    {
      v23 = 0;
      goto LABEL_15;
    }

    CFNumberGetValue(number, kCFNumberNSIntegerType, p_loopCount);
    if (!*p_loopCount)
    {
      v23 = -1;
LABEL_15:
      *p_loopCount = v23;
    }
  }

  else
  {
    *p_loopCount = 0;
  }

  CFRelease(v21);
  self->_duration = 0.0;
  self->_numberOfFrames = CGImageSourceGetCount([(SXAnimatedImage *)self imageSource]);
}

- (void)generateFrames
{
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[SXAnimatedImage numberOfFrames](self, "numberOfFrames")}];
  if ([(SXAnimatedImage *)self numberOfFrames])
  {
    v3 = 0;
    do
    {
      v4 = [SXAnimatedImageFrame alloc];
      v5 = [(SXAnimatedImage *)self imageSource];
      v6 = [(SXAnimatedImage *)self cache];
      v7 = [(SXAnimatedImageFrame *)&v4->super.isa initWithImageSource:v5 index:v3 cache:v6 type:[(SXAnimatedImage *)self imageType]];

      [v10 addObject:v7];
      self->_duration = [(SXAnimatedImageFrame *)v7 duration]+ self->_duration;

      ++v3;
    }

    while (v3 < [(SXAnimatedImage *)self numberOfFrames]);
  }

  v8 = [v10 copy];
  frames = self->_frames;
  self->_frames = v8;
}

- (id)frameAtIndex:(unint64_t)a3 returnNearestPreloaded:(BOOL)a4
{
  if (a4)
  {
    v6 = [(SXAnimatedImage *)self cache];
    a3 = [v6 nearestCachedFrameIndexForFrameIndex:a3];
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    if ([(SXAnimatedImage *)self preloadType]== 1)
    {
      v8 = [(SXAnimatedImage *)self cache];
      v9 = [(SXAnimatedImage *)self numberOfFrames];
      if (v9 - 1 >= a3 + 3)
      {
        v10 = a3 + 3;
      }

      else
      {
        v10 = v9 - 1;
      }

      [v8 prepareImageForFrameIndex:v10];
    }

    v11 = [(SXAnimatedImage *)self frames];
    v7 = [v11 objectAtIndex:a3];
  }

  return v7;
}

- (void)didReceiveMemoryWarning
{
  v2 = [(SXAnimatedImage *)self cache];
  [v2 prune];
}

- (void)dealloc
{
  imageSource = self->_imageSource;
  if (imageSource)
  {
    CFRelease(imageSource);
    self->_imageSource = 0;
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = SXAnimatedImage;
  [(SXAnimatedImage *)&v5 dealloc];
}

- (void)animatedImageViewCache:(id)a3 didCacheImageForFrameIndex:(unint64_t)a4
{
  v6 = [(SXAnimatedImage *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SXAnimatedImage *)self delegate];
    [v8 animatedImage:self madeImageAvailableForFrameAtIndex:a4];
  }
}

- (void)setPreloadType:(int64_t)a3 currentFrameIndex:(unint64_t)a4
{
  self->_preloadType = a3;
  if ([(SXAnimatedImage *)self preloadType]== 1 && [(SXAnimatedImage *)self numberOfFrames]> a4)
  {
    v6 = 0;
    do
    {
      v7 = a4 + v6;
      v8 = [(SXAnimatedImage *)self cache];
      [v8 prepareImageForFrameIndex:a4 + v6];

      v9 = [(SXAnimatedImage *)self numberOfFrames];
      if (v6 > 1)
      {
        break;
      }

      ++v6;
    }

    while (v7 + 1 < v9);
  }

  if ([(SXAnimatedImage *)self preloadType]== 2)
  {
    v10 = 0;
    v11 = ([(SXAnimatedImage *)self numberOfFrames]- 1) / 3;
    v12 = 3;
    do
    {
      v13 = [(SXAnimatedImage *)self cache];
      [v13 prepareImageForFrameIndex:v10];

      v10 += v11;
      --v12;
    }

    while (v12);
  }
}

- (void)suspendPreloading
{
  v2 = [(SXAnimatedImage *)self cache];
  [v2 setSuspendPreloading:1];
}

- (void)resumePreloading
{
  v2 = [(SXAnimatedImage *)self cache];
  [v2 setSuspendPreloading:0];
}

- (SXAnimatedImageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end