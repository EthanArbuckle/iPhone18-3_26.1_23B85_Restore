@interface VKCStickerVideoDecoder
- (CGImage)frameAtIndex:(int64_t)a3;
- (id)delegate;
- (id)setDelegate:(id *)result;
- (uint64_t)frameForTargetTimestamp:(void *)a1;
- (uint64_t)videoData;
- (void)configureForVideoDataChange;
- (void)setVideoData:(id *)a1;
@end

@implementation VKCStickerVideoDecoder

- (CGImage)frameAtIndex:(int64_t)a3
{
  ImageAtIndex = CGImageSourceCreateImageAtIndex([(VKCStickerVideoDecoder *)self videoCGImageSource], a3, 0);
  v4 = ImageAtIndex;
  if (ImageAtIndex)
  {
    CFAutorelease(ImageAtIndex);
  }

  return v4;
}

- (void)setVideoData:(id *)a1
{
  v4 = a2;
  if (a1 && a1[2] != v4)
  {
    v5 = v4;
    objc_storeStrong(a1 + 2, a2);
    [a1 configureForVideoDataChange];
    v4 = v5;
  }
}

- (void)configureForVideoDataChange
{
  if (self && self->_videoData)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [OUTLINED_FUNCTION_1_8() setFrameRanges:?];

    if (self && (v4 = self->_videoData) != 0)
    {
      v5 = v4;
      v6 = CGImageSourceCreateWithData(self->_videoData, 0);
    }

    else
    {
      v6 = 0;
    }

    [(VKCStickerVideoDecoder *)self setVideoCGImageSource:v6];
    if (v6)
    {
      Count = CGImageSourceGetCount(v6);
      v8 = CGImageSourceCopyProperties(v6, 0);
      v9 = [(__CFDictionary *)v8 objectForKeyedSubscript:*MEMORY[0x1E696DD20]];
      v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696DD28]];
      v11 = [v10 valueForKeyPath:*MEMORY[0x1E696DD18]];

      CFRelease(v6);
    }

    else
    {
      v8 = 0;
      v11 = 0;
      Count = 0;
    }

    [OUTLINED_FUNCTION_1_8() setVideoSourceProperties:?];
    [(VKCStickerVideoDecoder *)self setFrameCount:Count];
    [(VKCStickerVideoDecoder *)self setFrameDelays:v11];
    if (Count < 1)
    {
      v13 = 0.0;
    }

    else
    {
      v12 = 0;
      v13 = 0.0;
      do
      {
        if (self)
        {
          frameDelays = self->_frameDelays;
        }

        else
        {
          frameDelays = 0;
        }

        v15 = [(NSArray *)frameDelays objectAtIndexedSubscript:v12];
        [v15 doubleValue];
        v17 = v16;

        v18 = [VKCTimeRange alloc];
        if (v18)
        {
          v23.receiver = v18;
          v23.super_class = VKCTimeRange;
          v19 = [(VKCStickerVideoDecoder *)&v23 init];
          v20 = v19;
          if (v19)
          {
            *&v19->_delegate = v13;
            *&v19->_videoData = v17;
          }
        }

        else
        {
          v20 = 0;
        }

        v21 = [(VKCStickerVideoDecoder *)self frameRanges];
        [v21 addObject:v20];

        v13 = v13 + v17;
        ++v12;
      }

      while (Count != v12);
    }

    [(VKCStickerVideoDecoder *)self setDuration:v13];
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
    }

    else
    {
      WeakRetained = 0;
    }

    [WeakRetained initialProcessingCompleteForDecoder:self];
  }
}

- (uint64_t)videoData
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (id)delegate
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 1);
    v1 = vars8;
  }

  return WeakRetained;
}

- (uint64_t)frameForTargetTimestamp:(void *)a1
{
  if (!a1 || ![a1 frameCount] || !objc_msgSend(a1, "videoCGImageSource"))
  {
    return 0;
  }

  [a1 duration];
  v5 = fmod(a2, v4);
  if ([a1 frameCount] >= 1)
  {
    v6 = 0;
    do
    {
      v7 = [a1 previousFrameIndex] + v6;
      v8 = v7 % [a1 frameCount];
      v9 = [a1 frameRanges];
      v10 = [v9 objectAtIndexedSubscript:v8];

      if (v10 && (v11 = v10[1], v11 <= v5))
      {
        v12 = v11 + v10[2];

        if (v12 > v5)
        {
          break;
        }
      }

      else
      {
      }

      ++v6;
    }

    while (v6 < [a1 frameCount]);
  }

  [a1 frameCount];
  [OUTLINED_FUNCTION_1_8() setPreviousFrameIndex:?];
  v14 = OUTLINED_FUNCTION_1_8();

  return [v14 frameAtIndex:?];
}

- (id)setDelegate:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 1, a2);
  }

  return result;
}

@end