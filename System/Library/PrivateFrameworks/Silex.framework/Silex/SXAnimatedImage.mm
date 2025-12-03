@interface SXAnimatedImage
+ (SXAnimatedImage)animatedImageWithData:(id)data scale:(double)scale size:(CGSize)size;
+ (SXAnimatedImage)animatedImageWithURL:(id)l scale:(double)scale type:(int64_t)type;
- (CGSize)imageSize;
- (SXAnimatedImage)initWithDataProvider:(CGDataProvider *)provider scale:(double)scale type:(int64_t)type size:(CGSize)size;
- (SXAnimatedImage)initWithImageSource:(CGImageSource *)source scale:(double)scale type:(int64_t)type size:(CGSize)size;
- (SXAnimatedImageDelegate)delegate;
- (id)frameAtIndex:(unint64_t)index returnNearestPreloaded:(BOOL)preloaded;
- (void)animatedImageViewCache:(id)cache didCacheImageForFrameIndex:(unint64_t)index;
- (void)capturePropertiesForType:(int64_t)type;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)generateFrames;
- (void)resumePreloading;
- (void)setPreloadType:(int64_t)type currentFrameIndex:(unint64_t)index;
- (void)suspendPreloading;
@end

@implementation SXAnimatedImage

+ (SXAnimatedImage)animatedImageWithURL:(id)l scale:(double)scale type:(int64_t)type
{
  v8 = CGDataProviderCreateWithURL(l);
  if (v8)
  {
    v9 = v8;
    v10 = [self alloc];
    v11 = [v10 initWithDataProvider:v9 scale:type type:scale size:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    CGDataProviderRelease(v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (SXAnimatedImage)animatedImageWithData:(id)data scale:(double)scale size:(CGSize)size
{
  height = size.height;
  width = size.width;
  dataCopy = data;
  v10 = CGDataProviderCreateWithCFData(dataCopy);
  if (v10)
  {
    v11 = v10;
    v12 = +[SXImageDecodingTools sharedInstance];
    v13 = [v12 contentTypeForImageData:dataCopy];
    v14 = v13 == *MEMORY[0x1E6963860];

    v15 = [[self alloc] initWithDataProvider:v11 scale:v14 type:scale size:{width, height}];
    CGDataProviderRelease(v11);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (SXAnimatedImage)initWithDataProvider:(CGDataProvider *)provider scale:(double)scale type:(int64_t)type size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v11 = CGImageSourceCreateWithDataProvider(provider, 0);
  height = [(SXAnimatedImage *)self initWithImageSource:v11 scale:type type:scale size:width, height];
  CFRelease(v11);

  return height;
}

- (SXAnimatedImage)initWithImageSource:(CGImageSource *)source scale:(double)scale type:(int64_t)type size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v18.receiver = self;
  v18.super_class = SXAnimatedImage;
  v11 = [(SXAnimatedImage *)&v18 init];
  if (v11)
  {
    v11->_imageSource = CFRetain(source);
    v11->_imageType = type;
    v11->_scale = scale;
    height = [[SXAnimatedImageViewCache alloc] initWithImageSize:width, height];
    cache = v11->_cache;
    v11->_cache = height;

    [(SXAnimatedImageViewCache *)v11->_cache setDelegate:v11];
    [(SXAnimatedImage *)v11 capturePropertiesForType:v11->_imageType];
    [(SXAnimatedImage *)v11 generateFrames];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel_didReceiveMemoryWarning name:*MEMORY[0x1E69DDAD8] object:0];

    cache = [(SXAnimatedImage *)v11 cache];
    [cache setAnimatedImage:v11];

    cache2 = [(SXAnimatedImage *)v11 cache];
    [cache2 prepareImageForFrameIndex:0];
  }

  return v11;
}

- (void)capturePropertiesForType:(int64_t)type
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
  if (type == 1)
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
    if (type == 1)
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
      imageSource = [(SXAnimatedImage *)self imageSource];
      cache = [(SXAnimatedImage *)self cache];
      v7 = [(SXAnimatedImageFrame *)&v4->super.isa initWithImageSource:imageSource index:v3 cache:cache type:[(SXAnimatedImage *)self imageType]];

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

- (id)frameAtIndex:(unint64_t)index returnNearestPreloaded:(BOOL)preloaded
{
  if (preloaded)
  {
    cache = [(SXAnimatedImage *)self cache];
    index = [cache nearestCachedFrameIndexForFrameIndex:index];
  }

  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    if ([(SXAnimatedImage *)self preloadType]== 1)
    {
      cache2 = [(SXAnimatedImage *)self cache];
      numberOfFrames = [(SXAnimatedImage *)self numberOfFrames];
      if (numberOfFrames - 1 >= index + 3)
      {
        v10 = index + 3;
      }

      else
      {
        v10 = numberOfFrames - 1;
      }

      [cache2 prepareImageForFrameIndex:v10];
    }

    frames = [(SXAnimatedImage *)self frames];
    v7 = [frames objectAtIndex:index];
  }

  return v7;
}

- (void)didReceiveMemoryWarning
{
  cache = [(SXAnimatedImage *)self cache];
  [cache prune];
}

- (void)dealloc
{
  imageSource = self->_imageSource;
  if (imageSource)
  {
    CFRelease(imageSource);
    self->_imageSource = 0;
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = SXAnimatedImage;
  [(SXAnimatedImage *)&v5 dealloc];
}

- (void)animatedImageViewCache:(id)cache didCacheImageForFrameIndex:(unint64_t)index
{
  delegate = [(SXAnimatedImage *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(SXAnimatedImage *)self delegate];
    [delegate2 animatedImage:self madeImageAvailableForFrameAtIndex:index];
  }
}

- (void)setPreloadType:(int64_t)type currentFrameIndex:(unint64_t)index
{
  self->_preloadType = type;
  if ([(SXAnimatedImage *)self preloadType]== 1 && [(SXAnimatedImage *)self numberOfFrames]> index)
  {
    v6 = 0;
    do
    {
      v7 = index + v6;
      cache = [(SXAnimatedImage *)self cache];
      [cache prepareImageForFrameIndex:index + v6];

      numberOfFrames = [(SXAnimatedImage *)self numberOfFrames];
      if (v6 > 1)
      {
        break;
      }

      ++v6;
    }

    while (v7 + 1 < numberOfFrames);
  }

  if ([(SXAnimatedImage *)self preloadType]== 2)
  {
    v10 = 0;
    v11 = ([(SXAnimatedImage *)self numberOfFrames]- 1) / 3;
    v12 = 3;
    do
    {
      cache2 = [(SXAnimatedImage *)self cache];
      [cache2 prepareImageForFrameIndex:v10];

      v10 += v11;
      --v12;
    }

    while (v12);
  }
}

- (void)suspendPreloading
{
  cache = [(SXAnimatedImage *)self cache];
  [cache setSuspendPreloading:1];
}

- (void)resumePreloading
{
  cache = [(SXAnimatedImage *)self cache];
  [cache setSuspendPreloading:0];
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