@interface PXGReusableMetalRenderState
- ($105A79951CE75EB7BB90BCA93995B378)spriteStylesBufferWithCount:(int64_t)count;
- ($19B257AB4ABD0C41B01C0B081813B3B6)values;
- ($738B17BD11CC339B30296C0EA03CEC2B)spriteEntitiesBufferWithCount:(int64_t)count;
- ($786F7D2F4E5B3A0CBB66DF574B7D98CF)spriteInfosBufferWithCount:(int64_t)count;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)resizableCapInsetsBufferWithCount:(int64_t)count;
- ($C4327F77E24267CF92932F349E1559A2)spriteOriginalGeometriesBufferWithCount:(int64_t)count;
- ($E2C29196C7A5C696474C6955C5A9CE06)spriteGeometriesBufferWithCount:(int64_t)count;
- (NSString)description;
- (PXGReusableMetalRenderState)initWithDevice:(id)device;
- (id)_resizedBufferIfNeeded:(id)needed neededLength:(int64_t)length;
- (id)renderPassStateForSpriteCount:(int64_t)count;
- (void)prepareForRender:(int64_t)render;
- (void)prepareForReuse;
- (void)setValues:(id *)values;
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
  opaqueTextures = [(PXGReusableMetalRenderState *)self opaqueTextures];
  [opaqueTextures removeAllTextures];

  translucentTextures = [(PXGReusableMetalRenderState *)self translucentTextures];
  [translucentTextures removeAllTextures];
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

- (void)setValues:(id *)values
{
  var0 = values->var0;
  var1 = values->var1;
  size = values->var2.size;
  self->_values.renderBoundsInPoints.origin = values->var2.origin;
  self->_values.renderBoundsInPoints.size = size;
  self->_values.renderSize = var0;
  self->_values.renderOrigin = var1;
  origin = values->var3.origin;
  v7 = values->var3.size;
  v8 = *&values->var6;
  *&self->_values.offscreenEffectScale = *&values->var4;
  *&self->_values.sampleCount = v8;
  self->_values.visibleRectInRenderCoordinates.origin = origin;
  self->_values.visibleRectInRenderCoordinates.size = v7;
}

- (void)prepareForRender:(int64_t)render
{
  v17 = *MEMORY[0x277D85DE8];
  textures = [(PXGReusableMetalRenderState *)self textures];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [textures countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(textures);
        }

        [*(*(&v12 + 1) + 8 * v9++) prepareForRender:render];
      }

      while (v7 != v9);
      v7 = [textures countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(NSMutableIndexSet *)self->_renderedFrameIds addIndex:render];
  opaqueTextures = [(PXGReusableMetalRenderState *)self opaqueTextures];
  [opaqueTextures prepareForRender];

  translucentTextures = [(PXGReusableMetalRenderState *)self translucentTextures];
  [translucentTextures prepareForRender];
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)resizableCapInsetsBufferWithCount:(int64_t)count
{
  v4 = [(PXGReusableMetalRenderState *)self _resizedBufferIfNeeded:self->_resizableCapInsetsBuffer neededLength:16 * count];
  resizableCapInsetsBuffer = self->_resizableCapInsetsBuffer;
  self->_resizableCapInsetsBuffer = v4;

  v6 = self->_resizableCapInsetsBuffer;

  return [(MTLBuffer *)v6 contents];
}

- (id)renderPassStateForSpriteCount:(int64_t)count
{
  currentRenderPassState = [(PXGReusableMetalRenderState *)self currentRenderPassState];
  v6 = currentRenderPassState;
  if (!currentRenderPassState || [(PXGMetalRenderPassState *)currentRenderPassState capacity]< count)
  {
    capacity = [(PXGMetalRenderPassState *)v6 capacity];
    v8 = 2;
    if (capacity > 2)
    {
      v8 = capacity;
    }

    do
    {
      v9 = v8;
      v8 *= 2;
    }

    while (v9 < count);
    v10 = [[PXGMetalRenderPassState alloc] initWithDevice:self->_device capacity:v9];

    objc_storeStrong(&self->_currentRenderPassState, v10);
    v6 = v10;
  }

  return v6;
}

- ($C4327F77E24267CF92932F349E1559A2)spriteOriginalGeometriesBufferWithCount:(int64_t)count
{
  v4 = [(PXGReusableMetalRenderState *)self _resizedBufferIfNeeded:self->_spriteOriginalGeometriesBuffer neededLength:32 * count];
  spriteOriginalGeometriesBuffer = self->_spriteOriginalGeometriesBuffer;
  self->_spriteOriginalGeometriesBuffer = v4;

  v6 = self->_spriteOriginalGeometriesBuffer;

  return [(MTLBuffer *)v6 contents];
}

- ($786F7D2F4E5B3A0CBB66DF574B7D98CF)spriteInfosBufferWithCount:(int64_t)count
{
  v4 = [(PXGReusableMetalRenderState *)self _resizedBufferIfNeeded:self->_spriteInfosBuffer neededLength:40 * count];
  spriteInfosBuffer = self->_spriteInfosBuffer;
  self->_spriteInfosBuffer = v4;

  v6 = self->_spriteInfosBuffer;

  return [(MTLBuffer *)v6 contents];
}

- ($105A79951CE75EB7BB90BCA93995B378)spriteStylesBufferWithCount:(int64_t)count
{
  v4 = [(PXGReusableMetalRenderState *)self _resizedBufferIfNeeded:self->_spriteStylesBuffer neededLength:160 * count];
  spriteStylesBuffer = self->_spriteStylesBuffer;
  self->_spriteStylesBuffer = v4;

  v6 = self->_spriteStylesBuffer;

  return [(MTLBuffer *)v6 contents];
}

- ($E2C29196C7A5C696474C6955C5A9CE06)spriteGeometriesBufferWithCount:(int64_t)count
{
  v4 = [(PXGReusableMetalRenderState *)self _resizedBufferIfNeeded:self->_spriteGeometriesBuffer neededLength:20 * count];
  spriteGeometriesBuffer = self->_spriteGeometriesBuffer;
  self->_spriteGeometriesBuffer = v4;

  v6 = self->_spriteGeometriesBuffer;

  return [(MTLBuffer *)v6 contents];
}

- ($738B17BD11CC339B30296C0EA03CEC2B)spriteEntitiesBufferWithCount:(int64_t)count
{
  v4 = [(PXGReusableMetalRenderState *)self _resizedBufferIfNeeded:self->_spriteEntitiesBuffer neededLength:4 * count];
  spriteEntitiesBuffer = self->_spriteEntitiesBuffer;
  self->_spriteEntitiesBuffer = v4;

  v6 = self->_spriteEntitiesBuffer;

  return [(MTLBuffer *)v6 contents];
}

- (id)_resizedBufferIfNeeded:(id)needed neededLength:(int64_t)length
{
  neededCopy = needed;
  if (length)
  {
    lengthCopy = length;
  }

  else
  {
    lengthCopy = 1;
  }

  v8 = neededCopy;
  v9 = v8;
  if (lengthCopy > [v8 length])
  {
    v10 = [v8 length];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = lengthCopy;
    }

    do
    {
      v12 = v11;
      v11 *= 2;
    }

    while (v12 < lengthCopy);
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

- (PXGReusableMetalRenderState)initWithDevice:(id)device
{
  deviceCopy = device;
  v17.receiver = self;
  v17.super_class = PXGReusableMetalRenderState;
  v6 = [(PXGReusableMetalRenderState *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
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