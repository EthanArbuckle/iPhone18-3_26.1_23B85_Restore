@interface TSKLayerPool
- (TSKLayerPool)init;
- (id)requestLayerFromPool;
- (void)dealloc;
- (void)returnLayerToPool:(id)a3;
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

  if (![(NSMutableArray *)mLayerPool count]|| (v4 = [(NSMutableArray *)self->mLayerPool lastObject], [(NSMutableArray *)self->mLayerPool removeLastObject], !v4))
  {
    v4 = [(objc_class *)self->mLayerClass layer];
  }

  [v4 setDelegate:self->mLayerDelegate];
  return v4;
}

- (void)returnLayerToPool:(id)a3
{
  mLayerPool = self->mLayerPool;
  if (mLayerPool)
  {
    if (!a3)
    {
      return;
    }
  }

  else
  {
    mLayerPool = objc_alloc_init(MEMORY[0x277CBEB18]);
    self->mLayerPool = mLayerPool;
    if (!a3)
    {
      return;
    }
  }

  [(NSMutableArray *)mLayerPool addObject:a3];
  [a3 removeFromSuperlayer];
  [a3 setContents:0];

  [a3 setDelegate:0];
}

@end