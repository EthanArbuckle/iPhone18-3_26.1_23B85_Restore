@interface SKUIPlayButtonImageCache
+ (id)imageCacheForStyle:(int64_t)a3;
- (SKUIPlayButtonImageCache)initWithStyle:(int64_t)a3;
- (UIImage)pauseImage;
- (UIImage)playImage;
- (UIImage)stopImage;
- (void)preloadImages;
@end

@implementation SKUIPlayButtonImageCache

+ (id)imageCacheForStyle:(int64_t)a3
{
  if (imageCacheForStyle__onceToken != -1)
  {
    +[SKUIPlayButtonImageCache imageCacheForStyle:];
  }

  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [imageCacheForStyle__sharedCaches objectForKey:v4];
  if (!v5)
  {
    v5 = [[SKUIPlayButtonImageCache alloc] initWithStyle:a3];
    [imageCacheForStyle__sharedCaches setObject:v5 forKey:v4];
  }

  return v5;
}

uint64_t __47__SKUIPlayButtonImageCache_imageCacheForStyle___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = imageCacheForStyle__sharedCaches;
  imageCacheForStyle__sharedCaches = v0;

  v2 = imageCacheForStyle__sharedCaches;

  return [v2 setName:@"com.apple.StoreKitUI.SKUIPlayButtonImageCache.imageCacheForStyle"];
}

- (SKUIPlayButtonImageCache)initWithStyle:(int64_t)a3
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIPlayButtonImageCache initWithStyle:];
  }

  v17.receiver = self;
  v17.super_class = SKUIPlayButtonImageCache;
  v5 = [(SKUIPlayButtonImageCache *)&v17 init];
  v6 = v5;
  if (v5)
  {
    v5->_imageLock._os_unfair_lock_opaque = 0;
    v7 = SKUIBundle();
    bundle = v6->_bundle;
    v6->_bundle = v7;

    if (a3 <= 2)
    {
      v9 = off_2781FF758[a3];
      v10 = off_2781FF770[a3];
      playImageName = v6->_playImageName;
      v6->_playImageName = &v9->isa;

      pauseImageName = v6->_pauseImageName;
      v6->_pauseImageName = &v10->isa;

      stopImageName = v6->_stopImageName;
      v6->_stopImageName = @"UniversalPlayButtonStopIcon";
    }

    if (!v6->_playImage)
    {
      v14 = [MEMORY[0x277D755B8] imageNamed:v6->_playImageName inBundle:v6->_bundle];
      playImage = v6->_playImage;
      v6->_playImage = v14;
    }
  }

  return v6;
}

- (UIImage)playImage
{
  playImage = self->_playImage;
  if (!playImage)
  {
    os_unfair_lock_lock(&self->_imageLock);
    if (!self->_playImage)
    {
      v4 = [MEMORY[0x277D755B8] imageNamed:self->_playImageName inBundle:self->_bundle];
      v5 = self->_playImage;
      self->_playImage = v4;
    }

    os_unfair_lock_unlock(&self->_imageLock);
    playImage = self->_playImage;
  }

  return playImage;
}

- (UIImage)pauseImage
{
  pauseImage = self->_pauseImage;
  if (!pauseImage)
  {
    os_unfair_lock_lock(&self->_imageLock);
    if (!self->_pauseImage)
    {
      v4 = [MEMORY[0x277D755B8] imageNamed:self->_pauseImageName inBundle:self->_bundle];
      v5 = self->_pauseImage;
      self->_pauseImage = v4;
    }

    os_unfair_lock_unlock(&self->_imageLock);
    pauseImage = self->_pauseImage;
  }

  return pauseImage;
}

- (UIImage)stopImage
{
  stopImage = self->_stopImage;
  if (!stopImage)
  {
    os_unfair_lock_lock(&self->_imageLock);
    if (!self->_stopImage)
    {
      v4 = [MEMORY[0x277D755B8] imageNamed:self->_stopImageName inBundle:self->_bundle];
      v5 = self->_stopImage;
      self->_stopImage = v4;
    }

    os_unfair_lock_unlock(&self->_imageLock);
    stopImage = self->_stopImage;
  }

  return stopImage;
}

- (void)preloadImages
{
  os_unfair_lock_lock(&self->_imageLock);
  if (!self->_playImage)
  {
    v3 = [MEMORY[0x277D755B8] imageNamed:self->_playImageName inBundle:self->_bundle];
    playImage = self->_playImage;
    self->_playImage = v3;
  }

  if (!self->_pauseImage)
  {
    v5 = [MEMORY[0x277D755B8] imageNamed:self->_pauseImageName inBundle:self->_bundle];
    pauseImage = self->_pauseImage;
    self->_pauseImage = v5;
  }

  if (!self->_stopImage)
  {
    v7 = [MEMORY[0x277D755B8] imageNamed:self->_stopImageName inBundle:self->_bundle];
    stopImage = self->_stopImage;
    self->_stopImage = v7;
  }

  os_unfair_lock_unlock(&self->_imageLock);
}

- (void)initWithStyle:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIPlayButtonImageCache initWithStyle:]";
}

@end