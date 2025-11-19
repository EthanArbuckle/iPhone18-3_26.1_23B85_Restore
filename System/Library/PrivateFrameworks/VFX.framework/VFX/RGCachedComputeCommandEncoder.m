@interface RGCachedComputeCommandEncoder
- (RGCachedComputeCommandEncoder)init;
- (void)beginEncodingWithCommandBuffer:(id)a3 label:(id)a4;
- (void)dealloc;
- (void)dispatch:(id)a3 onTexture2D:(id)a4;
- (void)dispatch:(id)a3 threadgroups:(id *)a4 threadsPerThreadgroup:(id *)a5;
- (void)dispatch:(id)a3 threadgroupsWithIndirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5 threadsPerThreadgroup:(id *)a6;
- (void)dispatchOnGrid2D:(id *)a3;
- (void)dispatchOnGrid3D:(id *)a3;
- (void)dispatchOnTexture2D:(id)a3;
- (void)dispatchOnTexture2DWithoutOptimizedThreadGroupPerGrid:(id)a3;
- (void)dispatchOnTexture3D:(id)a3;
- (void)dispatchOnTextureCube:(id)a3;
- (void)dispatchOnVertices:(id)a3 vertexCount:(unsigned int)a4;
- (void)dispatchOne:(id)a3;
- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)dispatchThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerThreadgroup:(id *)a5;
- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4;
- (void)endEncoding;
- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setBufferSlice:(id)a3 atIndex:(unint64_t)a4;
- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setBytes:(const void *)a3 length:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setComputePipelineState:(id)a3;
- (void)setEncoder:(id)a3;
- (void)setSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setStageInRegion:(id *)a3;
- (void)setTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setTextures:(const void *)a3 withRange:(_NSRange)a4;
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

- (void)beginEncodingWithCommandBuffer:(id)a3 label:(id)a4
{
  v6 = objc_msgSend_computeCommandEncoder(a3, a2, a3, a4);
  objc_msgSend_setEncoder_(self, v7, v6, v8);
  encoder = self->_encoder;

  objc_msgSend_setLabel_(encoder, v9, a4, v10);
}

- (void)setEncoder:(id)a3
{
  v5 = a3;

  self->_encoder = a3;

  objc_msgSend_resetCache(self, v6, v7, v8);
}

- (void)endEncoding
{
  objc_msgSend_endEncoding(self->_encoder, a2, v2, v3);

  objc_msgSend_setEncoder_(self, v5, 0, v6);
}

- (void)dispatchThreadgroups:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  encoder = self->_encoder;
  v6 = *a3;
  v5 = *a4;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, a2, &v6, &v5);
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerThreadgroup:(id *)a5
{
  encoder = self->_encoder;
  v6 = *a5;
  objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(encoder, a2, a3, a4, &v6);
}

- (void)dispatchThreads:(id *)a3 threadsPerThreadgroup:(id *)a4
{
  encoder = self->_encoder;
  v6 = *a3;
  v5 = *a4;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(encoder, a2, &v6, &v5);
}

- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  if (*(&self->_cache.geometry + a5) == a3)
  {
    if (*(&self[1]._cache.node + a5) != a4)
    {
      *(&self[1]._cache.node + a5) = a4;
      objc_msgSend_setBufferOffset_atIndex_(self->_encoder, a2, a4, a5);
    }
  }

  else
  {
    *(&self->_cache.geometry + a5) = a3;
    *(&self[1]._cache.node + a5) = a4;
    objc_msgSend_setBuffer_offset_atIndex_(self->_encoder, a2, a3, a4);
  }
}

- (void)setBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
{
  if (*(&self[1]._cache.node + a4) != a3)
  {
    *(&self[1]._cache.node + a4) = a3;
    objc_msgSend_setBufferOffset_atIndex_(self->_encoder, a2, a3, a4);
  }
}

- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  if (a5.length)
  {
    length = a5.length;
    location = a5.location;
    do
    {
      v11 = *a3++;
      v10 = v11;
      v12 = *a4++;
      objc_msgSend_setBuffer_offset_atIndex_(self, a2, v10, v12, location++);
      --length;
    }

    while (length);
  }
}

- (void)setBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v5 = &self->super.isa + a5;
  v5[3] = 0;
  v5[34] = 0;
  objc_msgSend_setBytes_length_atIndex_(self->_encoder, a2, a3, a4);
}

- (void)setBytes:(const void *)a3 length:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  v6 = &self->super.isa + a6;
  v6[3] = 0;
  v6[34] = 0;
  MEMORY[0x1EEE66B58](self->_encoder, sel_setBytes_length_attributeStride_atIndex_, a3, a4);
}

- (void)setComputePipelineState:(id)a3
{
  if (self->_cache.rasterizerStates != a3)
  {
    self->_cache.rasterizerStates = a3;
    objc_msgSend_setComputePipelineState_(self->_encoder, a2, a3, v3);
  }
}

- (void)setSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  if (*(&self[9]._cache.colorBufferWriteMask + a4) != a3)
  {
    *(&self[9]._cache.colorBufferWriteMask + a4) = a3;
    objc_msgSend_setSamplerState_atIndex_(self->_encoder, a2, a3, a4);
  }
}

- (void)setSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  memcpy(&self[9]._cache.colorBufferWriteMask + 8 * a6.location, a3, 8 * a6.length);
  encoder = self->_encoder;

  MEMORY[0x1EEE66B58](encoder, sel_setSamplerStates_lodMinClamps_lodMaxClamps_withRange_, a3, a4);
}

- (void)setSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  memcpy(&self[9]._cache.colorBufferWriteMask + 8 * a4.location, a3, 8 * a4.length);
  encoder = self->_encoder;

  objc_msgSend_setSamplerStates_withRange_(encoder, v8, a3, location, length);
}

- (void)setStageInRegion:(id *)a3
{
  encoder = self->_encoder;
  v5 = *&a3->var0.var2;
  v6[0] = *&a3->var0.var0;
  v6[1] = v5;
  v6[2] = *&a3->var1.var1;
  objc_msgSend_setStageInRegion_(encoder, a2, v6, v3);
}

- (void)setTexture:(id)a3 atIndex:(unint64_t)a4
{
  if (*(&self[3]._cache.meshElement + a4) != a3)
  {
    *(&self[3]._cache.meshElement + a4) = a3;
    objc_msgSend_setTexture_atIndex_(self->_encoder, a2, a3, a4);
  }
}

- (void)setTextures:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    for (i = 0; i != length; ++i)
    {
      objc_msgSend_setTexture_atIndex_(self, a2, a3[i], i);
    }
  }
}

- (void)dispatch:(id)a3 threadgroups:(id *)a4 threadsPerThreadgroup:(id *)a5
{
  objc_msgSend_setComputePipelineState_(self, a2, a3, a4);
  v10 = *a4;
  v9 = *a5;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(self, v8, &v10, &v9);
}

- (void)dispatch:(id)a3 threadgroupsWithIndirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5 threadsPerThreadgroup:(id *)a6
{
  objc_msgSend_setComputePipelineState_(self, a2, a3, a4);
  v11 = *a6;
  objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(self, v10, a4, a5, &v11);
}

- (void)dispatchOne:(id)a3
{
  objc_msgSend_setComputePipelineState_(self, a2, a3, v3);
  v8 = vdupq_n_s64(1uLL);
  v9 = 1;
  v6 = v8;
  v7 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(self, v5, &v8, &v6);
}

- (void)dispatchOnVertices:(id)a3 vertexCount:(unsigned int)a4
{
  objc_msgSend_setComputePipelineState_(self, a2, a3, *&a4);
  encoder = self->_encoder;

  RGMTLComputeCommandEncoderDispatchOnGrid1D(encoder, a3, a4, v7);
}

- (void)dispatch:(id)a3 onTexture2D:(id)a4
{
  v7 = objc_msgSend_width(a4, a2, a3, a4);
  v11 = objc_msgSend_height(a4, v8, v9, v10);
  objc_msgSend_setComputePipelineState_(self, v12, a3, v13);
  encoder = self->_encoder;
  v15[0] = v7;
  v15[1] = v11;
  v15[2] = 1;
  RGMTLComputeCommandEncoderDispatchOnGrid2D(encoder, a3, v15, 1);
}

- (void)dispatchOnGrid2D:(id *)a3
{
  encoder = self->_encoder;
  rasterizerStates = self->_cache.rasterizerStates;
  v5 = *a3;
  RGMTLComputeCommandEncoderDispatchOnGrid2D(encoder, rasterizerStates, &v5, 1);
}

- (void)dispatchOnGrid3D:(id *)a3
{
  encoder = self->_encoder;
  rasterizerStates = self->_cache.rasterizerStates;
  v6 = *a3;
  RGMTLComputeCommandEncoderDispatchOnGrid3D(encoder, rasterizerStates, &v6, v3);
}

- (void)dispatchOnTexture2D:(id)a3
{
  v6 = objc_msgSend_width(a3, a2, a3, v3);
  v10 = objc_msgSend_height(a3, v7, v8, v9);
  encoder = self->_encoder;
  rasterizerStates = self->_cache.rasterizerStates;
  v13[0] = v6;
  v13[1] = v10;
  v13[2] = 1;
  RGMTLComputeCommandEncoderDispatchOnGrid2D(encoder, rasterizerStates, v13, 1);
}

- (void)dispatchOnTexture2DWithoutOptimizedThreadGroupPerGrid:(id)a3
{
  v6 = objc_msgSend_width(a3, a2, a3, v3);
  v10 = objc_msgSend_height(a3, v7, v8, v9);
  encoder = self->_encoder;
  rasterizerStates = self->_cache.rasterizerStates;
  v13[0] = v6;
  v13[1] = v10;
  v13[2] = 1;
  RGMTLComputeCommandEncoderDispatchOnGrid2D(encoder, rasterizerStates, v13, 0);
}

- (void)dispatchOnTexture3D:(id)a3
{
  v6 = objc_msgSend_width(a3, a2, a3, v3);
  v10 = objc_msgSend_height(a3, v7, v8, v9);
  v14 = objc_msgSend_depth(a3, v11, v12, v13);
  encoder = self->_encoder;
  rasterizerStates = self->_cache.rasterizerStates;
  v18[0] = v6;
  v18[1] = v10;
  v18[2] = v14;
  RGMTLComputeCommandEncoderDispatchOnGrid3D(encoder, rasterizerStates, v18, v17);
}

- (void)dispatchOnTextureCube:(id)a3
{
  v6 = objc_msgSend_width(a3, a2, a3, v3);
  v10 = objc_msgSend_height(a3, v7, v8, v9);
  encoder = self->_encoder;
  rasterizerStates = self->_cache.rasterizerStates;
  v14[0] = v6;
  v14[1] = v10;
  v14[2] = 6;
  RGMTLComputeCommandEncoderDispatchOnGrid3D(encoder, rasterizerStates, v14, v13);
}

- (void)setBufferSlice:(id)a3 atIndex:(unint64_t)a4
{
  var1 = a3.var1;
  MTLBuffer = CFXBufferSliceGetMTLBuffer(a3.var0, *&a3.var1);

  objc_msgSend_setBuffer_offset_atIndex_(self, v7, MTLBuffer, var1, a4);
}

@end