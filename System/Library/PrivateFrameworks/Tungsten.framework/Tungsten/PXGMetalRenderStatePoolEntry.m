@interface PXGMetalRenderStatePoolEntry
- ($19B257AB4ABD0C41B01C0B081813B3B6)values;
- (PXGMetalRenderStatePool)pool;
- (PXGMetalRenderStatePoolEntry)initWithReusableRenderState:(id)a3 pool:(id)a4;
- (void)dealloc;
- (void)setValues:(id *)a3;
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
    v5 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__PXGMetalRenderStatePoolEntry_dealloc__block_invoke;
    block[3] = &unk_2782AC0A8;
    v9 = WeakRetained;
    v10 = v4;
    v6 = v4;
    dispatch_async(v5, block);
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

- (void)setValues:(id *)a3
{
  renderState = self->_renderState;
  size = a3->var3.size;
  v8[4] = a3->var3.origin;
  v8[5] = size;
  v5 = *&a3->var6;
  v8[6] = *&a3->var4;
  v8[7] = v5;
  var1 = a3->var1;
  v8[0] = a3->var0;
  v8[1] = var1;
  v7 = a3->var2.size;
  v8[2] = a3->var2.origin;
  v8[3] = v7;
  [(PXGReusableMetalRenderState *)renderState setValues:v8];
}

- (PXGMetalRenderStatePoolEntry)initWithReusableRenderState:(id)a3 pool:(id)a4
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = PXGMetalRenderStatePoolEntry;
  v10 = [(PXGMetalRenderStatePoolEntry *)&v13 init];
  if (v10)
  {
    if (!v8)
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      [v12 handleFailureInMethod:a2 object:v10 file:@"PXGMetalRenderStatePool.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"reusableRenderState != nil"}];
    }

    objc_storeStrong(&v10->_renderState, a3);
    objc_storeWeak(&v10->_pool, v9);
  }

  return v10;
}

@end