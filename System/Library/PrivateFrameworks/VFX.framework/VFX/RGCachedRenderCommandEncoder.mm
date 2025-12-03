@interface RGCachedRenderCommandEncoder
- (RGCachedRenderCommandEncoder)init;
- (RGCachedRenderCommandEncoder)initWithEncoder:(id)encoder;
- (id).cxx_construct;
- (void)_setEncoder:(id)encoder alreadyUsed:(BOOL)used;
- (void)applyChangedStates;
- (void)beginEncodingWithCommandBuffer:(id)buffer renderPassDescriptor:(id)descriptor label:(id)label;
- (void)clear;
- (void)dealloc;
- (void)dispatchThreadsPerTile:(id *)tile;
- (void)drawIndexedPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)indirectBufferOffset;
- (void)drawIndexedPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset instanceCount:(unint64_t)self0 baseInstance:(unint64_t)self1;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset;
- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset;
- (void)drawPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance;
- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance;
- (void)endEncoding;
- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;
- (void)setCounters:(__RGRenderCounters *)counters;
- (void)setCullMode:(unint64_t)mode;
- (void)setDepthClipMode:(unint64_t)mode;
- (void)setDepthStencilState:(id)state;
- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setFragmentBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setFragmentBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setFragmentBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setFragmentSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setFragmentSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setFragmentSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setFragmentTexture:(id)texture atIndex:(unint64_t)index;
- (void)setFragmentTexture:(id)texture atTextureIndex:(unint64_t)index samplerState:(id)state atSamplerIndex:(unint64_t)samplerIndex;
- (void)setFragmentTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setFrontFacingWinding:(unint64_t)winding;
- (void)setLockCullMode:(BOOL)mode;
- (void)setLockFillMode:(BOOL)mode;
- (void)setRenderPipelineState:(id)state;
- (void)setScissorRect:(id *)rect;
- (void)setStencilFrontReferenceValue:(unsigned int)value backReferenceValue:(unsigned int)referenceValue;
- (void)setStencilReferenceValue:(unsigned int)value;
- (void)setTriangleFillMode:(unint64_t)mode;
- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setVertexBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setVertexSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setVertexSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setVertexSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setVertexTexture:(id)texture atIndex:(unint64_t)index;
- (void)setVertexTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setViewport:(id *)viewport;
- (void)setViewports:(id *)viewports count:(unint64_t)count;
@end

@implementation RGCachedRenderCommandEncoder

- (RGCachedRenderCommandEncoder)init
{
  v3.receiver = self;
  v3.super_class = RGCachedRenderCommandEncoder;
  return [(RGCachedRenderCommandEncoder *)&v3 init];
}

- (RGCachedRenderCommandEncoder)initWithEncoder:(id)encoder
{
  v7.receiver = self;
  v7.super_class = RGCachedRenderCommandEncoder;
  v4 = [(RGCachedRenderCommandEncoder *)&v7 init];
  objc_msgSend__setEncoder_alreadyUsed_(v4, v5, encoder, 0);
  return v4;
}

- (void)dealloc
{
  objc_msgSend_setEncoder_(self, a2, 0, v2);
  v4.receiver = self;
  v4.super_class = RGCachedRenderCommandEncoder;
  [(RGCachedRenderCommandEncoder *)&v4 dealloc];
}

- (void)setCounters:(__RGRenderCounters *)counters
{
  v3 = *&counters->storage.impl;
  *&self->_counters.primitiveCount = *&counters->primitiveCount;
  *&self->_counters.storage.impl = v3;
}

- (void)beginEncodingWithCommandBuffer:(id)buffer renderPassDescriptor:(id)descriptor label:(id)label
{
  v7 = objc_msgSend_renderCommandEncoderWithDescriptor_(buffer, a2, descriptor, descriptor);
  v10 = v7;
  if (label)
  {
    objc_msgSend_setLabel_(v7, v8, label, v9);
  }

  objc_msgSend__setEncoder_alreadyUsed_(self, v8, v10, 0);
}

- (void)_setEncoder:(id)encoder alreadyUsed:(BOOL)used
{
  usedCopy = used;
  encoderCopy = encoder;
  encoder = self->_encoder;
  if (encoder)
  {
  }

  self->_encoder = encoder;
  objc_msgSend_clear(self, v8, v9, v10);
  if (self->_encoder)
  {
    v12 = !usedCopy;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    LOWORD(self[22].super.isa) |= 0x9Eu;
  }
}

- (void)clear
{
  sub_1AF3B4330(&self->_cache);

  bzero(&self->_cache, 0x1060uLL);
}

- (void)endEncoding
{
  objc_msgSend_endEncoding(self->_encoder, a2, v2, v3);

  self->_encoder = 0;
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset
{
  countCopy = count;
  objc_msgSend_applyChangedStates(self, a2, primitives, count);
  objc_msgSend_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_(self->_encoder, v13, primitives, countCopy, type, buffer, offset);
  impl = self->_counters.storage.impl;
  if (!impl)
  {
    return;
  }

  vfx_counters_update(impl, self->_counters.drawCount, 1.0);
  v15 = self->_counters.storage.impl;
  primitiveCount = self->_counters.primitiveCount;
  if (primitives <= 1)
  {
    if (!primitives)
    {
      goto LABEL_14;
    }

    if (primitives == 1)
    {
      countCopy >>= 1;
      goto LABEL_14;
    }

LABEL_13:
    countCopy = 0;
    goto LABEL_14;
  }

  if (primitives == 2)
  {
    --countCopy;
    goto LABEL_14;
  }

  if (primitives == 3)
  {
    countCopy /= 3uLL;
    goto LABEL_14;
  }

  if (primitives != 4)
  {
    goto LABEL_13;
  }

  countCopy -= 2;
LABEL_14:

  vfx_counters_update(v15, primitiveCount, countCopy);
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount
{
  countCopy = count;
  objc_msgSend_applyChangedStates(self, a2, primitives, count);
  objc_msgSend_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_(self->_encoder, v15, primitives, countCopy, type, buffer, offset, instanceCount);
  impl = self->_counters.storage.impl;
  if (!impl)
  {
    return;
  }

  vfx_counters_update(impl, self->_counters.drawCount, 1.0);
  v17 = self->_counters.storage.impl;
  primitiveCount = self->_counters.primitiveCount;
  if (primitives <= 1)
  {
    if (!primitives)
    {
      goto LABEL_14;
    }

    if (primitives == 1)
    {
      countCopy >>= 1;
      goto LABEL_14;
    }

LABEL_13:
    countCopy = 0;
    goto LABEL_14;
  }

  if (primitives == 2)
  {
    --countCopy;
    goto LABEL_14;
  }

  if (primitives == 3)
  {
    countCopy /= 3uLL;
    goto LABEL_14;
  }

  if (primitives != 4)
  {
    goto LABEL_13;
  }

  countCopy -= 2;
LABEL_14:

  vfx_counters_update(v17, primitiveCount, (countCopy * instanceCount));
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0
{
  countCopy = count;
  objc_msgSend_applyChangedStates(self, a2, primitives, count);
  if (countCopy)
  {
    encoder = self->_encoder;
    if (vertex <= 0 && instance == 0)
    {
      objc_msgSend_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_(encoder, v17, primitives, countCopy, type, buffer, offset, instanceCount);
    }

    else
    {
      objc_msgSend_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_baseVertex_baseInstance_(encoder, v17, primitives, countCopy, type, buffer, offset, instanceCount, vertex, instance);
    }
  }

  impl = self->_counters.storage.impl;
  if (impl)
  {
    vfx_counters_update(impl, self->_counters.drawCount, 1.0);
    v21 = self->_counters.storage.impl;
    primitiveCount = self->_counters.primitiveCount;
    if (primitives <= 1)
    {
      if (!primitives)
      {
        goto LABEL_21;
      }

      if (primitives == 1)
      {
        countCopy >>= 1;
        goto LABEL_21;
      }
    }

    else
    {
      switch(primitives)
      {
        case 2uLL:
          --countCopy;
          goto LABEL_21;
        case 3uLL:
          countCopy /= 3uLL;
          goto LABEL_21;
        case 4uLL:
          countCopy -= 2;
LABEL_21:

          vfx_counters_update(v21, primitiveCount, (countCopy * instanceCount));
          return;
      }
    }

    countCopy = 0;
    goto LABEL_21;
  }
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset
{
  objc_msgSend_applyChangedStates(self, a2, primitives, type);
  objc_msgSend_drawIndexedPrimitives_indexType_indexBuffer_indexBufferOffset_indirectBuffer_indirectBufferOffset_(self->_encoder, v15, primitives, type, buffer, offset, indirectBuffer, bufferOffset);
  impl = self->_counters.storage.impl;
  if (impl)
  {
    vfx_counters_update(impl, self->_counters.drawCount, 1.0);
    v17 = self->_counters.storage.impl;
    indirectDrawCount = self->_counters.indirectDrawCount;

    vfx_counters_update(v17, indirectDrawCount, 1.0);
  }
}

- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  objc_msgSend_applyChangedStates(self, a2, primitives, buffer);
  objc_msgSend_drawPrimitives_indirectBuffer_indirectBufferOffset_(self->_encoder, v9, primitives, buffer, offset);
  impl = self->_counters.storage.impl;
  if (impl)
  {
    vfx_counters_update(impl, self->_counters.drawCount, 1.0);
    v11 = self->_counters.storage.impl;
    indirectDrawCount = self->_counters.indirectDrawCount;

    vfx_counters_update(v11, indirectDrawCount, 1.0);
  }
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count
{
  objc_msgSend_applyChangedStates(self, a2, primitives, start);
  objc_msgSend_drawPrimitives_vertexStart_vertexCount_(self->_encoder, v9, primitives, start, count);
  impl = self->_counters.storage.impl;
  if (!impl)
  {
    return;
  }

  vfx_counters_update(impl, self->_counters.drawCount, 1.0);
  v11 = self->_counters.storage.impl;
  primitiveCount = self->_counters.primitiveCount;
  if (primitives <= 1)
  {
    if (!primitives)
    {
      goto LABEL_14;
    }

    if (primitives == 1)
    {
      count >>= 1;
      goto LABEL_14;
    }

LABEL_13:
    count = 0;
    goto LABEL_14;
  }

  if (primitives == 2)
  {
    --count;
    goto LABEL_14;
  }

  if (primitives == 3)
  {
    count /= 3uLL;
    goto LABEL_14;
  }

  if (primitives != 4)
  {
    goto LABEL_13;
  }

  count -= 2;
LABEL_14:

  vfx_counters_update(v11, primitiveCount, count);
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount
{
  objc_msgSend_applyChangedStates(self, a2, primitives, start);
  objc_msgSend_drawPrimitives_vertexStart_vertexCount_instanceCount_(self->_encoder, v11, primitives, start, count, instanceCount);
  impl = self->_counters.storage.impl;
  if (!impl)
  {
    return;
  }

  vfx_counters_update(impl, self->_counters.drawCount, 1.0);
  v13 = self->_counters.storage.impl;
  primitiveCount = self->_counters.primitiveCount;
  if (primitives <= 1)
  {
    if (!primitives)
    {
      goto LABEL_14;
    }

    if (primitives == 1)
    {
      count >>= 1;
      goto LABEL_14;
    }

LABEL_13:
    count = 0;
    goto LABEL_14;
  }

  if (primitives == 2)
  {
    --count;
    goto LABEL_14;
  }

  if (primitives == 3)
  {
    count /= 3uLL;
    goto LABEL_14;
  }

  if (primitives != 4)
  {
    goto LABEL_13;
  }

  count -= 2;
LABEL_14:

  vfx_counters_update(v13, primitiveCount, (count * instanceCount));
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
{
  objc_msgSend_applyChangedStates(self, a2, primitives, start);
  encoder = self->_encoder;
  if (instance)
  {
    objc_msgSend_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance_(encoder, v13, primitives, start, count, instanceCount, instance);
  }

  else
  {
    objc_msgSend_drawPrimitives_vertexStart_vertexCount_instanceCount_(encoder, v13, primitives, start, count, instanceCount);
  }

  impl = self->_counters.storage.impl;
  if (!impl)
  {
    return;
  }

  vfx_counters_update(impl, self->_counters.drawCount, 1.0);
  v16 = self->_counters.storage.impl;
  primitiveCount = self->_counters.primitiveCount;
  if (primitives <= 1)
  {
    if (!primitives)
    {
      goto LABEL_17;
    }

    if (primitives == 1)
    {
      count >>= 1;
      goto LABEL_17;
    }

LABEL_16:
    count = 0;
    goto LABEL_17;
  }

  if (primitives == 2)
  {
    --count;
    goto LABEL_17;
  }

  if (primitives == 3)
  {
    count /= 3uLL;
    goto LABEL_17;
  }

  if (primitives != 4)
  {
    goto LABEL_16;
  }

  count -= 2;
LABEL_17:

  vfx_counters_update(v16, primitiveCount, (count * instanceCount));
}

- (void)drawIndexedPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)indirectBufferOffset
{
  objc_msgSend_applyChangedStates(self, a2, patches, buffer);
  objc_msgSend_drawIndexedPatches_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_indirectBuffer_indirectBufferOffset_(self->_encoder, v16, patches, buffer, offset, indexBuffer, bufferOffset, indirectBuffer, indirectBufferOffset);
  impl = self->_counters.storage.impl;
  if (impl)
  {
    vfx_counters_update(impl, self->_counters.drawCount, 1.0);
    v18 = self->_counters.storage.impl;
    indirectDrawCount = self->_counters.indirectDrawCount;

    vfx_counters_update(v18, indirectDrawCount, 1.0);
  }
}

- (void)drawIndexedPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset instanceCount:(unint64_t)self0 baseInstance:(unint64_t)self1
{
  objc_msgSend_applyChangedStates(self, a2, patches, start);
  objc_msgSend_drawIndexedPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_instanceCount_baseInstance_(self->_encoder, v18, patches, start, count, buffer, offset, indexBuffer, bufferOffset, instanceCount, instance);
  impl = self->_counters.storage.impl;
  if (impl)
  {
    drawCount = self->_counters.drawCount;

    vfx_counters_update(impl, drawCount, 1.0);
  }
}

- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  objc_msgSend_applyChangedStates(self, a2, threadgroups, threadgroup);
  encoder = self->_encoder;
  v14 = *threadgroups;
  v13 = *threadgroup;
  v12 = *meshThreadgroup;
  objc_msgSend_drawMeshThreadgroups_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup_(encoder, v10, &v14, &v13, &v12);
  impl = self->_counters.storage.impl;
  if (impl)
  {
    vfx_counters_update(impl, self->_counters.drawCount, 1.0);
  }
}

- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  objc_msgSend_applyChangedStates(self, a2, buffer, offset);
  encoder = self->_encoder;
  v15 = *threadgroup;
  v14 = *meshThreadgroup;
  objc_msgSend_drawMeshThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup_(encoder, v12, buffer, offset, &v15, &v14);
  impl = self->_counters.storage.impl;
  if (impl)
  {
    vfx_counters_update(impl, self->_counters.drawCount, 1.0);
    vfx_counters_update(self->_counters.storage.impl, self->_counters.indirectDrawCount, 1.0);
  }
}

- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  objc_msgSend_applyChangedStates(self, a2, threads, threadgroup);
  encoder = self->_encoder;
  v14 = *threads;
  v13 = *threadgroup;
  v12 = *meshThreadgroup;
  objc_msgSend_drawMeshThreads_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup_(encoder, v10, &v14, &v13, &v12);
  impl = self->_counters.storage.impl;
  if (impl)
  {
    vfx_counters_update(impl, self->_counters.drawCount, 1.0);
  }
}

- (void)drawPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset
{
  objc_msgSend_applyChangedStates(self, a2, patches, buffer);
  objc_msgSend_drawPatches_patchIndexBuffer_patchIndexBufferOffset_indirectBuffer_indirectBufferOffset_(self->_encoder, v13, patches, buffer, offset, indirectBuffer, bufferOffset);
  impl = self->_counters.storage.impl;
  if (impl)
  {
    vfx_counters_update(impl, self->_counters.drawCount, 1.0);
    v15 = self->_counters.storage.impl;
    indirectDrawCount = self->_counters.indirectDrawCount;

    vfx_counters_update(v15, indirectDrawCount, 1.0);
  }
}

- (void)drawPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
{
  objc_msgSend_applyChangedStates(self, a2, patches, start);
  objc_msgSend_drawPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_instanceCount_baseInstance_(self->_encoder, v16, patches, start, count, buffer, offset, instanceCount, instance);
  impl = self->_counters.storage.impl;
  if (impl)
  {
    drawCount = self->_counters.drawCount;

    vfx_counters_update(impl, drawCount, 1.0);
  }
}

- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha
{
  v8.f32[0] = red;
  v8.f32[1] = green;
  v8.i64[1] = __PAIR64__(LODWORD(alpha), LODWORD(blue));
  if ((vmaxvq_u32(vmvnq_s8(vceqq_f32(*&self->_cache.material, v8))) & 0x80000000) != 0)
  {
    *&self->_cache.material = v8;
    objc_msgSend_setBlendColorRed_green_blue_alpha_(self->_encoder, a2, v6, v7);
  }
}

- (void)setCullMode:(unint64_t)mode
{
  isa = self[22].super.isa;
  if ((isa & 0x20) == 0 && self->_cache.meshElement != mode)
  {
    self->_cache.meshElement = mode;
    LOWORD(self[22].super.isa) = isa | 4;
  }
}

- (void)setDepthClipMode:(unint64_t)mode
{
  if (self->_cache.program != mode)
  {
    self->_cache.program = mode;
    LOWORD(self[22].super.isa) |= 0x10u;
  }
}

- (void)setDepthStencilState:(id)state
{
  if (self->_cache.rasterizerStates != state)
  {
    self->_cache.rasterizerStates = state;
    objc_msgSend_setDepthStencilState_(self->_encoder, a2, state, v3);
  }
}

- (void)setFrontFacingWinding:(unint64_t)winding
{
  if (self->_cache.metalMesh != winding)
  {
    self->_cache.metalMesh = winding;
    LOWORD(self[22].super.isa) |= 2u;
  }
}

- (void)setRenderPipelineState:(id)state
{
  if (self->_cache.geometry != state)
  {
    self->_cache.geometry = state;
    objc_msgSend_setRenderPipelineState_(self->_encoder, a2, state, v3);
  }
}

- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  v5 = self + 16 * index;
  *(v5 + 113) = 0;
  *(v5 + 112) = 0;
  objc_msgSend_setVertexBytes_length_atIndex_(self->_encoder, a2, bytes, length);
}

- (void)setScissorRect:(id *)rect
{
  encoder = self->_encoder;
  v5 = *&rect->var2;
  v6[0] = *&rect->var0;
  v6[1] = v5;
  objc_msgSend_setScissorRect_(encoder, a2, v6, v3);
}

- (void)setStencilFrontReferenceValue:(unsigned int)value backReferenceValue:(unsigned int)referenceValue
{
  if (LODWORD(self->_cache.metalShadable) != value || HIDWORD(self->_cache.metalShadable) != referenceValue)
  {
    LODWORD(self->_cache.metalShadable) = value;
    HIDWORD(self->_cache.metalShadable) = referenceValue;
    objc_msgSend_setStencilFrontReferenceValue_backReferenceValue_(self->_encoder, a2, *&value, *&referenceValue);
  }
}

- (void)setStencilReferenceValue:(unsigned int)value
{
  if (LODWORD(self->_cache.metalShadable) != value || HIDWORD(self->_cache.metalShadable) != value)
  {
    LODWORD(self->_cache.metalShadable) = value;
    HIDWORD(self->_cache.metalShadable) = value;
    (MEMORY[0x1EEE66B58])(self->_encoder, sel_setStencilReferenceValue_, *&value);
  }
}

- (void)setTriangleFillMode:(unint64_t)mode
{
  isa = self[22].super.isa;
  if ((isa & 0x40) == 0 && self->_cache.metalMeshElement != mode)
  {
    self->_cache.metalMeshElement = mode;
    LOWORD(self[22].super.isa) = isa | 8;
  }
}

- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  v5 = (&self[13]._cache.rasterizerStates + 2 * index);
  if (*v5 == buffer)
  {
    if (*(&self[13]._cache.geometry + 2 * index) != offset)
    {
      *(&self[13]._cache.geometry + 2 * index) = offset;
      MEMORY[0x1EEE66B58](self->_encoder, sel_setFragmentBufferOffset_atIndex_, offset, index);
    }
  }

  else
  {
    *v5 = buffer;
    *(&self[13]._cache.geometry + 2 * index) = offset;
    objc_msgSend_setFragmentBuffer_offset_atIndex_(self->_encoder, a2, buffer, offset);
  }
}

- (void)setFragmentBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  v4 = self + 16 * index;
  if (*(v4 + 319) != offset)
  {
    *(v4 + 319) = offset;
    MEMORY[0x1EEE66B58](self->_encoder, sel_setFragmentBufferOffset_atIndex_, offset, index);
  }
}

- (void)setFragmentBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  if (range.length)
  {
    v5 = &self[13]._cache.geometry + 2 * range.location;
    buffersCopy = buffers;
    offsetsCopy = offsets;
    length = range.length;
    do
    {
      v10 = *buffersCopy++;
      v9 = v10;
      v11 = *offsetsCopy++;
      *(v5 - 1) = v9;
      *v5 = v11;
      v5 += 2;
      --length;
    }

    while (length);
  }

  MEMORY[0x1EEE66B58](self->_encoder, sel_setFragmentBuffers_offsets_withRange_, buffers, offsets);
}

- (void)setFragmentBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  v5 = self + 16 * index;
  *(v5 + 319) = 0;
  *(v5 + 318) = 0;
  objc_msgSend_setFragmentBytes_length_atIndex_(self->_encoder, a2, bytes, length);
}

- (void)setFragmentSamplerState:(id)state atIndex:(unint64_t)index
{
  if (*(&self[21]._counters.primitiveCount + index) != state)
  {
    *(&self[21]._counters.primitiveCount + index) = state;
    objc_msgSend_setFragmentSamplerState_atIndex_(self->_encoder, a2, state, index);
  }
}

- (void)setFragmentSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  if (range.length)
  {
    v6 = &self[21]._counters.primitiveCount + 2 * range.location;
    statesCopy = states;
    length = range.length;
    do
    {
      v9 = *statesCopy++;
      *v6 = v9;
      v6 += 2;
      --length;
    }

    while (length);
  }

  MEMORY[0x1EEE66B58](self->_encoder, sel_setFragmentSamplerStates_lodMinClamps_lodMaxClamps_withRange_, states, clamps);
}

- (void)setFragmentSamplerStates:(const void *)states withRange:(_NSRange)range
{
  if (range.length)
  {
    v4 = &self[21]._counters.primitiveCount + 2 * range.location;
    statesCopy = states;
    length = range.length;
    do
    {
      v7 = *statesCopy++;
      *v4 = v7;
      v4 += 2;
      --length;
    }

    while (length);
  }

  MEMORY[0x1EEE66B58](self->_encoder, sel_setFragmentSamplerStates_withRange_, states, range.location);
}

- (void)setFragmentTexture:(id)texture atIndex:(unint64_t)index
{
  if (*(&self[15]._cache.deformerStack + index) != texture)
  {
    *(&self[15]._cache.deformerStack + index) = texture;
    isa = self[22].super.isa;
    if (isa)
    {
      LOWORD(self[22].super.isa) = isa | 0x100;
      *(&self[21]._cache.tessellationPipelineStateHash + (index >> 6)) |= 1 << index;
    }

    else
    {
      objc_msgSend_setFragmentTexture_atIndex_(self->_encoder, a2, texture, index);
    }
  }
}

- (void)setFragmentTextures:(const void *)textures withRange:(_NSRange)range
{
  if (range.length)
  {
    v4 = &self[15]._cache.deformerStack + range.location;
    texturesCopy = textures;
    length = range.length;
    do
    {
      v7 = *texturesCopy++;
      *v4++ = v7;
      --length;
    }

    while (length);
  }

  objc_msgSend_setFragmentTextures_withRange_(self->_encoder, a2, textures, range.location);
}

- (void)setFragmentTexture:(id)texture atTextureIndex:(unint64_t)index samplerState:(id)state atSamplerIndex:(unint64_t)samplerIndex
{
  v6 = &self->super.isa + samplerIndex;
  if (*(&self[15]._cache.deformerStack + index) != texture || v6[508] != state)
  {
    *(&self[15]._cache.deformerStack + index) = texture;
    v6[508] = state;
    objc_msgSend_setFragmentTexture_atTextureIndex_samplerState_atSamplerIndex_(self->_encoder, a2, texture, index);
  }
}

- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  v5 = (&self[4]._cache.blendStates + 2 * index);
  if (*v5 == buffer)
  {
    if (*(&self[4]._cache.colorBufferWriteMask + 2 * index) != offset)
    {
      *(&self[4]._cache.colorBufferWriteMask + 2 * index) = offset;
      objc_msgSend_setVertexBufferOffset_atIndex_(self->_encoder, a2, offset, index);
    }
  }

  else
  {
    *v5 = buffer;
    *(&self[4]._cache.colorBufferWriteMask + 2 * index) = offset;
    objc_msgSend_setVertexBuffer_offset_atIndex_(self->_encoder, a2, buffer, offset);
  }
}

- (void)setVertexBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  v4 = self + 16 * index;
  if (*(v4 + 113) != offset)
  {
    *(v4 + 113) = offset;
    objc_msgSend_setVertexBufferOffset_atIndex_(self->_encoder, a2, offset, index);
  }
}

- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    v10 = 0;
    v11 = 0;
    for (i = (&self[4]._cache.colorBufferWriteMask + 16 * range.location); ; i += 2)
    {
      v13 = buffers[v11];
      if (*(i - 1) != v13)
      {
        break;
      }

      v14 = offsets[v11];
      if (*i != v14)
      {
        *i = v14;
        objc_msgSend_setVertexBufferOffset_atIndex_(self->_encoder, a2, offsets[v11], location + v11);
      }

      ++v11;
      v10 -= 8;
      if (length == v11)
      {
        return;
      }
    }

    v15 = length - v11;
    if (length != v11)
    {
      if (length - 1 == v11)
      {
        v16 = offsets[v11];
        *(i - 1) = v13;
        *i = v16;
        encoder = self->_encoder;
        v18 = buffers[v11];
        v19 = offsets[v11];

        objc_msgSend_setVertexBuffer_offset_atIndex_(encoder, a2, v18, v19, location + v11);
      }

      else
      {
        v20 = &buffers[v10 / 0xFFFFFFFFFFFFFFF8];
        v21 = &offsets[v10 / 0xFFFFFFFFFFFFFFF8];
        objc_msgSend_setVertexBuffers_offsets_withRange_(self->_encoder, a2, v20, v21, location + v11, length - v11);
        if (length > v11)
        {
          do
          {
            v23 = *v20++;
            v22 = v23;
            v24 = *v21++;
            *(i - 1) = v22;
            *i = v24;
            i += 2;
            --v15;
          }

          while (v15);
        }
      }
    }
  }
}

- (void)setVertexSamplerState:(id)state atIndex:(unint64_t)index
{
  if (*(&self[12]._cache.metalShadable + index) != state)
  {
    *(&self[12]._cache.metalShadable + index) = state;
    objc_msgSend_setVertexSamplerState_atIndex_(self->_encoder, a2, state, index);
  }
}

- (void)setVertexSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  if (range.length)
  {
    v6 = &self[12]._cache.metalShadable + range.location;
    statesCopy = states;
    length = range.length;
    do
    {
      v9 = *statesCopy++;
      *v6++ = v9;
      --length;
    }

    while (length);
  }

  MEMORY[0x1EEE66B58](self->_encoder, sel_setVertexSamplerStates_lodMinClamps_lodMaxClamps_withRange_, states, clamps);
}

- (void)setVertexSamplerStates:(const void *)states withRange:(_NSRange)range
{
  if (range.length)
  {
    v4 = &self[12]._cache.metalShadable + range.location;
    statesCopy = states;
    length = range.length;
    do
    {
      v7 = *statesCopy++;
      *v4++ = v7;
      --length;
    }

    while (length);
  }

  MEMORY[0x1EEE66B58](self->_encoder, sel_setVertexSamplerStates_withRange_, states, range.location);
}

- (void)setVertexTexture:(id)texture atIndex:(unint64_t)index
{
  if (*(&self[7]._cache.rasterizerStates + index) != texture)
  {
    *(&self[7]._cache.rasterizerStates + index) = texture;
    isa = self[22].super.isa;
    if (isa)
    {
      LOWORD(self[22].super.isa) = isa | 0x100;
      *(&self[21]._cache.deformerStack + (index >> 6)) |= 1 << index;
    }

    else
    {
      objc_msgSend_setVertexTexture_atIndex_(self->_encoder, a2, texture, index);
    }
  }
}

- (void)setVertexTextures:(const void *)textures withRange:(_NSRange)range
{
  if (range.length)
  {
    v4 = &self[7]._cache.rasterizerStates + range.location;
    texturesCopy = textures;
    length = range.length;
    do
    {
      v7 = *texturesCopy++;
      *v4++ = v7;
      --length;
    }

    while (length);
  }

  objc_msgSend_setVertexTextures_withRange_(self->_encoder, a2, textures, range.location);
}

- (void)setViewport:(id *)viewport
{
  if (self[4]._cache.commonProfile != 1 || memcmp(&self->_cache.commonProfile, viewport, 0x30uLL))
  {
    v5 = *&viewport->var0;
    v6 = *&viewport->var2;
    *&self->_cache.pointOfView = *&viewport->var4;
    *&self->_cache.colorBufferWriteMask = v6;
    *&self->_cache.commonProfile = v5;
    self[4]._cache.commonProfile = 1;
    LOWORD(self[22].super.isa) |= 0x80u;
  }
}

- (void)setViewports:(id *)viewports count:(unint64_t)count
{
  if (self[4]._cache.commonProfile != count)
  {
    v7 = 48 * count;
    goto LABEL_5;
  }

  v7 = 48 * count;
  if (memcmp(&self->_cache.commonProfile, viewports, 48 * count))
  {
LABEL_5:
    memcpy(&self->_cache.commonProfile, viewports, v7);
    self[4]._cache.commonProfile = count;
    LOWORD(self[22].super.isa) |= 0x80u;
  }
}

- (void)dispatchThreadsPerTile:(id *)tile
{
  objc_msgSend_applyChangedStates(self, a2, tile, v3);
  encoder = self->_encoder;
  v9 = *tile;
  objc_msgSend_dispatchThreadsPerTile_(encoder, v7, &v9, v8);
}

- (void)applyChangedStates
{
  isa = self[22].super.isa;
  if ((isa & 2) != 0)
  {
    LOWORD(self[22].super.isa) = isa & 0xFFFD;
    objc_msgSend_setFrontFacingWinding_(self->_encoder, a2, self->_cache.metalMesh, v2);
    isa = self[22].super.isa;
    if ((isa & 8) == 0)
    {
LABEL_3:
      if ((isa & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((isa & 8) == 0)
  {
    goto LABEL_3;
  }

  LOWORD(self[22].super.isa) = isa & 0xFFF7;
  objc_msgSend_setTriangleFillMode_(self->_encoder, a2, self->_cache.metalMeshElement, v2);
  isa = self[22].super.isa;
  if ((isa & 4) == 0)
  {
LABEL_4:
    if ((isa & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  LOWORD(self[22].super.isa) = isa & 0xFFFB;
  objc_msgSend_setCullMode_(self->_encoder, a2, self->_cache.meshElement, v2);
  isa = self[22].super.isa;
  if ((isa & 0x10) == 0)
  {
LABEL_5:
    if ((isa & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_10:
  LOWORD(self[22].super.isa) = isa & 0xFFEF;
  objc_msgSend_setDepthClipMode_(self->_encoder, a2, self->_cache.program, v2);
  isa = self[22].super.isa;
  if ((isa & 0x80) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  commonProfile = self[4]._cache.commonProfile;
  if (commonProfile)
  {
    LOWORD(self[22].super.isa) = isa & 0xFF7F;
    objc_msgSend_setViewports_count_(self->_encoder, a2, &self->_cache.commonProfile, commonProfile);
    isa = self[22].super.isa;
  }

LABEL_13:
  if (isa)
  {
    encoder = self->_encoder;

    sub_1AF3B3F94(&self->_cache, encoder);
  }
}

- (void)setLockCullMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self[22].super.isa) = self[22].super.isa & 0xFFDF | v3;
}

- (void)setLockFillMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self[22].super.isa) = self[22].super.isa & 0xFFBF | v3;
}

- (id).cxx_construct
{
  *(self + 86) = 0u;
  *(self + 85) = 0u;
  *(self + 84) = 0u;
  *(self + 83) = 0u;
  *(self + 82) = 0u;
  *(self + 81) = 0u;
  *(self + 80) = 0u;
  *(self + 79) = 0u;
  *(self + 78) = 0u;
  *(self + 77) = 0u;
  *(self + 76) = 0u;
  *(self + 75) = 0u;
  *(self + 74) = 0u;
  *(self + 73) = 0u;
  *(self + 72) = 0u;
  *(self + 71) = 0u;
  *(self + 70) = 0u;
  *(self + 69) = 0u;
  *(self + 68) = 0u;
  *(self + 67) = 0u;
  *(self + 66) = 0u;
  *(self + 65) = 0u;
  *(self + 63) = 0u;
  *(self + 64) = 0u;
  *(self + 61) = 0u;
  *(self + 62) = 0u;
  *(self + 59) = 0u;
  *(self + 60) = 0u;
  *(self + 57) = 0u;
  *(self + 58) = 0u;
  *(self + 56) = 0u;
  *(self + 189) = 0u;
  *(self + 188) = 0u;
  *(self + 187) = 0u;
  *(self + 186) = 0u;
  *(self + 185) = 0u;
  *(self + 184) = 0u;
  *(self + 183) = 0u;
  *(self + 182) = 0u;
  *(self + 181) = 0u;
  *(self + 180) = 0u;
  *(self + 179) = 0u;
  *(self + 178) = 0u;
  *(self + 177) = 0u;
  *(self + 176) = 0u;
  *(self + 175) = 0u;
  *(self + 174) = 0u;
  *(self + 173) = 0u;
  *(self + 172) = 0u;
  *(self + 171) = 0u;
  *(self + 170) = 0u;
  *(self + 169) = 0u;
  *(self + 168) = 0u;
  *(self + 167) = 0u;
  *(self + 166) = 0u;
  *(self + 165) = 0u;
  *(self + 164) = 0u;
  *(self + 163) = 0u;
  *(self + 162) = 0u;
  *(self + 161) = 0u;
  *(self + 160) = 0u;
  *(self + 159) = 0u;
  return self;
}

@end