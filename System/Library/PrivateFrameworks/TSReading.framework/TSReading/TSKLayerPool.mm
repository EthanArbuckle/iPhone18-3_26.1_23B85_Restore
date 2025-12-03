@interface TSKLayerPool
- (TSKLayerPool)init;
- (id)requestLayerFromPool;
- (void)dealloc;
- (void)returnLayerToPool:(id)pool;
@end

@implementation TSKLayerPool

- (TSKLayerPool)init
{
  v4.receiver = self;
  v4.super_class = TSKLayerPool;
  v2 = [(TSKLayerPool *)&v4 init];
  if (v2)
  {
    v2->mLayerClass = objc_opt_class();
    v2->mLayerDelegate = +[TSKNullActionLayerDelegate layerDelegate];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKLayerPool;
  [(TSKLayerPool *)&v3 dealloc];
}

- (id)requestLayerFromPool
{
  mLayerPool = self->mLayerPool;
  if (!mLayerPool)
  {
    mLayerPool = objc_alloc_init(MEMORY[0x277CBEB18]);
    self->mLayerPool = mLayerPool;
  }

  if (![(NSMutableArray *)mLayerPool count]|| (layer = [(NSMutableArray *)self->mLayerPool lastObject], [(NSMutableArray *)self->mLayerPool removeLastObject], !layer))
  {
    layer = [(objc_class *)self->mLayerClass layer];
  }

  [layer setDelegate:self->mLayerDelegate];
  return layer;
}

- (void)returnLayerToPool:(id)pool
{
  mLayerPool = self->mLayerPool;
  if (mLayerPool)
  {
    if (!pool)
    {
      return;
    }
  }

  else
  {
    mLayerPool = objc_alloc_init(MEMORY[0x277CBEB18]);
    self->mLayerPool = mLayerPool;
    if (!pool)
    {
      return;
    }
  }

  [(NSMutableArray *)mLayerPool addObject:pool];
  [pool removeFromSuperlayer];
  [pool setContents:0];

  [pool setDelegate:0];
}

@end