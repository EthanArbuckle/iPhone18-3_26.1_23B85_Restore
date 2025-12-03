@interface PXGEffect
+ (id)shaderSourceForFilename:(id)filename;
- (PXGEffect)init;
- (PXGEffect)initWithEntityManager:(id)manager;
- (PXGEntityManager)entityManager;
- (PXGShader)shader;
- (id)description;
- (unsigned)effectId;
- (void)configureSiblingSprites:(id *)sprites siblingsSpriteIndexRange:(_PXGSpriteIndexRange)range siblingsTexture:(id)texture forMainRenderSpriteRef:(id *)ref mainPresentationSpriteRef:(id *)spriteRef mainSpriteIndex:(unsigned int)index mainSpriteTexture:(id)spriteTexture screenScale:(double)self0;
- (void)dealloc;
@end

@implementation PXGEffect

- (PXGEntityManager)entityManager
{
  WeakRetained = objc_loadWeakRetained(&self->_entityManager);

  return WeakRetained;
}

- (unsigned)effectId
{
  if (!self->_didNotifyOfUse)
  {
    self->_didNotifyOfUse = 1;
    entityManager = [(PXGEffect *)self entityManager];
    effectComponent = [entityManager effectComponent];
    [effectComponent didUseEffect:self];
  }

  return self->_effectId;
}

- (void)configureSiblingSprites:(id *)sprites siblingsSpriteIndexRange:(_PXGSpriteIndexRange)range siblingsTexture:(id)texture forMainRenderSpriteRef:(id *)ref mainPresentationSpriteRef:(id *)spriteRef mainSpriteIndex:(unsigned int)index mainSpriteTexture:(id)spriteTexture screenScale:(double)self0
{
  textureCopy = texture;
  spriteTextureCopy = spriteTexture;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGEffect.m" lineNumber:107 description:{@"Method %s is a responsibility of subclass %@", "-[PXGEffect configureSiblingSprites:siblingsSpriteIndexRange:siblingsTexture:forMainRenderSpriteRef:mainPresentationSpriteRef:mainSpriteIndex:mainSpriteTexture:screenScale:]", v16}];

  abort();
}

- (PXGShader)shader
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGEffect.m" lineNumber:88 description:{@"Method %s is a responsibility of subclass %@", "-[PXGEffect shader]", v6}];

  abort();
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  effectId = [(PXGEffect *)self effectId];
  shader = [(PXGEffect *)self shader];
  v8 = [v3 stringWithFormat:@"<%@:%p effectId = %d, shader = %@>", v5, self, effectId, shader];;

  return v8;
}

- (void)dealloc
{
  effectId = self->_effectId;
  WeakRetained = objc_loadWeakRetained(&self->_entityManager);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __20__PXGEffect_dealloc__block_invoke;
  block[3] = &unk_2782AAE10;
  v9 = WeakRetained;
  v10 = effectId;
  v6 = WeakRetained;
  dispatch_async(queue, block);

  v7.receiver = self;
  v7.super_class = PXGEffect;
  [(PXGEffect *)&v7 dealloc];
}

void __20__PXGEffect_dealloc__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) effectComponent];
  [v2 unregisterEffectId:*(a1 + 40)];
}

- (PXGEffect)initWithEntityManager:(id)manager
{
  managerCopy = manager;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGEffect.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"entityManager != nil"}];
  }

  v18.receiver = self;
  v18.super_class = PXGEffect;
  v6 = [(PXGEffect *)&v18 init];
  v7 = v6;
  if (v6)
  {
    v6->_effectId = atomic_fetch_add(initWithEntityManager__lastRequestID, 1u);
    objc_storeWeak(&v6->_entityManager, managerCopy);
    queue = [managerCopy queue];
    queue = v7->_queue;
    v7->_queue = queue;

    __asm { FMOV            V0.2D, #1.0 }

    *&v7->_scale = _Q0;
    effectComponent = [managerCopy effectComponent];
    [effectComponent registerEffect:v7 withEffectId:v7->_effectId];
  }

  return v7;
}

- (PXGEffect)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGEffect.m" lineNumber:48 description:{@"%s is not available as initializer", "-[PXGEffect init]"}];

  abort();
}

+ (id)shaderSourceForFilename:(id)filename
{
  filenameCopy = filename;
  if (shaderSourceForFilename__onceToken != -1)
  {
    dispatch_once(&shaderSourceForFilename__onceToken, &__block_literal_global_15164);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [shaderSourceForFilename__sharedCache objectForKeyedSubscript:filenameCopy];
  if (!v7)
  {
    stringByDeletingPathExtension = [filenameCopy stringByDeletingPathExtension];
    pathExtension = [filenameCopy pathExtension];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:selfCopy];
    v11 = [v10 URLForResource:stringByDeletingPathExtension withExtension:pathExtension];

    v16 = 0;
    v12 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:v11 encoding:4 error:&v16];
    v13 = v16;
    if (!v12)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PXGEffect.m" lineNumber:39 description:{@"Error:%@ loading file at path:%@", v13, v11}];
    }

    v7 = [[PXGShaderSource alloc] initWithSource:v12];
    [shaderSourceForFilename__sharedCache setObject:v7 forKeyedSubscript:filenameCopy];
  }

  objc_sync_exit(selfCopy);

  return v7;
}

void __37__PXGEffect_shaderSourceForFilename___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = shaderSourceForFilename__sharedCache;
  shaderSourceForFilename__sharedCache = v0;
}

@end