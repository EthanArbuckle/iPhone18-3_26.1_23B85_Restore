@interface MTMPUFontDescriptorCache
+ (id)sharedFontDescriptorCache;
- (MTMPUFontDescriptorCache)init;
- (id)_cachedImmutableFontDescriptorMatchingMutableFontDescriptor:(id)descriptor;
- (id)cachedImmutableFontDescriptorForConfigurationBlock:(id)block;
- (id)cachedImmutableFontDescriptorMatchingMutableFontDescriptor:(id)descriptor;
- (void)_handleContentSizeCategoryDidChangeNotification:(id)notification;
- (void)dealloc;
@end

@implementation MTMPUFontDescriptorCache

+ (id)sharedFontDescriptorCache
{
  if (sharedFontDescriptorCache_sSharedFontDescriptorCacheOnceToken != -1)
  {
    +[MTMPUFontDescriptorCache sharedFontDescriptorCache];
  }

  v3 = sharedFontDescriptorCache_sSharedFontDescriptorCache;

  return v3;
}

uint64_t __53__MTMPUFontDescriptorCache_sharedFontDescriptorCache__block_invoke()
{
  v0 = objc_alloc_init(MTMPUFontDescriptorCache);
  v1 = sharedFontDescriptorCache_sSharedFontDescriptorCache;
  sharedFontDescriptorCache_sSharedFontDescriptorCache = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (MTMPUFontDescriptorCache)init
{
  v8.receiver = self;
  v8.super_class = MTMPUFontDescriptorCache;
  v2 = [(MTMPUFontDescriptorCache *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_maximumCapacity = 100;
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    orderedCachedFontDescriptors = v3->_orderedCachedFontDescriptors;
    v3->_orderedCachedFontDescriptors = v4;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__handleContentSizeCategoryDidChangeNotification_ name:*MEMORY[0x277D76810] object:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = MTMPUFontDescriptorCache;
  [(MTMPUFontDescriptorCache *)&v4 dealloc];
}

- (id)cachedImmutableFontDescriptorForConfigurationBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    reusableMutableFontDescriptor = self->_reusableMutableFontDescriptor;
    if (!reusableMutableFontDescriptor)
    {
      v6 = objc_alloc_init(MTMPUMutableFontDescriptor);
      v7 = self->_reusableMutableFontDescriptor;
      self->_reusableMutableFontDescriptor = v6;

      reusableMutableFontDescriptor = self->_reusableMutableFontDescriptor;
    }

    blockCopy[2](blockCopy, reusableMutableFontDescriptor);
    v8 = [(MTMPUFontDescriptorCache *)self _cachedImmutableFontDescriptorMatchingMutableFontDescriptor:self->_reusableMutableFontDescriptor];
    [(MTMPUMutableFontDescriptor *)self->_reusableMutableFontDescriptor _resetToDefaultValues];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)cachedImmutableFontDescriptorMatchingMutableFontDescriptor:(id)descriptor
{
  if (descriptor)
  {
    v4 = [(MTMPUFontDescriptorCache *)self _cachedImmutableFontDescriptorMatchingMutableFontDescriptor:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleContentSizeCategoryDidChangeNotification:(id)notification
{
  v4 = MEMORY[0x277CCAB98];
  notificationCopy = notification;
  defaultCenter = [v4 defaultCenter];
  selfCopy = self;
  userInfo = [notificationCopy userInfo];

  [defaultCenter postNotificationName:@"_MPUFontDescriptorDidInvalidateCachedFontsAndMetricsNotification" object:selfCopy userInfo:userInfo];
  [defaultCenter postNotificationName:@"MPUFontDescriptorPreferredContentSizeCategoryDidChangeNotification" object:selfCopy userInfo:userInfo];
}

- (id)_cachedImmutableFontDescriptorMatchingMutableFontDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [(NSMutableArray *)self->_orderedCachedFontDescriptors indexOfObject:descriptorCopy];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [descriptorCopy _copyAllowingGlobalCacheLookup:0];
    if ([(NSMutableArray *)self->_orderedCachedFontDescriptors count]== self->_maximumCapacity)
    {
      [(NSMutableArray *)self->_orderedCachedFontDescriptors removeLastObject];
    }
  }

  else
  {
    v7 = v5;
    v6 = [(NSMutableArray *)self->_orderedCachedFontDescriptors objectAtIndex:v5];
    if (!v7)
    {
      goto LABEL_7;
    }

    [(NSMutableArray *)self->_orderedCachedFontDescriptors removeObjectAtIndex:v7];
  }

  [(NSMutableArray *)self->_orderedCachedFontDescriptors insertObject:v6 atIndex:0];
LABEL_7:

  return v6;
}

@end