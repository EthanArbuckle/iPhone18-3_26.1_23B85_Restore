@interface TVPClipMediaItem
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)hasTrait:(id)a3;
- (BOOL)isKindOfClass:(Class)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (TVPClipMediaItem)initWithMediaItem:(id)a3 clipTimeRange:(id)a4;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)mediaItemMetadataForProperty:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)_mediaItemMetadataWillOrDidChange:(id)a3;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
- (void)setMediaItemMetadata:(id)a3 forProperty:(id)a4;
@end

@implementation TVPClipMediaItem

- (TVPClipMediaItem)initWithMediaItem:(id)a3 clipTimeRange:(id)a4
{
  v7 = a3;
  v8 = a4;
  v27.receiver = self;
  v27.super_class = TVPClipMediaItem;
  v9 = [(TVPClipMediaItem *)&v27 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaItem, a3);
    objc_storeStrong(&v10->_clipTimeRange, a4);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    localMetadata = v10->_localMetadata;
    v10->_localMetadata = v11;

    v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"TVPMediaItemMetadataStartTime", @"TVPMediaItemMetadataForwardPlaybackEndTime", @"TVPMediaItemMetadataReversePlaybackEndTime", @"TVPMediaItemMetadataTitle", @"TVPMediaItemMetadataLongDescription", @"TVPMediaItemMetadataArtworkURLString", @"TVPMediaItemMetadataTomatoFreshness", @"TVPMediaItemMetadataTomatoPercentage", @"TVPMediaItemMetadataMPNowPlayingContentItem", @"TVPMediaItemMetadataDuration", 0}];
    localMetadataKeys = v10->_localMetadataKeys;
    v10->_localMetadataKeys = v13;

    v15 = v10->_localMetadata;
    v16 = MEMORY[0x277CCABB0];
    [v8 startTime];
    v17 = [v16 numberWithDouble:?];
    [(NSMutableDictionary *)v15 setObject:v17 forKey:@"TVPMediaItemMetadataStartTime"];

    v18 = v10->_localMetadata;
    v19 = MEMORY[0x277CCABB0];
    [v8 endTime];
    v20 = [v19 numberWithDouble:?];
    [(NSMutableDictionary *)v18 setObject:v20 forKey:@"TVPMediaItemMetadataForwardPlaybackEndTime"];

    v21 = v10->_localMetadata;
    v22 = MEMORY[0x277CCABB0];
    [v8 startTime];
    v23 = [v22 numberWithDouble:?];
    [(NSMutableDictionary *)v21 setObject:v23 forKey:@"TVPMediaItemMetadataReversePlaybackEndTime"];

    v24 = [MEMORY[0x277CCAB98] defaultCenter];
    [v24 addObserver:v10 selector:sel__mediaItemMetadataWillOrDidChange_ name:@"TVPMediaItemMetadataWillChangeNotification" object:v10->_mediaItem];

    v25 = [MEMORY[0x277CCAB98] defaultCenter];
    [v25 addObserver:v10 selector:sel__mediaItemMetadataWillOrDidChange_ name:@"TVPMediaItemMetadataDidChangeNotification" object:v10->_mediaItem];
  }

  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TVPClipMediaItem;
  [(TVPClipMediaItem *)&v4 dealloc];
}

- (BOOL)hasTrait:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"TVPMediaItemTraitIsScene"])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(TVPMediaItem *)self->_mediaItem hasTrait:v4];
  }

  return v5;
}

- (void)setMediaItemMetadata:(id)a3 forProperty:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7 && [(NSSet *)self->_localMetadataKeys containsObject:v7])
  {
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v19 = v7;
    v20 = @"TVPMediaItemMetadataChangesKey";
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v21[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    [v8 postNotificationName:@"TVPMediaItemMetadataWillChangeNotification" object:self userInfo:v10];

    localMetadata = self->_localMetadata;
    if (v6)
    {
      [(NSMutableDictionary *)localMetadata setObject:v6 forKey:v7];
    }

    else
    {
      [(NSMutableDictionary *)localMetadata removeObjectForKey:v7];
    }

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    v16 = v7;
    v17 = @"TVPMediaItemMetadataChangesKey";
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    v18 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    [v12 postNotificationName:@"TVPMediaItemMetadataDidChangeNotification" object:self userInfo:v14];
  }

  else
  {
    [(TVPMediaItem *)self->_mediaItem setMediaItemMetadata:v6 forProperty:v7];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)mediaItemMetadataForProperty:(id)a3
{
  v4 = a3;
  if (v4 && [(NSSet *)self->_localMetadataKeys containsObject:v4])
  {
    v5 = [(NSMutableDictionary *)self->_localMetadata objectForKey:v4];
  }

  else
  {
    v5 = [(TVPMediaItem *)self->_mediaItem mediaItemMetadataForProperty:v4];
  }

  v6 = v5;

  return v6;
}

- (void)_mediaItemMetadataWillOrDidChange:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v8 = [v4 defaultCenter];
  v6 = [v5 name];
  v7 = [v5 userInfo];

  [v8 postNotificationName:v6 object:self userInfo:v7];
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  mediaItem = self->_mediaItem;
  if (objc_opt_respondsToSelector())
  {
    v6 = self->_mediaItem;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TVPClipMediaItem;
    v6 = [(TVPClipMediaItem *)&v8 forwardingTargetForSelector:a3];
  }

  return v6;
}

- (void)forwardInvocation:(id)a3
{
  mediaItem = self->_mediaItem;
  v5 = a3;
  [v5 selector];
  if (objc_opt_respondsToSelector())
  {
    [v5 invokeWithTarget:self->_mediaItem];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TVPClipMediaItem;
    [(TVPClipMediaItem *)&v6 forwardInvocation:v5];
  }
}

- (BOOL)respondsToSelector:(SEL)a3
{
  mediaItem = self->_mediaItem;
  if (objc_opt_respondsToSelector())
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = TVPClipMediaItem;
  return [(TVPClipMediaItem *)&v7 respondsToSelector:a3];
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  if (([(TVPMediaItem *)self->_mediaItem conformsToProtocol:v4]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TVPClipMediaItem;
    v5 = [(TVPClipMediaItem *)&v7 conformsToProtocol:v4];
  }

  return v5;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v5 = [(TVPMediaItem *)self->_mediaItem methodSignatureForSelector:?];
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = TVPClipMediaItem;
    v5 = [(TVPClipMediaItem *)&v7 methodSignatureForSelector:a3];
  }

  return v5;
}

- (BOOL)isKindOfClass:(Class)a3
{
  mediaItem = self->_mediaItem;
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = TVPClipMediaItem;
  return [(TVPClipMediaItem *)&v7 isKindOfClass:a3];
}

@end