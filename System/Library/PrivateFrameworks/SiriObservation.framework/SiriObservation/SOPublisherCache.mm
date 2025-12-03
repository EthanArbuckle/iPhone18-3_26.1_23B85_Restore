@interface SOPublisherCache
+ (SOPublisherCache)sharedInstance;
- (SOPublisherCache)init;
- (id)publisherForSnapshotType:(Class)type;
- (void)removePublisherForSnapshotType:(Class)type;
- (void)setPublisher:(id)publisher forSnapshotType:(Class)type;
@end

@implementation SOPublisherCache

- (void)removePublisherForSnapshotType:(Class)type
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__SOPublisherCache_removePublisherForSnapshotType___block_invoke;
  v4[3] = &unk_279C3D788;
  v4[4] = self;
  v4[5] = type;
  dispatch_sync(queue, v4);
}

- (void)setPublisher:(id)publisher forSnapshotType:(Class)type
{
  publisherCopy = publisher;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SOPublisherCache_setPublisher_forSnapshotType___block_invoke;
  block[3] = &unk_279C3D760;
  block[4] = self;
  v10 = publisherCopy;
  typeCopy = type;
  v8 = publisherCopy;
  dispatch_sync(queue, block);
}

- (id)publisherForSnapshotType:(Class)type
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SOPublisherCache_publisherForSnapshotType___block_invoke;
  block[3] = &unk_279C3D738;
  block[4] = self;
  block[5] = &v7;
  block[6] = type;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __45__SOPublisherCache_publisherForSnapshotType___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:a1[6]];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (SOPublisherCache)init
{
  v10.receiver = self;
  v10.super_class = SOPublisherCache;
  v2 = [(SOPublisherCache *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cache = v2->_cache;
    v2->_cache = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("SOPublisherCache", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = objc_opt_new();
    [(SOPublisherCache *)v2 setPublisher:v8 forSnapshotType:objc_opt_class()];
  }

  return v2;
}

+ (SOPublisherCache)sharedInstance
{
  if (sharedInstance_token != -1)
  {
    dispatch_once(&sharedInstance_token, &__block_literal_global_1132);
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __34__SOPublisherCache_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(SOPublisherCache);

  return MEMORY[0x2821F96F8]();
}

@end