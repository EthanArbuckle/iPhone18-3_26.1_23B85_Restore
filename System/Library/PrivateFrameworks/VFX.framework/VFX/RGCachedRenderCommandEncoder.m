@interface RGCachedRenderCommandEncoder
- (RGCachedRenderCommandEncoder)init;
- (RGCachedRenderCommandEncoder)initWithEncoder:(id)a3;
- (id).cxx_construct;
- (void)_setEncoder:(id)a3 alreadyUsed:(BOOL)a4;
- (void)applyChangedStates;
- (void)beginEncodingWithCommandBuffer:(id)a3 renderPassDescriptor:(id)a4 label:(id)a5;
- (void)clear;
- (void)dealloc;
- (void)dispatchThreadsPerTile:(id *)a3;
- (void)drawIndexedPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 controlPointIndexBuffer:(id)a6 controlPointIndexBufferOffset:(unint64_t)a7 indirectBuffer:(id)a8 indirectBufferOffset:(unint64_t)a9;
- (void)drawIndexedPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 controlPointIndexBuffer:(id)a8 controlPointIndexBufferOffset:(unint64_t)a9 instanceCount:(unint64_t)a10 baseInstance:(unint64_t)a11;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(id)a5 indexBufferOffset:(unint64_t)a6 indirectBuffer:(id)a7 indirectBufferOffset:(unint64_t)a8;
- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerObjectThreadgroup:(id *)a5 threadsPerMeshThreadgroup:(id *)a6;
- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 indirectBuffer:(id)a6 indirectBufferOffset:(unint64_t)a7;
- (void)drawPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseInstance:(unint64_t)a9;
- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7;
- (void)endEncoding;
- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6;
- (void)setCounters:(__RGRenderCounters *)a3;
- (void)setCullMode:(unint64_t)a3;
- (void)setDepthClipMode:(unint64_t)a3;
- (void)setDepthStencilState:(id)a3;
- (void)setFragmentBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setFragmentBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setFragmentBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setFragmentBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setFragmentSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setFragmentSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setFragmentSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setFragmentTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setFragmentTexture:(id)a3 atTextureIndex:(unint64_t)a4 samplerState:(id)a5 atSamplerIndex:(unint64_t)a6;
- (void)setFragmentTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setFrontFacingWinding:(unint64_t)a3;
- (void)setLockCullMode:(BOOL)a3;
- (void)setLockFillMode:(BOOL)a3;
- (void)setRenderPipelineState:(id)a3;
- (void)setScissorRect:(id *)a3;
- (void)setStencilFrontReferenceValue:(unsigned int)a3 backReferenceValue:(unsigned int)a4;
- (void)setStencilReferenceValue:(unsigned int)a3;
- (void)setTriangleFillMode:(unint64_t)a3;
- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setVertexBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setVertexBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setVertexBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setVertexSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setVertexSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setVertexSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setVertexTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setVertexTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setViewport:(id *)a3;
- (void)setViewports:(id *)a3 count:(unint64_t)a4;
@end

@implementation RGCachedRenderCommandEncoder

- (RGCachedRenderCommandEncoder)init
{
  v3.receiver = self;
  v3.super_class = RGCachedRenderCommandEncoder;
  return [(RGCachedRenderCommandEncoder *)&v3 init];
}

- (RGCachedRenderCommandEncoder)initWithEncoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = RGCachedRenderCommandEncoder;
  v4 = [(RGCachedRenderCommandEncoder *)&v7 init];
  objc_msgSend__setEncoder_alreadyUsed_(v4, v5, a3, 0);
  return v4;
}

- (void)dealloc
{
  objc_msgSend_setEncoder_(self, a2, 0, v2);
  v4.receiver = self;
  v4.super_class = RGCachedRenderCommandEncoder;
  [(RGCachedRenderCommandEncoder *)&v4 dealloc];
}

- (void)setCounters:(__RGRenderCounters *)a3
{
  v3 = *&a3->storage.impl;
  *&self->_counters.primitiveCount = *&a3->primitiveCount;
  *&self->_counters.storage.impl = v3;
}

- (void)beginEncodingWithCommandBuffer:(id)a3 renderPassDescriptor:(id)a4 label:(id)a5
{
  v7 = objc_msgSend_renderCommandEncoderWithDescriptor_(a3, a2, a4, a4);
  v10 = v7;
  if (a5)
  {
    objc_msgSend_setLabel_(v7, v8, a5, v9);
  }

  objc_msgSend__setEncoder_alreadyUsed_(self, v8, v10, 0);
}

- (void)_setEncoder:(id)a3 alreadyUsed:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  encoder = self->_encoder;
  if (encoder)
  {
  }

  self->_encoder = a3;
  objc_msgSend_clear(self, v8, v9, v10);
  if (self->_encoder)
  {
    v12 = !v4;
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

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7
{
  v10 = a4;
  objc_msgSend_applyChangedStates(self, a2, a3, a4);
  objc_msgSend_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_(self->_encoder, v13, a3, v10, a5, a6, a7);
  impl = self->_counters.storage.impl;
  if (!impl)
  {
    return;
  }

  vfx_counters_update(impl, self->_counters.drawCount, 1.0);
  v15 = self->_counters.storage.impl;
  primitiveCount = self->_counters.primitiveCount;
  if (a3 <= 1)
  {
    if (!a3)
    {
      goto LABEL_14;
    }

    if (a3 == 1)
    {
      v10 >>= 1;
      goto LABEL_14;
    }

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  if (a3 == 2)
  {
    --v10;
    goto LABEL_14;
  }

  if (a3 == 3)
  {
    v10 /= 3uLL;
    goto LABEL_14;
  }

  if (a3 != 4)
  {
    goto LABEL_13;
  }

  v10 -= 2;
LABEL_14:

  vfx_counters_update(v15, primitiveCount, v10);
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8
{
  v12 = a4;
  objc_msgSend_applyChangedStates(self, a2, a3, a4);
  objc_msgSend_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_(self->_encoder, v15, a3, v12, a5, a6, a7, a8);
  impl = self->_counters.storage.impl;
  if (!impl)
  {
    return;
  }

  vfx_counters_update(impl, self->_counters.drawCount, 1.0);
  v17 = self->_counters.storage.impl;
  primitiveCount = self->_counters.primitiveCount;
  if (a3 <= 1)
  {
    if (!a3)
    {
      goto LABEL_14;
    }

    if (a3 == 1)
    {
      v12 >>= 1;
      goto LABEL_14;
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  if (a3 == 2)
  {
    --v12;
    goto LABEL_14;
  }

  if (a3 == 3)
  {
    v12 /= 3uLL;
    goto LABEL_14;
  }

  if (a3 != 4)
  {
    goto LABEL_13;
  }

  v12 -= 2;
LABEL_14:

  vfx_counters_update(v17, primitiveCount, (v12 * a8));
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10
{
  v14 = a4;
  objc_msgSend_applyChangedStates(self, a2, a3, a4);
  if (v14)
  {
    encoder = self->_encoder;
    if (a9 <= 0 && a10 == 0)
    {
      objc_msgSend_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_(encoder, v17, a3, v14, a5, a6, a7, a8);
    }

    else
    {
      objc_msgSend_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_baseVertex_baseInstance_(encoder, v17, a3, v14, a5, a6, a7, a8, a9, a10);
    }
  }

  impl = self->_counters.storage.impl;
  if (impl)
  {
    vfx_counters_update(impl, self->_counters.drawCount, 1.0);
    v21 = self->_counters.storage.impl;
    primitiveCount = self->_counters.primitiveCount;
    if (a3 <= 1)
    {
      if (!a3)
      {
        goto LABEL_21;
      }

      if (a3 == 1)
      {
        v14 >>= 1;
        goto LABEL_21;
      }
    }

    else
    {
      switch(a3)
      {
        case 2uLL:
          --v14;
          goto LABEL_21;
        case 3uLL:
          v14 /= 3uLL;
          goto LABEL_21;
        case 4uLL:
          v14 -= 2;
LABEL_21:

          vfx_counters_update(v21, primitiveCount, (v14 * a8));
          return;
      }
    }

    v14 = 0;
    goto LABEL_21;
  }
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(id)a5 indexBufferOffset:(unint64_t)a6 indirectBuffer:(id)a7 indirectBufferOffset:(unint64_t)a8
{
  objc_msgSend_applyChangedStates(self, a2, a3, a4);
  objc_msgSend_drawIndexedPrimitives_indexType_indexBuffer_indexBufferOffset_indirectBuffer_indirectBufferOffset_(self->_encoder, v15, a3, a4, a5, a6, a7, a8);
  impl = self->_counters.storage.impl;
  if (impl)
  {
    vfx_counters_update(impl, self->_counters.drawCount, 1.0);
    v17 = self->_counters.storage.impl;
    indirectDrawCount = self->_counters.indirectDrawCount;

    vfx_counters_update(v17, indirectDrawCount, 1.0);
  }
}

- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5
{
  objc_msgSend_applyChangedStates(self, a2, a3, a4);
  objc_msgSend_drawPrimitives_indirectBuffer_indirectBufferOffset_(self->_encoder, v9, a3, a4, a5);
  impl = self->_counters.storage.impl;
  if (impl)
  {
    vfx_counters_update(impl, self->_counters.drawCount, 1.0);
    v11 = self->_counters.storage.impl;
    indirectDrawCount = self->_counters.indirectDrawCount;

    vfx_counters_update(v11, indirectDrawCount, 1.0);
  }
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5
{
  objc_msgSend_applyChangedStates(self, a2, a3, a4);
  objc_msgSend_drawPrimitives_vertexStart_vertexCount_(self->_encoder, v9, a3, a4, a5);
  impl = self->_counters.storage.impl;
  if (!impl)
  {
    return;
  }

  vfx_counters_update(impl, self->_counters.drawCount, 1.0);
  v11 = self->_counters.storage.impl;
  primitiveCount = self->_counters.primitiveCount;
  if (a3 <= 1)
  {
    if (!a3)
    {
      goto LABEL_14;
    }

    if (a3 == 1)
    {
      a5 >>= 1;
      goto LABEL_14;
    }

LABEL_13:
    a5 = 0;
    goto LABEL_14;
  }

  if (a3 == 2)
  {
    --a5;
    goto LABEL_14;
  }

  if (a3 == 3)
  {
    a5 /= 3uLL;
    goto LABEL_14;
  }

  if (a3 != 4)
  {
    goto LABEL_13;
  }

  a5 -= 2;
LABEL_14:

  vfx_counters_update(v11, primitiveCount, a5);
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6
{
  objc_msgSend_applyChangedStates(self, a2, a3, a4);
  objc_msgSend_drawPrimitives_vertexStart_vertexCount_instanceCount_(self->_encoder, v11, a3, a4, a5, a6);
  impl = self->_counters.storage.impl;
  if (!impl)
  {
    return;
  }

  vfx_counters_update(impl, self->_counters.drawCount, 1.0);
  v13 = self->_counters.storage.impl;
  primitiveCount = self->_counters.primitiveCount;
  if (a3 <= 1)
  {
    if (!a3)
    {
      goto LABEL_14;
    }

    if (a3 == 1)
    {
      a5 >>= 1;
      goto LABEL_14;
    }

LABEL_13:
    a5 = 0;
    goto LABEL_14;
  }

  if (a3 == 2)
  {
    --a5;
    goto LABEL_14;
  }

  if (a3 == 3)
  {
    a5 /= 3uLL;
    goto LABEL_14;
  }

  if (a3 != 4)
  {
    goto LABEL_13;
  }

  a5 -= 2;
LABEL_14:

  vfx_counters_update(v13, primitiveCount, (a5 * a6));
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7
{
  objc_msgSend_applyChangedStates(self, a2, a3, a4);
  encoder = self->_encoder;
  if (a7)
  {
    objc_msgSend_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance_(encoder, v13, a3, a4, a5, a6, a7);
  }

  else
  {
    objc_msgSend_drawPrimitives_vertexStart_vertexCount_instanceCount_(encoder, v13, a3, a4, a5, a6);
  }

  impl = self->_counters.storage.impl;
  if (!impl)
  {
    return;
  }

  vfx_counters_update(impl, self->_counters.drawCount, 1.0);
  v16 = self->_counters.storage.impl;
  primitiveCount = self->_counters.primitiveCount;
  if (a3 <= 1)
  {
    if (!a3)
    {
      goto LABEL_17;
    }

    if (a3 == 1)
    {
      a5 >>= 1;
      goto LABEL_17;
    }

LABEL_16:
    a5 = 0;
    goto LABEL_17;
  }

  if (a3 == 2)
  {
    --a5;
    goto LABEL_17;
  }

  if (a3 == 3)
  {
    a5 /= 3uLL;
    goto LABEL_17;
  }

  if (a3 != 4)
  {
    goto LABEL_16;
  }

  a5 -= 2;
LABEL_17:

  vfx_counters_update(v16, primitiveCount, (a5 * a6));
}

- (void)drawIndexedPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 controlPointIndexBuffer:(id)a6 controlPointIndexBufferOffset:(unint64_t)a7 indirectBuffer:(id)a8 indirectBufferOffset:(unint64_t)a9
{
  objc_msgSend_applyChangedStates(self, a2, a3, a4);
  objc_msgSend_drawIndexedPatches_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_indirectBuffer_indirectBufferOffset_(self->_encoder, v16, a3, a4, a5, a6, a7, a8, a9);
  impl = self->_counters.storage.impl;
  if (impl)
  {
    vfx_counters_update(impl, self->_counters.drawCount, 1.0);
    v18 = self->_counters.storage.impl;
    indirectDrawCount = self->_counters.indirectDrawCount;

    vfx_counters_update(v18, indirectDrawCount, 1.0);
  }
}

- (void)drawIndexedPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 controlPointIndexBuffer:(id)a8 controlPointIndexBufferOffset:(unint64_t)a9 instanceCount:(unint64_t)a10 baseInstance:(unint64_t)a11
{
  objc_msgSend_applyChangedStates(self, a2, a3, a4);
  objc_msgSend_drawIndexedPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_instanceCount_baseInstance_(self->_encoder, v18, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  impl = self->_counters.storage.impl;
  if (impl)
  {
    drawCount = self->_counters.drawCount;

    vfx_counters_update(impl, drawCount, 1.0);
  }
}

- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  objc_msgSend_applyChangedStates(self, a2, a3, a4);
  encoder = self->_encoder;
  v14 = *a3;
  v13 = *a4;
  v12 = *a5;
  objc_msgSend_drawMeshThreadgroups_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup_(encoder, v10, &v14, &v13, &v12);
  impl = self->_counters.storage.impl;
  if (impl)
  {
    vfx_counters_update(impl, self->_counters.drawCount, 1.0);
  }
}

- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerObjectThreadgroup:(id *)a5 threadsPerMeshThreadgroup:(id *)a6
{
  objc_msgSend_applyChangedStates(self, a2, a3, a4);
  encoder = self->_encoder;
  v15 = *a5;
  v14 = *a6;
  objc_msgSend_drawMeshThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup_(encoder, v12, a3, a4, &v15, &v14);
  impl = self->_counters.storage.impl;
  if (impl)
  {
    vfx_counters_update(impl, self->_counters.drawCount, 1.0);
    vfx_counters_update(self->_counters.storage.impl, self->_counters.indirectDrawCount, 1.0);
  }
}

- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  objc_msgSend_applyChangedStates(self, a2, a3, a4);
  encoder = self->_encoder;
  v14 = *a3;
  v13 = *a4;
  v12 = *a5;
  objc_msgSend_drawMeshThreads_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup_(encoder, v10, &v14, &v13, &v12);
  impl = self->_counters.storage.impl;
  if (impl)
  {
    vfx_counters_update(impl, self->_counters.drawCount, 1.0);
  }
}

- (void)drawPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 indirectBuffer:(id)a6 indirectBufferOffset:(unint64_t)a7
{
  objc_msgSend_applyChangedStates(self, a2, a3, a4);
  objc_msgSend_drawPatches_patchIndexBuffer_patchIndexBufferOffset_indirectBuffer_indirectBufferOffset_(self->_encoder, v13, a3, a4, a5, a6, a7);
  impl = self->_counters.storage.impl;
  if (impl)
  {
    vfx_counters_update(impl, self->_counters.drawCount, 1.0);
    v15 = self->_counters.storage.impl;
    indirectDrawCount = self->_counters.indirectDrawCount;

    vfx_counters_update(v15, indirectDrawCount, 1.0);
  }
}

- (void)drawPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseInstance:(unint64_t)a9
{
  objc_msgSend_applyChangedStates(self, a2, a3, a4);
  objc_msgSend_drawPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_instanceCount_baseInstance_(self->_encoder, v16, a3, a4, a5, a6, a7, a8, a9);
  impl = self->_counters.storage.impl;
  if (impl)
  {
    drawCount = self->_counters.drawCount;

    vfx_counters_update(impl, drawCount, 1.0);
  }
}

- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6
{
  v8.f32[0] = a3;
  v8.f32[1] = a4;
  v8.i64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
  if ((vmaxvq_u32(vmvnq_s8(vceqq_f32(*&self->_cache.material, v8))) & 0x80000000) != 0)
  {
    *&self->_cache.material = v8;
    objc_msgSend_setBlendColorRed_green_blue_alpha_(self->_encoder, a2, v6, v7);
  }
}

- (void)setCullMode:(unint64_t)a3
{
  isa = self[22].super.isa;
  if ((isa & 0x20) == 0 && self->_cache.meshElement != a3)
  {
    self->_cache.meshElement = a3;
    LOWORD(self[22].super.isa) = isa | 4;
  }
}

- (void)setDepthClipMode:(unint64_t)a3
{
  if (self->_cache.program != a3)
  {
    self->_cache.program = a3;
    LOWORD(self[22].super.isa) |= 0x10u;
  }
}

- (void)setDepthStencilState:(id)a3
{
  if (self->_cache.rasterizerStates != a3)
  {
    self->_cache.rasterizerStates = a3;
    objc_msgSend_setDepthStencilState_(self->_encoder, a2, a3, v3);
  }
}

- (void)setFrontFacingWinding:(unint64_t)a3
{
  if (self->_cache.metalMesh != a3)
  {
    self->_cache.metalMesh = a3;
    LOWORD(self[22].super.isa) |= 2u;
  }
}

- (void)setRenderPipelineState:(id)a3
{
  if (self->_cache.geometry != a3)
  {
    self->_cache.geometry = a3;
    objc_msgSend_setRenderPipelineState_(self->_encoder, a2, a3, v3);
  }
}

- (void)setVertexBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v5 = self + 16 * a5;
  *(v5 + 113) = 0;
  *(v5 + 112) = 0;
  objc_msgSend_setVertexBytes_length_atIndex_(self->_encoder, a2, a3, a4);
}

- (void)setScissorRect:(id *)a3
{
  encoder = self->_encoder;
  v5 = *&a3->var2;
  v6[0] = *&a3->var0;
  v6[1] = v5;
  objc_msgSend_setScissorRect_(encoder, a2, v6, v3);
}

- (void)setStencilFrontReferenceValue:(unsigned int)a3 backReferenceValue:(unsigned int)a4
{
  if (LODWORD(self->_cache.metalShadable) != a3 || HIDWORD(self->_cache.metalShadable) != a4)
  {
    LODWORD(self->_cache.metalShadable) = a3;
    HIDWORD(self->_cache.metalShadable) = a4;
    objc_msgSend_setStencilFrontReferenceValue_backReferenceValue_(self->_encoder, a2, *&a3, *&a4);
  }
}

- (void)setStencilReferenceValue:(unsigned int)a3
{
  if (LODWORD(self->_cache.metalShadable) != a3 || HIDWORD(self->_cache.metalShadable) != a3)
  {
    LODWORD(self->_cache.metalShadable) = a3;
    HIDWORD(self->_cache.metalShadable) = a3;
    (MEMORY[0x1EEE66B58])(self->_encoder, sel_setStencilReferenceValue_, *&a3);
  }
}

- (void)setTriangleFillMode:(unint64_t)a3
{
  isa = self[22].super.isa;
  if ((isa & 0x40) == 0 && self->_cache.metalMeshElement != a3)
  {
    self->_cache.metalMeshElement = a3;
    LOWORD(self[22].super.isa) = isa | 8;
  }
}

- (void)setFragmentBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v5 = (&self[13]._cache.rasterizerStates + 2 * a5);
  if (*v5 == a3)
  {
    if (*(&self[13]._cache.geometry + 2 * a5) != a4)
    {
      *(&self[13]._cache.geometry + 2 * a5) = a4;
      MEMORY[0x1EEE66B58](self->_encoder, sel_setFragmentBufferOffset_atIndex_, a4, a5);
    }
  }

  else
  {
    *v5 = a3;
    *(&self[13]._cache.geometry + 2 * a5) = a4;
    objc_msgSend_setFragmentBuffer_offset_atIndex_(self->_encoder, a2, a3, a4);
  }
}

- (void)setFragmentBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v4 = self + 16 * a4;
  if (*(v4 + 319) != a3)
  {
    *(v4 + 319) = a3;
    MEMORY[0x1EEE66B58](self->_encoder, sel_setFragmentBufferOffset_atIndex_, a3, a4);
  }
}

- (void)setFragmentBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  if (a5.length)
  {
    v5 = &self[13]._cache.geometry + 2 * a5.location;
    v6 = a3;
    v7 = a4;
    length = a5.length;
    do
    {
      v10 = *v6++;
      v9 = v10;
      v11 = *v7++;
      *(v5 - 1) = v9;
      *v5 = v11;
      v5 += 2;
      --length;
    }

    while (length);
  }

  MEMORY[0x1EEE66B58](self->_encoder, sel_setFragmentBuffers_offsets_withRange_, a3, a4);
}

- (void)setFragmentBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v5 = self + 16 * a5;
  *(v5 + 319) = 0;
  *(v5 + 318) = 0;
  objc_msgSend_setFragmentBytes_length_atIndex_(self->_encoder, a2, a3, a4);
}

- (void)setFragmentSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  if (*(&self[21]._counters.primitiveCount + a4) != a3)
  {
    *(&self[21]._counters.primitiveCount + a4) = a3;
    objc_msgSend_setFragmentSamplerState_atIndex_(self->_encoder, a2, a3, a4);
  }
}

- (void)setFragmentSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  if (a6.length)
  {
    v6 = &self[21]._counters.primitiveCount + 2 * a6.location;
    v7 = a3;
    length = a6.length;
    do
    {
      v9 = *v7++;
      *v6 = v9;
      v6 += 2;
      --length;
    }

    while (length);
  }

  MEMORY[0x1EEE66B58](self->_encoder, sel_setFragmentSamplerStates_lodMinClamps_lodMaxClamps_withRange_, a3, a4);
}

- (void)setFragmentSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    v4 = &self[21]._counters.primitiveCount + 2 * a4.location;
    v5 = a3;
    length = a4.length;
    do
    {
      v7 = *v5++;
      *v4 = v7;
      v4 += 2;
      --length;
    }

    while (length);
  }

  MEMORY[0x1EEE66B58](self->_encoder, sel_setFragmentSamplerStates_withRange_, a3, a4.location);
}

- (void)setFragmentTexture:(id)a3 atIndex:(unint64_t)a4
{
  if (*(&self[15]._cache.deformerStack + a4) != a3)
  {
    *(&self[15]._cache.deformerStack + a4) = a3;
    isa = self[22].super.isa;
    if (isa)
    {
      LOWORD(self[22].super.isa) = isa | 0x100;
      *(&self[21]._cache.tessellationPipelineStateHash + (a4 >> 6)) |= 1 << a4;
    }

    else
    {
      objc_msgSend_setFragmentTexture_atIndex_(self->_encoder, a2, a3, a4);
    }
  }
}

- (void)setFragmentTextures:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    v4 = &self[15]._cache.deformerStack + a4.location;
    v5 = a3;
    length = a4.length;
    do
    {
      v7 = *v5++;
      *v4++ = v7;
      --length;
    }

    while (length);
  }

  objc_msgSend_setFragmentTextures_withRange_(self->_encoder, a2, a3, a4.location);
}

- (void)setFragmentTexture:(id)a3 atTextureIndex:(unint64_t)a4 samplerState:(id)a5 atSamplerIndex:(unint64_t)a6
{
  v6 = &self->super.isa + a6;
  if (*(&self[15]._cache.deformerStack + a4) != a3 || v6[508] != a5)
  {
    *(&self[15]._cache.deformerStack + a4) = a3;
    v6[508] = a5;
    objc_msgSend_setFragmentTexture_atTextureIndex_samplerState_atSamplerIndex_(self->_encoder, a2, a3, a4);
  }
}

- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v5 = (&self[4]._cache.blendStates + 2 * a5);
  if (*v5 == a3)
  {
    if (*(&self[4]._cache.colorBufferWriteMask + 2 * a5) != a4)
    {
      *(&self[4]._cache.colorBufferWriteMask + 2 * a5) = a4;
      objc_msgSend_setVertexBufferOffset_atIndex_(self->_encoder, a2, a4, a5);
    }
  }

  else
  {
    *v5 = a3;
    *(&self[4]._cache.colorBufferWriteMask + 2 * a5) = a4;
    objc_msgSend_setVertexBuffer_offset_atIndex_(self->_encoder, a2, a3, a4);
  }
}

- (void)setVertexBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v4 = self + 16 * a4;
  if (*(v4 + 113) != a3)
  {
    *(v4 + 113) = a3;
    objc_msgSend_setVertexBufferOffset_atIndex_(self->_encoder, a2, a3, a4);
  }
}

- (void)setVertexBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  if (a5.length)
  {
    length = a5.length;
    location = a5.location;
    v10 = 0;
    v11 = 0;
    for (i = (&self[4]._cache.colorBufferWriteMask + 16 * a5.location); ; i += 2)
    {
      v13 = a3[v11];
      if (*(i - 1) != v13)
      {
        break;
      }

      v14 = a4[v11];
      if (*i != v14)
      {
        *i = v14;
        objc_msgSend_setVertexBufferOffset_atIndex_(self->_encoder, a2, a4[v11], location + v11);
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
        v16 = a4[v11];
        *(i - 1) = v13;
        *i = v16;
        encoder = self->_encoder;
        v18 = a3[v11];
        v19 = a4[v11];

        objc_msgSend_setVertexBuffer_offset_atIndex_(encoder, a2, v18, v19, location + v11);
      }

      else
      {
        v20 = &a3[v10 / 0xFFFFFFFFFFFFFFF8];
        v21 = &a4[v10 / 0xFFFFFFFFFFFFFFF8];
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

- (void)setVertexSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  if (*(&self[12]._cache.metalShadable + a4) != a3)
  {
    *(&self[12]._cache.metalShadable + a4) = a3;
    objc_msgSend_setVertexSamplerState_atIndex_(self->_encoder, a2, a3, a4);
  }
}

- (void)setVertexSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  if (a6.length)
  {
    v6 = &self[12]._cache.metalShadable + a6.location;
    v7 = a3;
    length = a6.length;
    do
    {
      v9 = *v7++;
      *v6++ = v9;
      --length;
    }

    while (length);
  }

  MEMORY[0x1EEE66B58](self->_encoder, sel_setVertexSamplerStates_lodMinClamps_lodMaxClamps_withRange_, a3, a4);
}

- (void)setVertexSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    v4 = &self[12]._cache.metalShadable + a4.location;
    v5 = a3;
    length = a4.length;
    do
    {
      v7 = *v5++;
      *v4++ = v7;
      --length;
    }

    while (length);
  }

  MEMORY[0x1EEE66B58](self->_encoder, sel_setVertexSamplerStates_withRange_, a3, a4.location);
}

- (void)setVertexTexture:(id)a3 atIndex:(unint64_t)a4
{
  if (*(&self[7]._cache.rasterizerStates + a4) != a3)
  {
    *(&self[7]._cache.rasterizerStates + a4) = a3;
    isa = self[22].super.isa;
    if (isa)
    {
      LOWORD(self[22].super.isa) = isa | 0x100;
      *(&self[21]._cache.deformerStack + (a4 >> 6)) |= 1 << a4;
    }

    else
    {
      objc_msgSend_setVertexTexture_atIndex_(self->_encoder, a2, a3, a4);
    }
  }
}

- (void)setVertexTextures:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    v4 = &self[7]._cache.rasterizerStates + a4.location;
    v5 = a3;
    length = a4.length;
    do
    {
      v7 = *v5++;
      *v4++ = v7;
      --length;
    }

    while (length);
  }

  objc_msgSend_setVertexTextures_withRange_(self->_encoder, a2, a3, a4.location);
}

- (void)setViewport:(id *)a3
{
  if (self[4]._cache.commonProfile != 1 || memcmp(&self->_cache.commonProfile, a3, 0x30uLL))
  {
    v5 = *&a3->var0;
    v6 = *&a3->var2;
    *&self->_cache.pointOfView = *&a3->var4;
    *&self->_cache.colorBufferWriteMask = v6;
    *&self->_cache.commonProfile = v5;
    self[4]._cache.commonProfile = 1;
    LOWORD(self[22].super.isa) |= 0x80u;
  }
}

- (void)setViewports:(id *)a3 count:(unint64_t)a4
{
  if (self[4]._cache.commonProfile != a4)
  {
    v7 = 48 * a4;
    goto LABEL_5;
  }

  v7 = 48 * a4;
  if (memcmp(&self->_cache.commonProfile, a3, 48 * a4))
  {
LABEL_5:
    memcpy(&self->_cache.commonProfile, a3, v7);
    self[4]._cache.commonProfile = a4;
    LOWORD(self[22].super.isa) |= 0x80u;
  }
}

- (void)dispatchThreadsPerTile:(id *)a3
{
  objc_msgSend_applyChangedStates(self, a2, a3, v3);
  encoder = self->_encoder;
  v9 = *a3;
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

- (void)setLockCullMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self[22].super.isa) = self[22].super.isa & 0xFFDF | v3;
}

- (void)setLockFillMode:(BOOL)a3
{
  if (a3)
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