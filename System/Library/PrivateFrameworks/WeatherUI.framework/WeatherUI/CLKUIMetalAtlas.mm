@interface CLKUIMetalAtlas
+ (id)_createMTLTextureWithBacking:(id)backing device:(id)device encoder:(id)encoder;
- (CLKUIMetalAtlas)initWithUuid:(id)uuid nilTexture:(id)texture;
- (void)bind:(id)bind slot:(unint64_t)slot;
- (void)dealloc;
- (void)prewarm;
- (void)purge;
@end

@implementation CLKUIMetalAtlas

- (CLKUIMetalAtlas)initWithUuid:(id)uuid nilTexture:(id)texture
{
  textureCopy = texture;
  v13.receiver = self;
  v13.super_class = CLKUIMetalAtlas;
  v8 = [(CLKUIAtlas *)&v13 initWithUuid:uuid];
  v9 = v8;
  if (v8)
  {
    v8->_prewarmState = 0;
    objc_storeStrong(&v8->_nilTexture, texture);
    v10 = objc_alloc_init(MEMORY[0x1E696AE68]);
    prewarmLock = v9->_prewarmLock;
    v9->_prewarmLock = v10;
  }

  return v9;
}

- (void)dealloc
{
  [(CLKUIMetalAtlas *)self purge];
  if (self->_loaderQueue)
  {
    v3 = +[CLKUIResourceManager sharedInstance];
    [v3 returnTextureLoadingQueue:self->_loaderQueue];

    loaderQueue = self->_loaderQueue;
    self->_loaderQueue = 0;
  }

  v5.receiver = self;
  v5.super_class = CLKUIMetalAtlas;
  [(CLKUIMetalAtlas *)&v5 dealloc];
}

+ (id)_createMTLTextureWithBacking:(id)backing device:(id)device encoder:(id)encoder
{
  backingCopy = backing;
  deviceCopy = device;
  encoderCopy = encoder;
  if (backingCopy)
  {
    [backingCopy structure];
    +[CLKUIMetalAtlas _createMTLTextureWithBacking:device:encoder:];
  }

  return 0;
}

- (void)prewarm
{
  v13 = *MEMORY[0x1E69E9840];
  uuid = [self uuid];
  v6 = @"none";
  if (*a2 == 1)
  {
    v6 = @"prewarming";
  }

  if (*a2 == 2)
  {
    v7 = @"prewarmed";
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;
  v9 = 138412546;
  v10 = uuid;
  v11 = 2112;
  v12 = v8;
  _os_log_error_impl(&dword_1BC940000, a3, OS_LOG_TYPE_ERROR, "Not prewarming %@ because prewarmState = %@, but the texture is already loaded", &v9, 0x16u);
}

void __26__CLKUIMetalAtlas_prewarm__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [CLKUIMetalAtlas _createMTLTextureWithBacking:*(a1 + 32) device:*(a1 + 40) encoder:0];
    v4 = WeakRetained[10];
    WeakRetained[10] = v3;

    v5 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [WeakRetained uuid];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_1BC940000, v5, OS_LOG_TYPE_DEFAULT, "Finished prewarming texture %@", &v7, 0xCu);
    }

    if (WeakRetained[11] == 1)
    {
      WeakRetained[11] = 2;
    }

    dispatch_group_leave(*(a1 + 48));
  }
}

- (void)bind:(id)bind slot:(unint64_t)slot
{
  v32 = *MEMORY[0x1E69E9840];
  bindCopy = bind;
  uuid = [(CLKUIAtlas *)self uuid];

  if (!uuid)
  {
    goto LABEL_25;
  }

  v8 = CLKLoggingObjectForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uuid2 = [(CLKUIAtlas *)self uuid];
    *buf = 138412290;
    v31 = uuid2;
    _os_log_impl(&dword_1BC940000, v8, OS_LOG_TYPE_DEFAULT, "Binding atlas %@", buf, 0xCu);
  }

  if (self->_prewarmState && !self->_texture && self->_loaderQueue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__CLKUIMetalAtlas_bind_slot___block_invoke;
    block[3] = &unk_1E7FF8E50;
    block[4] = self;
    v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
    dispatch_sync(self->_loaderQueue, v10);
    v11 = +[CLKUIResourceManager sharedInstance];
    [v11 returnTextureLoadingQueue:self->_loaderQueue];

    loaderQueue = self->_loaderQueue;
    self->_loaderQueue = 0;
  }

  texture = self->_texture;
  v14 = CLKLoggingObjectForDomain();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (texture)
  {
    if (!v15)
    {
      goto LABEL_23;
    }

    uuid3 = [(CLKUIAtlas *)self uuid];
    *buf = 138412290;
    v31 = uuid3;
    _os_log_impl(&dword_1BC940000, v14, OS_LOG_TYPE_DEFAULT, "Texture prewarmed in atlas %@", buf, 0xCu);
    goto LABEL_22;
  }

  if (v15)
  {
    uuid4 = [(CLKUIAtlas *)self uuid];
    *buf = 138412290;
    v31 = uuid4;
    _os_log_impl(&dword_1BC940000, v14, OS_LOG_TYPE_DEFAULT, "Texure not prewarmed. %@", buf, 0xCu);
  }

  backing = [(CLKUIAtlas *)self backing];
  v14 = backing;
  if (backing)
  {
    bytesLength = [backing bytesLength];
    uuid3 = +[CLKUIResourceManager sharedInstance];
    if (([uuid3 ensureMemoryAvailable:bytesLength] & 1) == 0)
    {
      v20 = CLKLoggingObjectForDomain();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        uuid5 = [(CLKUIAtlas *)self uuid];
        *buf = 138412290;
        v31 = uuid5;
        _os_log_impl(&dword_1BC940000, v20, OS_LOG_TYPE_DEFAULT, "failed to ensure enough memory for %@", buf, 0xCu);
      }
    }

    device = [bindCopy device];
    v23 = device;
    if (device)
    {
      v24 = device;
    }

    else
    {
      v24 = +[CLKUIMetalResourceManager sharedDevice];
    }

    v25 = v24;

    v26 = [CLKUIMetalAtlas _createMTLTextureWithBacking:v14 device:v25 encoder:bindCopy];
    v27 = self->_texture;
    self->_texture = v26;

    self->_prewarmState = 2;
    [(CLKUIAtlas *)self setStatus:3];
    [uuid3 notifyAtlas:self willChangeToMemoryCost:bytesLength];
    [(CLKUIAtlas *)self setMemoryCost:bytesLength];

LABEL_22:
  }

LABEL_23:

  if (!self->_texture)
  {
LABEL_25:
    nilTexture = self->_nilTexture;
    goto LABEL_26;
  }

  [(CLKUIAtlas *)self setBoundTime:CACurrentMediaTime()];
  nilTexture = self->_texture;
LABEL_26:
  [bindCopy setFragmentTexture:nilTexture atIndex:slot];
}

void __29__CLKUIMetalAtlas_bind_slot___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = CLKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) uuid];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1BC940000, v2, OS_LOG_TYPE_DEFAULT, "Loading prewarmed texture %@", &v6, 0xCu);
  }

  objc_storeStrong((*(a1 + 32) + 64), *(*(a1 + 32) + 80));
  v4 = *(a1 + 32);
  v5 = *(v4 + 80);
  *(v4 + 80) = 0;
}

- (void)purge
{
  uuid = [(CLKUIAtlas *)self uuid];

  if (uuid)
  {
    if (self->_loaderQueue)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __24__CLKUIMetalAtlas_purge__block_invoke;
      block[3] = &unk_1E7FF8E50;
      block[4] = self;
      v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
      dispatch_sync(self->_loaderQueue, v4);
    }

    if (self->_texture)
    {
      if ([(CLKUIAtlas *)self isPurgable])
      {
        texture = self->_texture;
        self->_texture = 0;

        [(CLKUIAtlas *)self setStatus:4];
        v6 = +[CLKUIResourceManager sharedInstance];
        [v6 notifyAtlas:self willChangeToMemoryCost:0];
        [(CLKUIAtlas *)self setMemoryCost:0];
        self->_prewarmState = 0;
      }
    }
  }
}

void __24__CLKUIMetalAtlas_purge__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = CLKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) uuid];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1BC940000, v2, OS_LOG_TYPE_DEFAULT, "Purging prewarming texture %@", &v6, 0xCu);
  }

  objc_storeStrong((*(a1 + 32) + 64), *(*(a1 + 32) + 80));
  v4 = *(a1 + 32);
  v5 = *(v4 + 80);
  *(v4 + 80) = 0;
}

@end