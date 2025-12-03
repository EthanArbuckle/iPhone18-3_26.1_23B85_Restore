@interface SXAnimatedImageViewCache
- (CGSize)size;
- (SXAnimatedImage)animatedImage;
- (SXAnimatedImageViewCache)initWithImageSize:(CGSize)size;
- (SXAnimatedImageViewCacheDelegate)delegate;
- (id)decodeImageFromSource:(CGImageSource *)source index:(unint64_t)index;
- (id)imageForFrameIndex:(unint64_t)index;
- (unint64_t)maxCacheSize;
- (unint64_t)nearestCachedFrameIndexForFrameIndex:(unint64_t)index;
- (void)cacheNextImage;
- (void)checkCacheSize;
- (void)decreaseCacheSize;
- (void)prepareCache;
- (void)prepareImageForFrameIndex:(unint64_t)index;
- (void)prune;
- (void)restoreCacheSize;
- (void)setAnimatedImage:(id)image;
@end

@implementation SXAnimatedImageViewCache

- (SXAnimatedImageViewCache)initWithImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v13.receiver = self;
  v13.super_class = SXAnimatedImageViewCache;
  v5 = [(SXAnimatedImageViewCache *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    queue = v5->_queue;
    v5->_queue = v6;

    [(NSOperationQueue *)v5->_queue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v5->_queue setQualityOfService:17];
    v5->_lock._os_unfair_lock_opaque = 0;
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    cachedImages = v5->_cachedImages;
    v5->_cachedImages = v8;

    v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
    indicesToCache = v5->_indicesToCache;
    v5->_indicesToCache = v10;

    v5->_numberOfCachedImages = 0;
    v5->_cachingEnabled = 1;
    v5->_size.width = width;
    v5->_size.height = height;
  }

  return v5;
}

- (void)setAnimatedImage:(id)image
{
  imageCopy = image;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_animatedImage, imageCopy);

  os_unfair_lock_unlock(&self->_lock);
  if (imageCopy)
  {

    [(SXAnimatedImageViewCache *)self prepareCache];
  }
}

- (void)prepareImageForFrameIndex:(unint64_t)index
{
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableArray *)self->_cachedImages objectAtIndex:index];
  null = [MEMORY[0x1E695DFB0] null];

  os_unfair_lock_unlock(&self->_lock);
  if (v5 == null)
  {
    os_unfair_lock_lock_with_options();
    [(NSMutableIndexSet *)self->_indicesToCache addIndex:index];
    v7 = [(NSMutableIndexSet *)self->_indicesToCache count];
    os_unfair_lock_unlock(&self->_lock);
    if (v7 == 1)
    {

      [(SXAnimatedImageViewCache *)self cacheNextImage];
    }
  }
}

- (unint64_t)nearestCachedFrameIndexForFrameIndex:(unint64_t)index
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_animatedImage);
  numberOfFrames = [WeakRetained numberOfFrames];

  v7 = index + 1;
  v8 = index - 1;
  v9 = 1;
  if (((index - 1) & 0x8000000000000000) != 0)
  {
    goto LABEL_5;
  }

LABEL_2:
  v10 = [(NSMutableArray *)self->_cachedImages objectAtIndex:v8];
  null = [MEMORY[0x1E695DFB0] null];

  if (v10 != null)
  {
    goto LABEL_11;
  }

  v12 = v7;
  if (v7 < numberOfFrames)
  {
    goto LABEL_7;
  }

  while (1)
  {
    ++v9;
    ++v7;
    if ((--v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_2;
    }

LABEL_5:
    if (v7 >= numberOfFrames)
    {
      break;
    }

    v12 = v9 + index;
LABEL_7:
    v13 = [(NSMutableArray *)self->_cachedImages objectAtIndex:v12];
    null2 = [MEMORY[0x1E695DFB0] null];

    if (v13 != null2)
    {
      goto LABEL_11;
    }
  }

  index = 0x7FFFFFFFFFFFFFFFLL;
LABEL_11:
  os_unfair_lock_unlock(&self->_lock);
  return index;
}

- (id)imageForFrameIndex:(unint64_t)index
{
  self->_lastRequestedIndex = index;
  os_unfair_lock_lock_with_options();
  if ([(NSMutableArray *)self->_cachedImages count]<= index)
  {
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_5;
  }

  v5 = [(NSMutableArray *)self->_cachedImages objectAtIndex:index];
  null = [MEMORY[0x1E695DFB0] null];

  if (v5 == null)
  {
    if (([(NSMutableIndexSet *)self->_indicesToCache containsIndex:index]& 1) != 0)
    {
      v7 = 0;
      goto LABEL_8;
    }

    [(NSMutableIndexSet *)self->_indicesToCache addIndex:index];
    v9 = [(NSMutableIndexSet *)self->_indicesToCache count];

    os_unfair_lock_unlock(&self->_lock);
    if (v9 == 1)
    {
      [(SXAnimatedImageViewCache *)self cacheNextImage];
    }

LABEL_5:
    v7 = 0;
    goto LABEL_9;
  }

  v7 = v5;
LABEL_8:

  os_unfair_lock_unlock(&self->_lock);
LABEL_9:

  return v7;
}

- (void)prune
{
  os_unfair_lock_lock_with_options();
  numberOfCachedImages = self->_numberOfCachedImages;
  WeakRetained = objc_loadWeakRetained(&self->_animatedImage);
  numberOfFrames = [WeakRetained numberOfFrames];

  os_unfair_lock_unlock(&self->_lock);
  if (numberOfCachedImages)
  {
    os_unfair_lock_lock_with_options();
    self->_numberOfCachedImages = 0;
    os_unfair_lock_unlock(&self->_lock);
    if (numberOfFrames)
    {
      for (i = 0; i != numberOfFrames; ++i)
      {
        os_unfair_lock_lock_with_options();
        cachedImages = self->_cachedImages;
        null = [MEMORY[0x1E695DFB0] null];
        [(NSMutableArray *)cachedImages replaceObjectAtIndex:i withObject:null];

        os_unfair_lock_unlock(&self->_lock);
      }
    }
  }

  [(SXAnimatedImageViewCache *)self decreaseCacheSize];

  [(SXAnimatedImageViewCache *)self performSelector:sel_restoreCacheSize withObject:0 afterDelay:5.0];
}

- (unint64_t)maxCacheSize
{
  os_unfair_lock_lock_with_options();
  if (self->_cachingEnabled)
  {
    singleImageByteSize = 41943040;
  }

  else
  {
    singleImageByteSize = self->_singleImageByteSize;
  }

  os_unfair_lock_unlock(&self->_lock);
  return singleImageByteSize;
}

- (void)decreaseCacheSize
{
  os_unfair_lock_lock_with_options();
  self->_cachingEnabled = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)restoreCacheSize
{
  os_unfair_lock_lock_with_options();
  self->_cachingEnabled = 1;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)prepareCache
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_animatedImage);
  numberOfFrames = [WeakRetained numberOfFrames];

  [(NSMutableArray *)self->_cachedImages removeAllObjects];
  [(NSMutableIndexSet *)self->_indicesToCache removeAllIndexes];
  for (; numberOfFrames; --numberOfFrames)
  {
    cachedImages = self->_cachedImages;
    null = [MEMORY[0x1E695DFB0] null];
    [(NSMutableArray *)cachedImages addObject:null];
  }

  v7 = objc_loadWeakRetained(&self->_animatedImage);
  self->_singleImageByteSize = [v7 uncompressedByteSizePerFrame];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)cacheNextImage
{
  os_unfair_lock_lock_with_options();
  animatedImage = [(SXAnimatedImageViewCache *)self animatedImage];
  v4 = animatedImage;
  if (animatedImage && (v5 = [animatedImage imageSource]) != 0)
  {
    v6 = v5;
    CFRetain(v5);
    os_unfair_lock_unlock(&self->_lock);
    objc_initWeak(&location, self);
    queue = self->_queue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__SXAnimatedImageViewCache_cacheNextImage__block_invoke;
    v8[3] = &unk_1E84FE838;
    objc_copyWeak(v9, &location);
    v9[1] = v6;
    [(NSOperationQueue *)queue addOperationWithBlock:v8];
    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

void __42__SXAnimatedImageViewCache_cacheNextImage__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    os_unfair_lock_lock_with_options();
    v2 = [*(WeakRetained + 9) firstIndex];
    if (v2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      os_unfair_lock_unlock(WeakRetained + 3);
    }

    else
    {
      [*(WeakRetained + 9) removeIndex:v2];
      os_unfair_lock_unlock(WeakRetained + 3);
      os_unfair_lock_lock_with_options();
      v3 = [*(WeakRetained + 8) objectAtIndex:v2];
      v4 = [MEMORY[0x1E695DFB0] null];

      os_unfair_lock_unlock(WeakRetained + 3);
      if (v3 == v4)
      {
        v5 = [WeakRetained decodeImageFromSource:*(a1 + 40) index:v2];
        if (v5)
        {
          os_unfair_lock_lock_with_options();
          [*(WeakRetained + 8) replaceObjectAtIndex:v2 withObject:v5];
          ++*(WeakRetained + 7);
          os_unfair_lock_unlock(WeakRetained + 3);
          v6 = objc_loadWeakRetained(WeakRetained + 2);
          v7 = objc_opt_respondsToSelector();

          if (v7)
          {
            v8 = objc_loadWeakRetained(WeakRetained + 2);
            [v8 animatedImageViewCache:WeakRetained didCacheImageForFrameIndex:v2];
          }
        }
      }
    }

    CFRelease(*(a1 + 40));
    [WeakRetained checkCacheSize];
    if (v2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [WeakRetained cacheNextImage];
    }
  }

  else
  {
    CFRelease(*(a1 + 40));
  }
}

- (void)checkCacheSize
{
  os_unfair_lock_lock_with_options();
  numberOfCachedImages = self->_numberOfCachedImages;
  WeakRetained = objc_loadWeakRetained(&self->_animatedImage);
  numberOfFrames = [WeakRetained numberOfFrames];

  os_unfair_lock_unlock(&self->_lock);
  v6 = self->_singleImageByteSize * numberOfCachedImages;
  if (v6 > [(SXAnimatedImageViewCache *)self maxCacheSize])
  {
    lastRequestedIndex = self->_lastRequestedIndex;
    v8 = 0xF00000uLL / self->_singleImageByteSize + 1;
    if (lastRequestedIndex)
    {
      v9 = lastRequestedIndex - 1;
    }

    else
    {
      v9 = 0;
    }

    while (1)
    {
      os_unfair_lock_lock_with_options();
      if (v9 < [(NSMutableArray *)self->_cachedImages count])
      {
        v10 = [(NSMutableArray *)self->_cachedImages objectAtIndex:v9];
        null = [MEMORY[0x1E695DFB0] null];

        if (v10 != null)
        {
          cachedImages = self->_cachedImages;
          null2 = [MEMORY[0x1E695DFB0] null];
          [(NSMutableArray *)cachedImages replaceObjectAtIndex:v9 withObject:null2];

          --self->_numberOfCachedImages;
          --v8;
        }
      }

      os_unfair_lock_unlock(&self->_lock);
      os_unfair_lock_lock_with_options();
      if (!self->_numberOfCachedImages)
      {
        break;
      }

      if (v9)
      {
        v14 = v9;
      }

      else
      {
        v14 = numberOfFrames;
      }

      v9 = v14 - 1;
      os_unfair_lock_unlock(&self->_lock);
      if (!v8)
      {
        return;
      }
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (id)decodeImageFromSource:(CGImageSource *)source index:(unint64_t)index
{
  ImageAtIndex = CGImageSourceCreateImageAtIndex(source, index, 0);
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v8 = v7;

  v9 = +[SXImageDecodingTools sharedInstance];
  v10 = [v9 newImageByDecodingImage:ImageAtIndex size:{v8 * self->_size.width, v8 * self->_size.height}];

  v11 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v10 scale:0 orientation:v8];
  CGImageRelease(v10);
  CGImageRelease(ImageAtIndex);

  return v11;
}

- (SXAnimatedImageViewCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SXAnimatedImage)animatedImage
{
  WeakRetained = objc_loadWeakRetained(&self->_animatedImage);

  return WeakRetained;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end