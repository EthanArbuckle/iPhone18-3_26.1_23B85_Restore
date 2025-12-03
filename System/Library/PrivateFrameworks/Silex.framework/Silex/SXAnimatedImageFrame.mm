@interface SXAnimatedImageFrame
- (double)duration;
- (id)image;
- (id)initWithImageSource:(void *)source index:(void *)index cache:(void *)cache type:;
- (uint64_t)index;
- (void)captureFrameProperties;
- (void)dealloc;
@end

@implementation SXAnimatedImageFrame

- (void)dealloc
{
  imageSource = self->_imageSource;
  if (imageSource)
  {
    CFRelease(imageSource);
    self->_imageSource = 0;
  }

  v4.receiver = self;
  v4.super_class = SXAnimatedImageFrame;
  [(SXAnimatedImageFrame *)&v4 dealloc];
}

- (id)initWithImageSource:(void *)source index:(void *)index cache:(void *)cache type:
{
  indexCopy = index;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = SXAnimatedImageFrame;
    self = objc_msgSendSuper2(&v12, sel_init);
    if (self)
    {
      self[2] = CFRetain(a2);
      self[4] = source;
      objc_storeStrong(self + 1, index);
      self[5] = cache;
      [(SXAnimatedImageFrame *)self captureFrameProperties];
    }
  }

  return self;
}

- (void)captureFrameProperties
{
  if (self)
  {
    v1 = MEMORY[0x1E696DB70];
    v2 = MEMORY[0x1E696DB68];
    *(self + 24) = 0x3FB999999999999ALL;
    v3 = (self + 24);
    v4 = *(self + 40);
    if (v4 == 1)
    {
      v5 = MEMORY[0x1E696D3C0];
    }

    else
    {
      v5 = v2;
    }

    if (v4 == 1)
    {
      v1 = MEMORY[0x1E696DEB0];
    }

    v6 = *v1;
    v7 = CGImageSourceCopyPropertiesAtIndex(*(self + 16), *(self + 32), 0);
    value = 0;
    if (CFDictionaryGetValueIfPresent(v7, v6, &value))
    {
      if (v4 == 1)
      {
        v8 = *MEMORY[0x1E696D3D0];
      }

      else
      {
        v8 = *MEMORY[0x1E696DB80];
      }

      number = 0;
      if (!CFDictionaryGetValueIfPresent(value, v8, &number))
      {
        CFDictionaryGetValueIfPresent(value, *v5, &number);
      }

      if (number)
      {
        CFNumberGetValue(number, kCFNumberDoubleType, v3);
      }
    }

    CFRelease(v7);
    if (*v3 < 0.011)
    {
      *v3 = 0.1;
    }
  }
}

- (uint64_t)index
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (id)image
{
  if (self)
  {
    self = [*(self + 8) imageForFrameIndex:*(self + 32)];
    v1 = vars8;
  }

  return self;
}

- (double)duration
{
  if (self)
  {
    return *(self + 24);
  }

  else
  {
    return 0.0;
  }
}

@end