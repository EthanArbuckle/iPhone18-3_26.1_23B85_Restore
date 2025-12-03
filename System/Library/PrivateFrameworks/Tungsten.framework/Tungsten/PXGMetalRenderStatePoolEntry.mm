@interface PXGMetalRenderStatePoolEntry
- ($19B257AB4ABD0C41B01C0B081813B3B6)values;
- (PXGMetalRenderStatePool)pool;
- (PXGMetalRenderStatePoolEntry)initWithReusableRenderState:(id)state pool:(id)pool;
- (void)dealloc;
- (void)setValues:(id *)values;
@end

@implementation PXGMetalRenderStatePoolEntry

- ($19B257AB4ABD0C41B01C0B081813B3B6)values
{
  result = self->_renderState;
  if (result)
  {
    return [($19B257AB4ABD0C41B01C0B081813B3B6 *)result values];
  }

  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  retstr->var3.origin = 0u;
  retstr->var3.size = 0u;
  retstr->var2.origin = 0u;
  retstr->var2.size = 0u;
  retstr->var0 = 0u;
  retstr->var1 = 0u;
  return result;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_pool);
  if (WeakRetained)
  {
    v4 = self->_renderState;
    [(PXGReusableMetalRenderState *)v4 prepareForReuse];
    queue = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__PXGMetalRenderStatePoolEntry_dealloc__block_invoke;
    block[3] = &unk_2782AC0A8;
    v9 = WeakRetained;
    v10 = v4;
    v6 = v4;
    dispatch_async(queue, block);
  }

  v7.receiver = self;
  v7.super_class = PXGMetalRenderStatePoolEntry;
  [(PXGMetalRenderStatePoolEntry *)&v7 dealloc];
}

- (PXGMetalRenderStatePool)pool
{
  WeakRetained = objc_loadWeakRetained(&self->_pool);

  return WeakRetained;
}

- (void)setValues:(id *)values
{
  renderState = self->_renderState;
  size = values->var3.size;
  v8[4] = values->var3.origin;
  v8[5] = size;
  v5 = *&values->var6;
  v8[6] = *&values->var4;
  v8[7] = v5;
  var1 = values->var1;
  v8[0] = values->var0;
  v8[1] = var1;
  v7 = values->var2.size;
  v8[2] = values->var2.origin;
  v8[3] = v7;
  [(PXGReusableMetalRenderState *)renderState setValues:v8];
}

- (PXGMetalRenderStatePoolEntry)initWithReusableRenderState:(id)state pool:(id)pool
{
  stateCopy = state;
  poolCopy = pool;
  v13.receiver = self;
  v13.super_class = PXGMetalRenderStatePoolEntry;
  v10 = [(PXGMetalRenderStatePoolEntry *)&v13 init];
  if (v10)
  {
    if (!stateCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v10 file:@"PXGMetalRenderStatePool.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"reusableRenderState != nil"}];
    }

    objc_storeStrong(&v10->_renderState, state);
    objc_storeWeak(&v10->_pool, poolCopy);
  }

  return v10;
}

@end