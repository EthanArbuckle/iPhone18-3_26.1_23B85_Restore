@interface PXShadowImageCache
+ (PXShadowImageCache)sharedInstance;
- (PXShadowImageCache)init;
- (id)stretchableShadowImageFor:(id)a3 cornerRadius:(double)a4 screenScale:(double)a5;
@end

@implementation PXShadowImageCache

- (id)stretchableShadowImageFor:(id)a3 cornerRadius:(double)a4 screenScale:(double)a5
{
  v16[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = 0;
  if (v8 && a5 != 0.0)
  {
    v10 = [off_1E7721928 alloc];
    v16[0] = v8;
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    v16[1] = v11;
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:a5];
    v16[2] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
    v14 = [v10 initWithObjects:v13];

    v9 = [(NSMapTable *)self->_weakCache objectForKey:v14];
    if (!v9)
    {
      PXGCreateResizableShadowImage();
    }
  }

  return v9;
}

- (PXShadowImageCache)init
{
  v6.receiver = self;
  v6.super_class = PXShadowImageCache;
  v2 = [(PXShadowImageCache *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0x10000 valueOptions:5 capacity:0];
    weakCache = v2->_weakCache;
    v2->_weakCache = v3;
  }

  return v2;
}

+ (PXShadowImageCache)sharedInstance
{
  if (sharedInstance_onceToken_161641 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_161641, &__block_literal_global_161642);
  }

  v3 = sharedInstance_sharedInstance_161643;

  return v3;
}

void __36__PXShadowImageCache_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PXShadowImageCache);
  v1 = sharedInstance_sharedInstance_161643;
  sharedInstance_sharedInstance_161643 = v0;
}

@end