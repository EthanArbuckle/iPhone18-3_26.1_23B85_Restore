@interface PXGMetalTextureCache
- (PXGMetalTextureCache)init;
- (PXGMetalTextureCache)initWithContext:(id)context;
- (double)ageLimit;
- (id)_description;
- (id)description;
- (id)textureWithSize:(CGSize)size pixelFormat:(unint64_t)format;
- (unint64_t)capacity;
- (unint64_t)count;
- (unint64_t)peakMemorySize;
- (unint64_t)peakTextureCount;
- (unint64_t)sizeLimit;
- (void)_enforceLimits;
- (void)_purgeOldestTexture;
- (void)recycleTexture:(id)texture;
- (void)setAgeLimit:(double)limit;
- (void)setCapacity:(unint64_t)capacity;
- (void)setSizeLimit:(unint64_t)limit;
@end

@implementation PXGMetalTextureCache

- (void)_purgeOldestTexture
{
  lastObject = [(NSMutableArray *)self->_entries lastObject];
  texture = [lastObject texture];

  [texture width];
  [texture height];
  [texture allocatedSize];
  kdebug_trace();
  [(NSMutableArray *)self->_entries removeLastObject];
}

- (void)_enforceLimits
{
  for (i = self->_entries; [(NSMutableArray *)i count]> self->_capacity; i = self->_entries)
  {
    [(PXGMetalTextureCache *)self _purgeOldestTexture];
  }

  v4 = [(NSMutableArray *)self->_entries count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = [(NSMutableArray *)self->_entries objectAtIndexedSubscript:v7];
      texture = [v8 texture];
      allocatedSize = [texture allocatedSize];

      v11 = allocatedSize + v6;
      if (allocatedSize + v6 > self->_sizeLimit)
      {
        break;
      }

      ++v7;
      v6 += allocatedSize;
      if (v5 == v7)
      {
        goto LABEL_13;
      }
    }

    while ([(NSMutableArray *)self->_entries count]> v7)
    {
      [(PXGMetalTextureCache *)self _purgeOldestTexture];
    }

    v11 = v6;
  }

  else
  {
    v11 = 0;
  }

LABEL_13:
  v12 = [MEMORY[0x277CBEAA8] now];
  while ([(NSMutableArray *)self->_entries count])
  {
    lastObject = [(NSMutableArray *)self->_entries lastObject];
    time = [lastObject time];
    [v12 timeIntervalSinceDate:time];
    v16 = v15;
    ageLimit = self->_ageLimit;

    if (v16 <= ageLimit)
    {
      break;
    }

    [(PXGMetalTextureCache *)self _purgeOldestTexture];
  }

  v18 = [(NSMutableArray *)self->_entries count];
  peakMemory = self->_peakMemory;
  if (v18 > self->_peakCount || v11 > peakMemory)
  {
    if (v11 > peakMemory)
    {
      peakMemory = v11;
    }

    self->_peakMemory = peakMemory;
    v21 = [(NSMutableArray *)self->_entries count];
    peakCount = self->_peakCount;
    if (v21 > peakCount)
    {
      peakCount = v21;
    }

    self->_peakCount = peakCount;
  }

  [(NSMutableArray *)self->_entries count];
  kdebug_trace();
  if ([(NSMutableArray *)self->_entries count])
  {
    objc_initWeak(&location, self);
    v23 = dispatch_time(0, (self->_ageLimit * 1000000000.0));
    queue = self->_queue;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __38__PXGMetalTextureCache__enforceLimits__block_invoke;
    v25[3] = &unk_2782AB888;
    objc_copyWeak(&v26, &location);
    dispatch_after(v23, queue, v25);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }
}

void __38__PXGMetalTextureCache__enforceLimits__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _enforceLimits];
}

- (void)recycleTexture:(id)texture
{
  textureCopy = texture;
  [textureCopy width];
  [textureCopy height];
  [textureCopy allocatedSize];
  kdebug_trace();
  v5 = [[PXGMetalTextureCacheEntry alloc] initWithTexture:textureCopy];
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__PXGMetalTextureCache_recycleTexture___block_invoke;
  v8[3] = &unk_2782AC0A8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(queue, v8);
}

uint64_t __39__PXGMetalTextureCache_recycleTexture___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) insertObject:*(a1 + 40) atIndex:0];
  v2 = *(a1 + 32);

  return [v2 _enforceLimits];
}

- (id)textureWithSize:(CGSize)size pixelFormat:(unint64_t)format
{
  height = size.height;
  width = size.width;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__6827;
  v22 = __Block_byref_object_dispose__6828;
  v23 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__PXGMetalTextureCache_textureWithSize_pixelFormat___block_invoke;
  block[3] = &unk_2782A90E0;
  block[6] = size.width;
  block[7] = size.height;
  block[8] = format;
  block[4] = self;
  block[5] = &v18;
  dispatch_sync(queue, block);
  v9 = v19[5];
  if (v9)
  {
    [v19[5] allocatedSize];
    v10 = v9;
  }

  else
  {
    metalRenderContext = [(PXGMetalTextureCache *)self metalRenderContext];
    v12 = _createMetal2DTextureWithPixelFormat(format, metalRenderContext, 1, width, height);
    v13 = v19[5];
    v19[5] = v12;

    v14 = v19[5];
    [v14 allocatedSize];
    v10 = v14;
  }

  kdebug_trace();

  v15 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v15;
}

uint64_t __52__PXGMetalTextureCache_textureWithSize_pixelFormat___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__PXGMetalTextureCache_textureWithSize_pixelFormat___block_invoke_2;
  v9[3] = &__block_descriptor_56_e42_B32__0__PXGMetalTextureCacheEntry_8Q16_B24l;
  v10 = *(a1 + 48);
  v11 = *(a1 + 64);
  result = [v2 indexOfObjectPassingTest:v9];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = result;
    v5 = [*(*(a1 + 32) + 8) objectAtIndexedSubscript:result];
    v6 = [v5 texture];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    return [*(*(a1 + 32) + 8) removeObjectAtIndex:v4];
  }

  return result;
}

BOOL __52__PXGMetalTextureCache_textureWithSize_pixelFormat___block_invoke_2(void *a1, void *a2)
{
  v3 = [a2 texture];
  v4 = [v3 width] == a1[4] && objc_msgSend(v3, "height") == a1[5] && objc_msgSend(v3, "pixelFormat") == a1[6];

  return v4;
}

- (void)setSizeLimit:(unint64_t)limit
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__PXGMetalTextureCache_setSizeLimit___block_invoke;
  v4[3] = &unk_2782ABF68;
  v4[4] = self;
  v4[5] = limit;
  dispatch_sync(queue, v4);
}

- (unint64_t)sizeLimit
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__PXGMetalTextureCache_sizeLimit__block_invoke;
  v5[3] = &unk_2782AB4E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setAgeLimit:(double)limit
{
  if (limit < 0.0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGMetalTextureCache.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"ageLimit >= 0.0"}];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__PXGMetalTextureCache_setAgeLimit___block_invoke;
  block[3] = &unk_2782ABF68;
  block[4] = self;
  *&block[5] = limit;
  dispatch_sync(queue, block);
}

- (double)ageLimit
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__PXGMetalTextureCache_ageLimit__block_invoke;
  v5[3] = &unk_2782AB4E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __32__PXGMetalTextureCache_ageLimit__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 24);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setCapacity:(unint64_t)capacity
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__PXGMetalTextureCache_setCapacity___block_invoke;
  v4[3] = &unk_2782ABF68;
  v4[4] = self;
  v4[5] = capacity;
  dispatch_sync(queue, v4);
}

- (unint64_t)capacity
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__PXGMetalTextureCache_capacity__block_invoke;
  v5[3] = &unk_2782AB4E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)peakMemorySize
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__PXGMetalTextureCache_peakMemorySize__block_invoke;
  v5[3] = &unk_2782AB4E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)peakTextureCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__PXGMetalTextureCache_peakTextureCount__block_invoke;
  v5[3] = &unk_2782AB4E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__PXGMetalTextureCache_count__block_invoke;
  v5[3] = &unk_2782AB4E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __29__PXGMetalTextureCache_count__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)_description
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_entries, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_entries;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v18 + 1) + 8 * i) description];
        [v3 addObject:v9];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = [(NSMutableArray *)self->_entries count];
  capacity = self->_capacity;
  ageLimit = self->_ageLimit;
  v15 = [v3 componentsJoinedByString:@"\n\t"];
  v16 = [v10 stringWithFormat:@"<%@:%p count: %lu/%lu limit: %0.3f s textures: \n\t%@\npeak: %lu textures, %0.1f MB>", v11, self, v12, capacity, *&ageLimit, v15, self->_peakCount, self->_peakMemory * 0.0009765625 * 0.0009765625, v18];

  return v16;
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6827;
  v10 = __Block_byref_object_dispose__6828;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__PXGMetalTextureCache_description__block_invoke;
  v5[3] = &unk_2782AB4E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __35__PXGMetalTextureCache_description__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _description];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (PXGMetalTextureCache)initWithContext:(id)context
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = PXGMetalTextureCache;
  v6 = [(PXGMetalTextureCache *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metalRenderContext, context);
    v7->_capacity = 15;
    v7->_ageLimit = 0.05;
    v7->_sizeLimit = 262144000;
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v7->_capacity];
    entries = v7->_entries;
    v7->_entries = v8;

    v10 = dispatch_queue_create("PXGMetalTextureCache", 0);
    queue = v7->_queue;
    v7->_queue = v10;
  }

  return v7;
}

- (PXGMetalTextureCache)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGMetalTextureCache.m" lineNumber:32 description:{@"%s is not available as initializer", "-[PXGMetalTextureCache init]"}];

  abort();
}

@end