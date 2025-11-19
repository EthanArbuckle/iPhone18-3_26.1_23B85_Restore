@interface PFAnimatedImage
- (CGSize)pixelSize;
- (PFAnimatedImage)initWithData:(id)a3 cachingStrategy:(int64_t)a4;
- (PFAnimatedImage)initWithImageSource:(CGImageSource *)a3 cachingStrategy:(int64_t)a4 useGlobalDecodeQueue:(BOOL)a5;
- (PFAnimatedImage)initWithURL:(id)a3 cachingStrategy:(int64_t)a4 useGlobalDecodeQueue:(BOOL)a5;
- (void)_loadLoopCountAndFrameDelayTimes;
- (void)_preloadDelayTimes;
- (void)dealloc;
@end

@implementation PFAnimatedImage

- (CGSize)pixelSize
{
  width = self->_pixelSize.width;
  height = self->_pixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_loadLoopCountAndFrameDelayTimes
{
  v3 = CGImageSourceCopyProperties(self->_imageSource, 0);
  v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x1E696DB70]];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(__CFDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x1E696DD20]];
  }

  v7 = v6;

  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696DB78]];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 unsignedIntegerValue];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFAnimatedImage: no loop count found, will default to 0 (infinite)", v11, 2u);
    }

    v10 = 0;
  }

  self->_loopCount = v10;
  self->_frameDelayTimes = malloc_type_calloc(self->_frameCount, 8uLL, 0x100004000313F17uLL);
}

- (void)_preloadDelayTimes
{
  v25 = *MEMORY[0x1E69E9840];
  self->_duration = 0.0;
  if (self->_frameCount)
  {
    v3 = 0;
    v4 = *MEMORY[0x1E696DB70];
    v21 = *MEMORY[0x1E696DD20];
    v5 = *MEMORY[0x1E696DB80];
    v22 = *MEMORY[0x1E696DB68];
    v6 = MEMORY[0x1E69E9C10];
    do
    {
      v7 = CGImageSourceCopyPropertiesAtIndex(self->_imageSource, v3, 0);
      v8 = v7;
      if (v7)
      {
        v9 = v7;
        v10 = [(__CFDictionary *)v9 objectForKeyedSubscript:v4];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = [(__CFDictionary *)v9 objectForKeyedSubscript:v21];
        }

        v13 = v12;

        v14 = [v13 objectForKeyedSubscript:v5];
        v15 = v14;
        if (!v14 || ([v14 doubleValue], v16 == 0.0))
        {
          v17 = [v13 objectForKeyedSubscript:v22];

          v15 = v17;
        }

        [v15 doubleValue];
        v19 = v18;

        if (v19 >= 0.00833333333)
        {
          goto LABEL_19;
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v24 = v3;
        _os_log_impl(&dword_1B35C1000, v6, OS_LOG_TYPE_INFO, "PFAnimatedImage: Failed to fetch properties for frame at index %lu", buf, 0xCu);
      }

      v20 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v3)
      {
        if (v20)
        {
          *buf = 134217984;
          v24 = v3;
          _os_log_impl(&dword_1B35C1000, v6, OS_LOG_TYPE_INFO, "PFAnimatedImage: Failed to find a delay for frame %lu. Falling back to previous frame", buf, 0xCu);
        }

        v19 = self->_frameDelayTimes[v3 - 1];
      }

      else
      {
        v19 = 0.0333333333;
        if (v20)
        {
          *buf = 0;
          _os_log_impl(&dword_1B35C1000, v6, OS_LOG_TYPE_INFO, "PFAnimatedImage: No frame delay for initial frame. Falling back to 30fps. This may impact the entire playback", buf, 2u);
          v19 = 0.0333333333;
        }
      }

LABEL_19:
      self->_frameDelayTimes[v3] = v19;
      self->_duration = v19 + self->_duration;

      ++v3;
    }

    while (v3 < self->_frameCount);
  }
}

- (void)dealloc
{
  imageSource = self->_imageSource;
  if (imageSource)
  {
    CFRelease(imageSource);
  }

  frameDelayTimes = self->_frameDelayTimes;
  if (frameDelayTimes)
  {
    free(frameDelayTimes);
  }

  v5.receiver = self;
  v5.super_class = PFAnimatedImage;
  [(PFAnimatedImage *)&v5 dealloc];
}

- (PFAnimatedImage)initWithImageSource:(CGImageSource *)a3 cachingStrategy:(int64_t)a4 useGlobalDecodeQueue:(BOOL)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = a5;
    v17.receiver = self;
    v17.super_class = PFAnimatedImage;
    v8 = [(PFAnimatedImage *)&v17 init];
    if (v8)
    {
      v8->_imageSource = CFRetain(a3);
      v9 = [[PFFrameCache alloc] initWithImageSource:a3 cachingStrategy:a4 useGlobalDecodeQueue:v5];
      frameCache = v8->_frameCache;
      v8->_frameCache = v9;

      v8->_frameCount = CGImageSourceGetCount(a3);
      v18 = *MEMORY[0x1E696E0A8];
      v19[0] = MEMORY[0x1E695E110];
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      ImageAtIndex = CGImageSourceCreateImageAtIndex(a3, 0, v11);
      Width = CGImageGetWidth(ImageAtIndex);
      Height = CGImageGetHeight(ImageAtIndex);
      v8->_pixelSize.width = Width;
      v8->_pixelSize.height = Height;
      CGImageRelease(ImageAtIndex);
      [(PFAnimatedImage *)v8 _loadLoopCountAndFrameDelayTimes];
      [(PFAnimatedImage *)v8 _preloadDelayTimes];
    }

    self = v8;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (PFAnimatedImage)initWithData:(id)a3 cachingStrategy:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && (v8 = CGImageSourceCreateWithData(v6, 0)) != 0)
  {
    v9 = v8;
    v10 = [(PFAnimatedImage *)self initWithImageSource:v8 cachingStrategy:a4];
    CFRelease(v9);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "PFAnimatedImage: unable to load animated image from data", v12, 2u);
    }

    v10 = [(PFAnimatedImage *)self initWithImageSource:0 cachingStrategy:a4];
  }

  return v10;
}

- (PFAnimatedImage)initWithURL:(id)a3 cachingStrategy:(int64_t)a4 useGlobalDecodeQueue:(BOOL)a5
{
  v5 = a5;
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = v8;
  if (v8 && (v10 = CGImageSourceCreateWithURL(v8, 0)) != 0)
  {
    v11 = v10;
    v12 = [(PFAnimatedImage *)self initWithImageSource:v10 cachingStrategy:a4 useGlobalDecodeQueue:v5];
    CFRelease(v11);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v9;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "PFAnimatedImage: unable to load animated image at URL: %@", &v14, 0xCu);
    }

    v12 = [(PFAnimatedImage *)self initWithImageSource:0 cachingStrategy:a4 useGlobalDecodeQueue:v5];
  }

  return v12;
}

@end