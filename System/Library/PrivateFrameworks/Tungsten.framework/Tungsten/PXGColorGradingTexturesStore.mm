@interface PXGColorGradingTexturesStore
+ (id)colorGradingTextureStoreForContext:(id)context;
- (PXGColorGradingTexturesStore)init;
- (PXGColorGradingTexturesStore)initWithMetalContext:(id)context;
- (id)colorGradingTextureWithColorLookupCube:(id)cube;
- (void)_createPlaceholderCube;
@end

@implementation PXGColorGradingTexturesStore

- (void)_createPlaceholderCube
{
  if (_createPlaceholderCube_onceToken != -1)
  {
    dispatch_once(&_createPlaceholderCube_onceToken, &__block_literal_global_18);
  }

  v4 = [PXGTextureDataColorLookupCube alloc];
  v5 = [(PXGTextureDataColorLookupCube *)v4 initWithData:_createPlaceholderCube_data edgeSize:2 pixelFormat:70];
  placeholderCube = self->_placeholderCube;
  self->_placeholderCube = v5;

  if (!self->_placeholderCube)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGColorGradingTexturesStore.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"_placeholderCube != nil"}];
  }
}

uint64_t __54__PXGColorGradingTexturesStore__createPlaceholderCube__block_invoke()
{
  v0 = [MEMORY[0x277CBEB28] dataWithLength:32];
  v1 = _createPlaceholderCube_data;
  _createPlaceholderCube_data = v0;

  result = [_createPlaceholderCube_data bytes];
  v3 = 0;
  v4 = &xmmword_21AE2D850;
  v5 = vdupq_n_s32(0x437F0000u);
  do
  {
    v7 = v4[2];
    v6 = v4[3];
    v9 = *v4;
    v8 = v4[1];
    v4 += 4;
    *(result + v3) = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vmulq_f32(v9, v5)), vcvtq_s32_f32(vmulq_f32(v8, v5))), vuzp1q_s16(vcvtq_s32_f32(vmulq_f32(v7, v5)), vcvtq_s32_f32(vmulq_f32(v6, v5))));
    v3 += 16;
  }

  while (v3 != 32);
  return result;
}

- (id)colorGradingTextureWithColorLookupCube:(id)cube
{
  cubeCopy = cube;
  if (cubeCopy || (cubeCopy = self->_placeholderCube) != 0 || (dispatch_sync(self->_queue, &__block_literal_global_1122), (cubeCopy = self->_placeholderCube) != 0))
  {
    v6 = cubeCopy;
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGColorGradingTexturesStore.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"cube != nil"}];

    v6 = 0;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PXGColorLookupCube hash](v6, "hash")}];
  v8 = [(NSCache *)self->_cachedTextures objectForKey:v7];
  if (!v8)
  {
    v8 = [(PXGColorLookupCube *)v6 createTextureWithContext:self->_metalRenderContext];
    if (v8)
    {
      if ([(PXGColorLookupCube *)v6 shouldCache])
      {
        [(NSCache *)self->_cachedTextures setObject:v8 forKey:v7];
      }
    }
  }

  return v8;
}

- (PXGColorGradingTexturesStore)initWithMetalContext:(id)context
{
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = PXGColorGradingTexturesStore;
  v6 = [(PXGColorGradingTexturesStore *)&v17 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cachedTextures = v6->_cachedTextures;
    v6->_cachedTextures = v7;

    [(NSCache *)v6->_cachedTextures setCountLimit:12];
    objc_storeStrong(&v6->_metalRenderContext, context);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_DEFAULT, 0);
    v11 = dispatch_queue_create("com.apple.photos.color-grading-textures-store", v10);
    queue = v6->_queue;
    v6->_queue = v11;

    v13 = v6->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__PXGColorGradingTexturesStore_initWithMetalContext___block_invoke;
    block[3] = &unk_2782ABE50;
    v16 = v6;
    dispatch_async(v13, block);
  }

  return v6;
}

- (PXGColorGradingTexturesStore)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGColorGradingTexturesStore.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXGColorGradingTexturesStore init]"}];

  abort();
}

+ (id)colorGradingTextureStoreForContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  device = [contextCopy device];
  v7 = objc_getAssociatedObject(device, sel_colorGradingTextureStoreForContext_);

  if (!v7)
  {
    v7 = [[PXGColorGradingTexturesStore alloc] initWithMetalContext:contextCopy];
    device2 = [contextCopy device];
    objc_setAssociatedObject(device2, sel_colorGradingTextureStoreForContext_, v7, 0x301);
  }

  objc_sync_exit(selfCopy);

  return v7;
}

@end