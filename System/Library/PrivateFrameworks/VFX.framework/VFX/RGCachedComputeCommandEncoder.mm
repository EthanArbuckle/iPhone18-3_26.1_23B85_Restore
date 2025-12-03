@interface RGCachedComputeCommandEncoder
- (RGCachedComputeCommandEncoder)init;
- (void)beginEncodingWithCommandBuffer:(id)buffer label:(id)label;
- (void)dealloc;
- (void)dispatch:(id)dispatch onTexture2D:(id)d;
- (void)dispatch:(id)dispatch threadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatch:(id)dispatch threadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchOnGrid2D:(id *)d;
- (void)dispatchOnGrid3D:(id *)d;
- (void)dispatchOnTexture2D:(id)d;
- (void)dispatchOnTexture2DWithoutOptimizedThreadGroupPerGrid:(id)grid;
- (void)dispatchOnTexture3D:(id)d;
- (void)dispatchOnTextureCube:(id)cube;
- (void)dispatchOnVertices:(id)vertices vertexCount:(unsigned int)count;
- (void)dispatchOne:(id)one;
- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup;
- (void)endEncoding;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBufferSlice:(id)slice atIndex:(unint64_t)index;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setComputePipelineState:(id)state;
- (void)setEncoder:(id)encoder;
- (void)setSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setStageInRegion:(id *)region;
- (void)setTexture:(id)texture atIndex:(unint64_t)index;
- (void)setTextures:(const void *)textures withRange:(_NSRange)range;
@end

@implementation RGCachedComputeCommandEncoder

- (RGCachedComputeCommandEncoder)init
{
  v3.receiver = self;
  v3.super_class = RGCachedComputeCommandEncoder;
  return [(RGCachedComputeCommandEncoder *)&v3 init];
}

- (void)dealloc
{
  objc_msgSend_setEncoder_(self, a2, 0, v2);
  v4.receiver = self;
  v4.super_class = RGCachedComputeCommandEncoder;
  [(RGCachedComputeCommandEncoder *)&v4 dealloc];
}

- (void)beginEncodingWithCommandBuffer:(id)buffer label:(id)label
{
  v6 = objc_msgSend_computeCommandEncoder(buffer, a2, buffer, label);
  objc_msgSend_setEncoder_(self, v7, v6, v8);
  encoder = self->_encoder;

  objc_msgSend_setLabel_(encoder, v9, label, v10);
}

- (void)setEncoder:(id)encoder
{
  encoderCopy = encoder;

  self->_encoder = encoder;

  objc_msgSend_resetCache(self, v6, v7, v8);
}

- (void)endEncoding
{
  objc_msgSend_endEncoding(self->_encoder, a2, v2, v3);

  objc_msgSend_setEncoder_(self, v5, 0, v6);
}

- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup
{
  encoder = self->_encoder;
  v6 = *threadgroups;
  v5 = *threadgroup;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, a2, &v6, &v5);
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup
{
  encoder = self->_encoder;
  v6 = *threadgroup;
  objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(encoder, a2, buffer, offset, &v6);
}

- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup
{
  encoder = self->_encoder;
  v6 = *threads;
  v5 = *threadgroup;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(encoder, a2, &v6, &v5);
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  if (*(&self->_cache.geometry + index) == buffer)
  {
    if (*(&self[1]._cache.node + index) != offset)
    {
      *(&self[1]._cache.node + index) = offset;
      objc_msgSend_setBufferOffset_atIndex_(self->_encoder, a2, offset, index);
    }
  }

  else
  {
    *(&self->_cache.geometry + index) = buffer;
    *(&self[1]._cache.node + index) = offset;
    objc_msgSend_setBuffer_offset_atIndex_(self->_encoder, a2, buffer, offset);
  }
}

- (void)setBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  if (*(&self[1]._cache.node + index) != offset)
  {
    *(&self[1]._cache.node + index) = offset;
    objc_msgSend_setBufferOffset_atIndex_(self->_encoder, a2, offset, index);
  }
}

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v11 = *buffers++;
      v10 = v11;
      v12 = *offsets++;
      objc_msgSend_setBuffer_offset_atIndex_(self, a2, v10, v12, location++);
      --length;
    }

    while (length);
  }
}

- (void)setBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  v5 = &self->super.isa + index;
  v5[3] = 0;
  v5[34] = 0;
  objc_msgSend_setBytes_length_atIndex_(self->_encoder, a2, bytes, length);
}

- (void)setBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  v6 = &self->super.isa + index;
  v6[3] = 0;
  v6[34] = 0;
  MEMORY[0x1EEE66B58](self->_encoder, sel_setBytes_length_attributeStride_atIndex_, bytes, length);
}

- (void)setComputePipelineState:(id)state
{
  if (self->_cache.rasterizerStates != state)
  {
    self->_cache.rasterizerStates = state;
    objc_msgSend_setComputePipelineState_(self->_encoder, a2, state, v3);
  }
}

- (void)setSamplerState:(id)state atIndex:(unint64_t)index
{
  if (*(&self[9]._cache.colorBufferWriteMask + index) != state)
  {
    *(&self[9]._cache.colorBufferWriteMask + index) = state;
    objc_msgSend_setSamplerState_atIndex_(self->_encoder, a2, state, index);
  }
}

- (void)setSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  memcpy(&self[9]._cache.colorBufferWriteMask + 8 * range.location, states, 8 * range.length);
  encoder = self->_encoder;

  MEMORY[0x1EEE66B58](encoder, sel_setSamplerStates_lodMinClamps_lodMaxClamps_withRange_, states, clamps);
}

- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  memcpy(&self[9]._cache.colorBufferWriteMask + 8 * range.location, states, 8 * range.length);
  encoder = self->_encoder;

  objc_msgSend_setSamplerStates_withRange_(encoder, v8, states, location, length);
}

- (void)setStageInRegion:(id *)region
{
  encoder = self->_encoder;
  v5 = *&region->var0.var2;
  v6[0] = *&region->var0.var0;
  v6[1] = v5;
  v6[2] = *&region->var1.var1;
  objc_msgSend_setStageInRegion_(encoder, a2, v6, v3);
}

- (void)setTexture:(id)texture atIndex:(unint64_t)index
{
  if (*(&self[3]._cache.meshElement + index) != texture)
  {
    *(&self[3]._cache.meshElement + index) = texture;
    objc_msgSend_setTexture_atIndex_(self->_encoder, a2, texture, index);
  }
}

- (void)setTextures:(const void *)textures withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    for (i = 0; i != length; ++i)
    {
      objc_msgSend_setTexture_atIndex_(self, a2, textures[i], i);
    }
  }
}

- (void)dispatch:(id)dispatch threadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup
{
  objc_msgSend_setComputePipelineState_(self, a2, dispatch, threadgroups);
  v10 = *threadgroups;
  v9 = *threadgroup;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(self, v8, &v10, &v9);
}

- (void)dispatch:(id)dispatch threadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup
{
  objc_msgSend_setComputePipelineState_(self, a2, dispatch, buffer);
  v11 = *threadgroup;
  objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(self, v10, buffer, offset, &v11);
}

- (void)dispatchOne:(id)one
{
  objc_msgSend_setComputePipelineState_(self, a2, one, v3);
  v8 = vdupq_n_s64(1uLL);
  v9 = 1;
  v6 = v8;
  v7 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(self, v5, &v8, &v6);
}

- (void)dispatchOnVertices:(id)vertices vertexCount:(unsigned int)count
{
  objc_msgSend_setComputePipelineState_(self, a2, vertices, *&count);
  encoder = self->_encoder;

  RGMTLComputeCommandEncoderDispatchOnGrid1D(encoder, vertices, count, v7);
}

- (void)dispatch:(id)dispatch onTexture2D:(id)d
{
  v7 = objc_msgSend_width(d, a2, dispatch, d);
  v11 = objc_msgSend_height(d, v8, v9, v10);
  objc_msgSend_setComputePipelineState_(self, v12, dispatch, v13);
  encoder = self->_encoder;
  v15[0] = v7;
  v15[1] = v11;
  v15[2] = 1;
  RGMTLComputeCommandEncoderDispatchOnGrid2D(encoder, dispatch, v15, 1);
}

- (void)dispatchOnGrid2D:(id *)d
{
  encoder = self->_encoder;
  rasterizerStates = self->_cache.rasterizerStates;
  v5 = *d;
  RGMTLComputeCommandEncoderDispatchOnGrid2D(encoder, rasterizerStates, &v5, 1);
}

- (void)dispatchOnGrid3D:(id *)d
{
  encoder = self->_encoder;
  rasterizerStates = self->_cache.rasterizerStates;
  v6 = *d;
  RGMTLComputeCommandEncoderDispatchOnGrid3D(encoder, rasterizerStates, &v6, v3);
}

- (void)dispatchOnTexture2D:(id)d
{
  v6 = objc_msgSend_width(d, a2, d, v3);
  v10 = objc_msgSend_height(d, v7, v8, v9);
  encoder = self->_encoder;
  rasterizerStates = self->_cache.rasterizerStates;
  v13[0] = v6;
  v13[1] = v10;
  v13[2] = 1;
  RGMTLComputeCommandEncoderDispatchOnGrid2D(encoder, rasterizerStates, v13, 1);
}

- (void)dispatchOnTexture2DWithoutOptimizedThreadGroupPerGrid:(id)grid
{
  v6 = objc_msgSend_width(grid, a2, grid, v3);
  v10 = objc_msgSend_height(grid, v7, v8, v9);
  encoder = self->_encoder;
  rasterizerStates = self->_cache.rasterizerStates;
  v13[0] = v6;
  v13[1] = v10;
  v13[2] = 1;
  RGMTLComputeCommandEncoderDispatchOnGrid2D(encoder, rasterizerStates, v13, 0);
}

- (void)dispatchOnTexture3D:(id)d
{
  v6 = objc_msgSend_width(d, a2, d, v3);
  v10 = objc_msgSend_height(d, v7, v8, v9);
  v14 = objc_msgSend_depth(d, v11, v12, v13);
  encoder = self->_encoder;
  rasterizerStates = self->_cache.rasterizerStates;
  v18[0] = v6;
  v18[1] = v10;
  v18[2] = v14;
  RGMTLComputeCommandEncoderDispatchOnGrid3D(encoder, rasterizerStates, v18, v17);
}

- (void)dispatchOnTextureCube:(id)cube
{
  v6 = objc_msgSend_width(cube, a2, cube, v3);
  v10 = objc_msgSend_height(cube, v7, v8, v9);
  encoder = self->_encoder;
  rasterizerStates = self->_cache.rasterizerStates;
  v14[0] = v6;
  v14[1] = v10;
  v14[2] = 6;
  RGMTLComputeCommandEncoderDispatchOnGrid3D(encoder, rasterizerStates, v14, v13);
}

- (void)setBufferSlice:(id)slice atIndex:(unint64_t)index
{
  var1 = slice.var1;
  MTLBuffer = CFXBufferSliceGetMTLBuffer(slice.var0, *&slice.var1);

  objc_msgSend_setBuffer_offset_atIndex_(self, v7, MTLBuffer, var1, index);
}

@end