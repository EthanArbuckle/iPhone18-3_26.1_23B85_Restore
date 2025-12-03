@interface TVPClipMediaItem
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)hasTrait:(id)trait;
- (BOOL)isKindOfClass:(Class)class;
- (BOOL)respondsToSelector:(SEL)selector;
- (TVPClipMediaItem)initWithMediaItem:(id)item clipTimeRange:(id)range;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)mediaItemMetadataForProperty:(id)property;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)_mediaItemMetadataWillOrDidChange:(id)change;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
- (void)setMediaItemMetadata:(id)metadata forProperty:(id)property;
@end

@implementation TVPClipMediaItem

- (TVPClipMediaItem)initWithMediaItem:(id)item clipTimeRange:(id)range
{
  itemCopy = item;
  rangeCopy = range;
  v27.receiver = self;
  v27.super_class = TVPClipMediaItem;
  v9 = [(TVPClipMediaItem *)&v27 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaItem, item);
    objc_storeStrong(&v10->_clipTimeRange, range);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    localMetadata = v10->_localMetadata;
    v10->_localMetadata = v11;

    v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"TVPMediaItemMetadataStartTime", @"TVPMediaItemMetadataForwardPlaybackEndTime", @"TVPMediaItemMetadataReversePlaybackEndTime", @"TVPMediaItemMetadataTitle", @"TVPMediaItemMetadataLongDescription", @"TVPMediaItemMetadataArtworkURLString", @"TVPMediaItemMetadataTomatoFreshness", @"TVPMediaItemMetadataTomatoPercentage", @"TVPMediaItemMetadataMPNowPlayingContentItem", @"TVPMediaItemMetadataDuration", 0}];
    localMetadataKeys = v10->_localMetadataKeys;
    v10->_localMetadataKeys = v13;

    v15 = v10->_localMetadata;
    v16 = MEMORY[0x277CCABB0];
    [rangeCopy startTime];
    v17 = [v16 numberWithDouble:?];
    [(NSMutableDictionary *)v15 setObject:v17 forKey:@"TVPMediaItemMetadataStartTime"];

    v18 = v10->_localMetadata;
    v19 = MEMORY[0x277CCABB0];
    [rangeCopy endTime];
    v20 = [v19 numberWithDouble:?];
    [(NSMutableDictionary *)v18 setObject:v20 forKey:@"TVPMediaItemMetadataForwardPlaybackEndTime"];

    v21 = v10->_localMetadata;
    v22 = MEMORY[0x277CCABB0];
    [rangeCopy startTime];
    v23 = [v22 numberWithDouble:?];
    [(NSMutableDictionary *)v21 setObject:v23 forKey:@"TVPMediaItemMetadataReversePlaybackEndTime"];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__mediaItemMetadataWillOrDidChange_ name:@"TVPMediaItemMetadataWillChangeNotification" object:v10->_mediaItem];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v10 selector:sel__mediaItemMetadataWillOrDidChange_ name:@"TVPMediaItemMetadataDidChangeNotification" object:v10->_mediaItem];
  }

  return v10;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TVPClipMediaItem;
  [(TVPClipMediaItem *)&v4 dealloc];
}

- (BOOL)hasTrait:(id)trait
{
  traitCopy = trait;
  if ([traitCopy isEqualToString:@"TVPMediaItemTraitIsScene"])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(TVPMediaItem *)self->_mediaItem hasTrait:traitCopy];
  }

  return v5;
}

- (void)setMediaItemMetadata:(id)metadata forProperty:(id)property
{
  v21[1] = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  propertyCopy = property;
  if (propertyCopy && [(NSSet *)self->_localMetadataKeys containsObject:propertyCopy])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v19 = propertyCopy;
    v20 = @"TVPMediaItemMetadataChangesKey";
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v21[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    [defaultCenter postNotificationName:@"TVPMediaItemMetadataWillChangeNotification" object:self userInfo:v10];

    localMetadata = self->_localMetadata;
    if (metadataCopy)
    {
      [(NSMutableDictionary *)localMetadata setObject:metadataCopy forKey:propertyCopy];
    }

    else
    {
      [(NSMutableDictionary *)localMetadata removeObjectForKey:propertyCopy];
    }

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    v16 = propertyCopy;
    v17 = @"TVPMediaItemMetadataChangesKey";
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    v18 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    [defaultCenter2 postNotificationName:@"TVPMediaItemMetadataDidChangeNotification" object:self userInfo:v14];
  }

  else
  {
    [(TVPMediaItem *)self->_mediaItem setMediaItemMetadata:metadataCopy forProperty:propertyCopy];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)mediaItemMetadataForProperty:(id)property
{
  propertyCopy = property;
  if (propertyCopy && [(NSSet *)self->_localMetadataKeys containsObject:propertyCopy])
  {
    v5 = [(NSMutableDictionary *)self->_localMetadata objectForKey:propertyCopy];
  }

  else
  {
    v5 = [(TVPMediaItem *)self->_mediaItem mediaItemMetadataForProperty:propertyCopy];
  }

  v6 = v5;

  return v6;
}

- (void)_mediaItemMetadataWillOrDidChange:(id)change
{
  v4 = MEMORY[0x277CCAB98];
  changeCopy = change;
  defaultCenter = [v4 defaultCenter];
  name = [changeCopy name];
  userInfo = [changeCopy userInfo];

  [defaultCenter postNotificationName:name object:self userInfo:userInfo];
}

- (id)forwardingTargetForSelector:(SEL)selector
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
    v6 = [(TVPClipMediaItem *)&v8 forwardingTargetForSelector:selector];
  }

  return v6;
}

- (void)forwardInvocation:(id)invocation
{
  mediaItem = self->_mediaItem;
  invocationCopy = invocation;
  [invocationCopy selector];
  if (objc_opt_respondsToSelector())
  {
    [invocationCopy invokeWithTarget:self->_mediaItem];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TVPClipMediaItem;
    [(TVPClipMediaItem *)&v6 forwardInvocation:invocationCopy];
  }
}

- (BOOL)respondsToSelector:(SEL)selector
{
  mediaItem = self->_mediaItem;
  if (objc_opt_respondsToSelector())
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = TVPClipMediaItem;
  return [(TVPClipMediaItem *)&v7 respondsToSelector:selector];
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  if (([(TVPMediaItem *)self->_mediaItem conformsToProtocol:protocolCopy]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TVPClipMediaItem;
    v5 = [(TVPClipMediaItem *)&v7 conformsToProtocol:protocolCopy];
  }

  return v5;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v5 = [(TVPMediaItem *)self->_mediaItem methodSignatureForSelector:?];
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = TVPClipMediaItem;
    v5 = [(TVPClipMediaItem *)&v7 methodSignatureForSelector:selector];
  }

  return v5;
}

- (BOOL)isKindOfClass:(Class)class
{
  mediaItem = self->_mediaItem;
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = TVPClipMediaItem;
  return [(TVPClipMediaItem *)&v7 isKindOfClass:class];
}

@end