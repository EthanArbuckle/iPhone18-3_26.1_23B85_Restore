@interface PXGReusableMetalRenderState
- ($105A79951CE75EB7BB90BCA93995B378)spriteStylesBufferWithCount:(int64_t)a3;
- ($19B257AB4ABD0C41B01C0B081813B3B6)values;
- ($738B17BD11CC339B30296C0EA03CEC2B)spriteEntitiesBufferWithCount:(int64_t)a3;
- ($786F7D2F4E5B3A0CBB66DF574B7D98CF)spriteInfosBufferWithCount:(int64_t)a3;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)resizableCapInsetsBufferWithCount:(int64_t)a3;
- ($C4327F77E24267CF92932F349E1559A2)spriteOriginalGeometriesBufferWithCount:(int64_t)a3;
- ($E2C29196C7A5C696474C6955C5A9CE06)spriteGeometriesBufferWithCount:(int64_t)a3;
- (NSString)description;
- (PXGReusableMetalRenderState)initWithDevice:(id)a3;
- (id)_resizedBufferIfNeeded:(id)a3 neededLength:(int64_t)a4;
- (id)renderPassStateForSpriteCount:(int64_t)a3;
- (void)prepareForRender:(int64_t)a3;
- (void)prepareForReuse;
- (void)setValues:(id *)a3;
@end

@implementation PXGReusableMetalRenderState

- ($19B257AB4ABD0C41B01C0B081813B3B6)values
{
  v3 = *&self[3].var5;
  retstr->var3.origin = *&self[3].var3.size.height;
  retstr->var3.size = v3;
  v4 = *&self[4].var0.height;
  *&retstr->var4 = *&self[3].var7;
  *&retstr->var6 = v4;
  v5 = *&self[3].var2.origin.y;
  retstr->var0 = *&self[3].var1.y;
  retstr->var1 = v5;
  v6 = *&self[3].var3.origin.y;
  retstr->var2.origin = *&self[3].var2.size.height;
  retstr->var2.size = v6;
  return self;
}

- (void)prepareForReuse
{
  renderedFrameIds = self->_renderedFrameIds;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__PXGReusableMetalRenderState_prepareForReuse__block_invoke;
  v6[3] = &unk_2782ABC08;
  v6[4] = self;
  [(NSMutableIndexSet *)renderedFrameIds enumerateIndexesUsingBlock:v6];
  [(NSMutableIndexSet *)self->_renderedFrameIds removeAllIndexes];
  [(PXGReusableMetalRenderState *)self setTextures:0];
  [(PXGReusableMetalRenderState *)self setCaptureSpriteTextures:0];
  [(PXGReusableMetalRenderState *)self setHasParsedRenderTextures:0];
  v4 = [(PXGReusableMetalRenderState *)self opaqueTextures];
  [v4 removeAllTextures];

  v5 = [(PXGReusableMetalRenderState *)self translucentTextures];
  [v5 removeAllTextures];
}

void __46__PXGReusableMetalRenderState_prepareForReuse__block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [*(a1 + 32) textures];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) cleanupAfterRender:a2];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)setValues:(id *)a3
{
  var0 = a3->var0;
  var1 = a3->var1;
  size = a3->var2.size;
  self->_values.renderBoundsInPoints.origin = a3->var2.origin;
  self->_values.renderBoundsInPoints.size = size;
  self->_values.renderSize = var0;
  self->_values.renderOrigin = var1;
  origin = a3->var3.origin;
  v7 = a3->var3.size;
  v8 = *&a3->var6;
  *&self->_values.offscreenEffectScale = *&a3->var4;
  *&self->_values.sampleCount = v8;
  self->_values.visibleRectInRenderCoordinates.origin = origin;
  self->_values.visibleRectInRenderCoordinates.size = v7;
}

- (void)prepareForRender:(int64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [(PXGReusableMetalRenderState *)self textures];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * v9++) prepareForRender:a3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(NSMutableIndexSet *)self->_renderedFrameIds addIndex:a3];
  v10 = [(PXGReusableMetalRenderState *)self opaqueTextures];
  [v10 prepareForRender];

  v11 = [(PXGReusableMetalRenderState *)self translucentTextures];
  [v11 prepareForRender];
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)resizableCapInsetsBufferWithCount:(int64_t)a3
{
  v4 = [(PXGReusableMetalRenderState *)self _resizedBufferIfNeeded:self->_resizableCapInsetsBuffer neededLength:16 * a3];
  resizableCapInsetsBuffer = self->_resizableCapInsetsBuffer;
  self->_resizableCapInsetsBuffer = v4;

  v6 = self->_resizableCapInsetsBuffer;

  return [(MTLBuffer *)v6 contents];
}

- (id)renderPassStateForSpriteCount:(int64_t)a3
{
  v5 = [(PXGReusableMetalRenderState *)self currentRenderPassState];
  v6 = v5;
  if (!v5 || [(PXGMetalRenderPassState *)v5 capacity]< a3)
  {
    v7 = [(PXGMetalRenderPassState *)v6 capacity];
    v8 = 2;
    if (v7 > 2)
    {
      v8 = v7;
    }

    do
    {
      v9 = v8;
      v8 *= 2;
    }

    while (v9 < a3);
    v10 = [[PXGMetalRenderPassState alloc] initWithDevice:self->_device capacity:v9];

    objc_storeStrong(&self->_currentRenderPassState, v10);
    v6 = v10;
  }

  return v6;
}

- ($C4327F77E24267CF92932F349E1559A2)spriteOriginalGeometriesBufferWithCount:(int64_t)a3
{
  v4 = [(PXGReusableMetalRenderState *)self _resizedBufferIfNeeded:self->_spriteOriginalGeometriesBuffer neededLength:32 * a3];
  spriteOriginalGeometriesBuffer = self->_spriteOriginalGeometriesBuffer;
  self->_spriteOriginalGeometriesBuffer = v4;

  v6 = self->_spriteOriginalGeometriesBuffer;

  return [(MTLBuffer *)v6 contents];
}

- ($786F7D2F4E5B3A0CBB66DF574B7D98CF)spriteInfosBufferWithCount:(int64_t)a3
{
  v4 = [(PXGReusableMetalRenderState *)self _resizedBufferIfNeeded:self->_spriteInfosBuffer neededLength:40 * a3];
  spriteInfosBuffer = self->_spriteInfosBuffer;
  self->_spriteInfosBuffer = v4;

  v6 = self->_spriteInfosBuffer;

  return [(MTLBuffer *)v6 contents];
}

- ($105A79951CE75EB7BB90BCA93995B378)spriteStylesBufferWithCount:(int64_t)a3
{
  v4 = [(PXGReusableMetalRenderState *)self _resizedBufferIfNeeded:self->_spriteStylesBuffer neededLength:160 * a3];
  spriteStylesBuffer = self->_spriteStylesBuffer;
  self->_spriteStylesBuffer = v4;

  v6 = self->_spriteStylesBuffer;

  return [(MTLBuffer *)v6 contents];
}

- ($E2C29196C7A5C696474C6955C5A9CE06)spriteGeometriesBufferWithCount:(int64_t)a3
{
  v4 = [(PXGReusableMetalRenderState *)self _resizedBufferIfNeeded:self->_spriteGeometriesBuffer neededLength:20 * a3];
  spriteGeometriesBuffer = self->_spriteGeometriesBuffer;
  self->_spriteGeometriesBuffer = v4;

  v6 = self->_spriteGeometriesBuffer;

  return [(MTLBuffer *)v6 contents];
}

- ($738B17BD11CC339B30296C0EA03CEC2B)spriteEntitiesBufferWithCount:(int64_t)a3
{
  v4 = [(PXGReusableMetalRenderState *)self _resizedBufferIfNeeded:self->_spriteEntitiesBuffer neededLength:4 * a3];
  spriteEntitiesBuffer = self->_spriteEntitiesBuffer;
  self->_spriteEntitiesBuffer = v4;

  v6 = self->_spriteEntitiesBuffer;

  return [(MTLBuffer *)v6 contents];
}

- (id)_resizedBufferIfNeeded:(id)a3 neededLength:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = 1;
  }

  v8 = v6;
  v9 = v8;
  if (v7 > [v8 length])
  {
    v10 = [v8 length];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v7;
    }

    do
    {
      v12 = v11;
      v11 *= 2;
    }

    while (v12 < v7);
    v9 = [MTLDevice newBufferWithLength:"newBufferWithLength:options:" options:?];
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p currentRenderPassState:%@>", v5, self, self->_currentRenderPassState];;

  return v6;
}

- (PXGReusableMetalRenderState)initWithDevice:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = PXGReusableMetalRenderState;
  v6 = [(PXGReusableMetalRenderState *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = +[(PXGComponent *)PXGEffectComponent];
    effectComponent = v7->_effectComponent;
    v7->_effectComponent = v8;

    v10 = objc_alloc_init(PXGMetalRenderTextureStore);
    opaqueTextures = v7->_opaqueTextures;
    v7->_opaqueTextures = v10;

    v12 = objc_alloc_init(PXGMetalRenderTextureStore);
    translucentTextures = v7->_translucentTextures;
    v7->_translucentTextures = v12;

    v14 = objc_alloc_init(MEMORY[0x277CCAB58]);
    renderedFrameIds = v7->_renderedFrameIds;
    v7->_renderedFrameIds = v14;
  }

  return v7;
}

@end