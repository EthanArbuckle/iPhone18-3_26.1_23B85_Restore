@interface PXGMetalOffscreenTexturesStore
- (PXGMetalOffscreenTexturesStore)init;
- (id)_queue_checkoutOffscreenTextureWithSize:(id *)a3 pixelFormat:(unint64_t)a4;
- (id)_queue_loadTextureWithSize:(id *)a3 pixelFormat:(unint64_t)a4;
- (id)checkoutOffscreenTextureWithSize:(id *)a3 pixelFormat:(unint64_t)a4;
- (void)_queue_preloadTexturesCount:(int64_t)a3;
- (void)_queue_removeAllTextures;
- (void)_queue_willRenderFrameWithDevice:(id)a3 size:(id *)a4 sampleCount:(int64_t)a5 pixelFormat:(unint64_t)a6 preloadTexturesCount:(int64_t)a7;
- (void)removeAllTextures;
- (void)willRenderFrameWithDevice:(id)a3 size:(id *)a4 sampleCount:(int64_t)a5 pixelFormat:(unint64_t)a6 preloadTexturesCount:(int64_t)a7;
@end

@implementation PXGMetalOffscreenTexturesStore

- (PXGMetalOffscreenTexturesStore)init
{
  v14.receiver = self;
  v14.super_class = PXGMetalOffscreenTexturesStore;
  v2 = [(PXGMetalOffscreenTexturesStore *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("com.apple.photos.metalrenderer-offscreenCache", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    queue_loadedTextures = v2->_queue_loadedTextures;
    v2->_queue_loadedTextures = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    queue_usedTextures = v2->_queue_usedTextures;
    v2->_queue_usedTextures = v9;

    v11 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    queue_aliveTextures = v2->_queue_aliveTextures;
    v2->_queue_aliveTextures = v11;
  }

  return v2;
}

- (void)_queue_removeAllTextures
{
  [(NSMutableSet *)self->_queue_usedTextures removeAllObjects];
  [(NSMutableSet *)self->_queue_loadedTextures removeAllObjects];
  queue_aliveTextures = self->_queue_aliveTextures;

  [(NSHashTable *)queue_aliveTextures removeAllObjects];
}

- (id)_queue_loadTextureWithSize:(id *)a3 pixelFormat:(unint64_t)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = self->_queue_aliveTextures;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if (v12)
        {
          *buf = *&a3->var0;
          *&buf[16] = a3->var2;
          if (_textureMatchesSize(v12, buf, a4) && ([(NSMutableSet *)self->_queue_loadedTextures containsObject:v12, v21]& 1) == 0 && ![(NSMutableSet *)self->_queue_usedTextures containsObject:v12])
          {
            v17 = v12;
            goto LABEL_25;
          }
        }
      }

      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = [MEMORY[0x277CCACC8] isMainThread];
  var0 = a3->var0;
  if (v13 && var0 == self->_queue_size.width && a3->var1 == self->_queue_size.height && a3->var2 == self->_queue_size.depth)
  {
    v15 = PXGTungstenGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21AD38000, v15, OS_LOG_TYPE_DEFAULT, "Warning, allocating offscreen texture on the main thread.", buf, 2u);
    }

    var0 = a3->var0;
  }

  v7 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:a4 width:var0 height:a3->var1 mipmapped:0, v21];
  [(NSHashTable *)v7 setSampleCount:self->_queue_sampleCount];
  if (self->_queue_sampleCount >= 2)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  [(NSHashTable *)v7 setTextureType:v16];
  [(NSHashTable *)v7 setStorageMode:2];
  [(NSHashTable *)v7 setUsage:7];
  v17 = [(MTLDevice *)self->_queue_device newTextureWithDescriptor:v7];
  [v17 setLabel:@"PXGMetalRenderer Offscreen"];
  if (v17)
  {
    [(NSHashTable *)self->_queue_aliveTextures addObject:v17];
LABEL_25:

    [(NSMutableSet *)self->_queue_loadedTextures addObject:v17];
  }

  else
  {
    v19 = PXGTungstenGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      queue_device = self->_queue_device;
      *buf = 138412546;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = queue_device;
      _os_log_impl(&dword_21AD38000, v19, OS_LOG_TYPE_ERROR, "Failed to allocate texture, descriptor:%@ device:%@", buf, 0x16u);
    }

    v17 = 0;
  }

  return v17;
}

- (id)_queue_checkoutOffscreenTextureWithSize:(id *)a3 pixelFormat:(unint64_t)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_queue_loadedTextures;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v17 + 1) + 8 * v11);
      v15 = *&a3->var0;
      var2 = a3->var2;
      if (_textureMatchesSize(v12, &v15, a4) && ![(NSMutableSet *)self->_queue_usedTextures containsObject:v12])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v13 = v12;

    if (v13)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_10:
  }

  v15 = *&a3->var0;
  var2 = a3->var2;
  v13 = [(PXGMetalOffscreenTexturesStore *)self _queue_loadTextureWithSize:&v15 pixelFormat:a4];
  if (v13)
  {
LABEL_13:
    [(NSMutableSet *)self->_queue_usedTextures addObject:v13];
  }

  return v13;
}

- (void)_queue_preloadTexturesCount:(int64_t)a3
{
  p_queue_size = &self->_queue_size;
  if (*&self->_queue_size.width != 0)
  {
    v6 = +[PXTungstenSettings sharedInstance];
    [v6 offscreenTextureMaximumLifeTime];
    v8 = v7;

    if ([(NSMutableSet *)self->_queue_loadedTextures count]> a3)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEA78]);
      while ([(NSMutableSet *)self->_queue_loadedTextures count]> a3)
      {
        v10 = [(NSMutableSet *)self->_queue_loadedTextures anyObject];
        [(NSMutableSet *)self->_queue_loadedTextures removeObject:v10];
        [v9 setObject:v10 forKey:v10];
      }

      v11 = dispatch_time(0, (v8 * 1000000000.0));
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__PXGMetalOffscreenTexturesStore__queue_preloadTexturesCount___block_invoke;
      block[3] = &unk_2782ABE50;
      v19 = v9;
      v13 = v9;
      dispatch_after(v11, queue, block);
    }

    do
    {
      if ([(NSMutableSet *)self->_queue_loadedTextures count]>= a3)
      {
        break;
      }

      queue_pixelFormat = self->_queue_pixelFormat;
      v16 = *&p_queue_size->width;
      depth = p_queue_size->depth;
      v15 = [(PXGMetalOffscreenTexturesStore *)self _queue_loadTextureWithSize:&v16 pixelFormat:queue_pixelFormat];
    }

    while (v15);
  }
}

- (void)_queue_willRenderFrameWithDevice:(id)a3 size:(id *)a4 sampleCount:(int64_t)a5 pixelFormat:(unint64_t)a6 preloadTexturesCount:(int64_t)a7
{
  v12 = a3;
  queue_device = self->_queue_device;
  if (queue_device != v12 || (self->_queue_size.width == a4->var0 ? (v14 = self->_queue_size.height == a4->var1) : (v14 = 0), v14 ? (v15 = self->_queue_size.depth == a4->var2) : (v15 = 0), !v15 || self->_queue_sampleCount != a5 || self->_queue_pixelFormat != a6))
  {
    [(PXGMetalOffscreenTexturesStore *)self _queue_removeAllTextures];
    queue_device = self->_queue_device;
  }

  self->_queue_device = v12;
  v16 = v12;

  var2 = a4->var2;
  *&self->_queue_size.width = *&a4->var0;
  self->_queue_size.depth = var2;
  self->_queue_sampleCount = a5;
  self->_queue_pixelFormat = a6;
  [(NSMutableSet *)self->_queue_usedTextures removeAllObjects];

  [(PXGMetalOffscreenTexturesStore *)self _queue_preloadTexturesCount:a7];
}

- (void)removeAllTextures
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__PXGMetalOffscreenTexturesStore_removeAllTextures__block_invoke;
  block[3] = &unk_2782ABE50;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)checkoutOffscreenTextureWithSize:(id *)a3 pixelFormat:(unint64_t)a4
{
  if (a3->var2 != 1)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXGMetalOffscreenTexturesStore.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"size.depth == 1"}];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__6903;
  v20 = __Block_byref_object_dispose__6904;
  v21 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__PXGMetalOffscreenTexturesStore_checkoutOffscreenTextureWithSize_pixelFormat___block_invoke;
  block[3] = &unk_2782AB838;
  block[4] = self;
  block[5] = &v16;
  v13 = *&a3->var0;
  var2 = a3->var2;
  v15 = a4;
  dispatch_sync(queue, block);
  v8 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v8;
}

void __79__PXGMetalOffscreenTexturesStore_checkoutOffscreenTextureWithSize_pixelFormat___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = *(a1 + 48);
  v3 = *(a1 + 72);
  v8 = *(a1 + 64);
  v4 = [v2 _queue_checkoutOffscreenTextureWithSize:&v7 pixelFormat:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)willRenderFrameWithDevice:(id)a3 size:(id *)a4 sampleCount:(int64_t)a5 pixelFormat:(unint64_t)a6 preloadTexturesCount:(int64_t)a7
{
  v13 = a3;
  if (a4->var2 != 1)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXGMetalOffscreenTexturesStore.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"size.depth == 1"}];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __110__PXGMetalOffscreenTexturesStore_willRenderFrameWithDevice_size_sampleCount_pixelFormat_preloadTexturesCount___block_invoke;
  block[3] = &unk_2782A9108;
  block[4] = self;
  v18 = v13;
  v19 = *&a4->var0;
  var2 = a4->var2;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v15 = v13;
  dispatch_async(queue, block);
}

uint64_t __110__PXGMetalOffscreenTexturesStore_willRenderFrameWithDevice_size_sampleCount_pixelFormat_preloadTexturesCount___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  v7 = *(a1 + 48);
  v5 = *(a1 + 72);
  v8 = *(a1 + 64);
  return [v2 _queue_willRenderFrameWithDevice:v1 size:&v7 sampleCount:v5 pixelFormat:v3 preloadTexturesCount:v4];
}

@end