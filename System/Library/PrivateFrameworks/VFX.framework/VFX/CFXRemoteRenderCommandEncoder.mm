@interface CFXRemoteRenderCommandEncoder
- (BOOL)isCullModeLocked;
- (BOOL)isFillModeLocked;
- (CFXRemoteRenderCommandEncoder)initWithRemoteFrameBuilder:(__CFXRemoteFrameBuilder *)builder;
- (MTLDevice)device;
- (NSString)label;
- (id)fragmentBufferBoundAt:(unint64_t)at;
- (id)vertexBufferBoundAt:(unint64_t)at;
- (unint64_t)_resourceIDForBuffer:(id)buffer;
- (unint64_t)tileHeight;
- (unint64_t)tileWidth;
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
- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset;
- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)insertDebugSignpost:(id)signpost;
- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)memoryBarrierWithScope:(unint64_t)scope afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)sampleCountersInBuffer:(id)buffer atSampleIndex:(unint64_t)index withBarrier:(BOOL)barrier;
- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;
- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index;
- (void)setColorStoreActionOptions:(unint64_t)options atIndex:(unint64_t)index;
- (void)setDeferredBindingEnabled:(BOOL)enabled;
- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp;
- (void)setDepthStencilState:(id)state;
- (void)setDepthStoreAction:(unint64_t)action;
- (void)setDepthStoreActionOptions:(unint64_t)options;
- (void)setEncoder:(id)encoder;
- (void)setFragmentAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setFragmentBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setFragmentBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setFragmentIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setFragmentIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setFragmentSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setFragmentSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setFragmentSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setFragmentSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setFragmentTexture:(id)texture atIndex:(unint64_t)index;
- (void)setFragmentTexture:(id)texture atTextureIndex:(unint64_t)index samplerState:(id)state atSamplerIndex:(unint64_t)samplerIndex;
- (void)setFragmentTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setFragmentVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setFragmentVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setLabel:(id)label;
- (void)setLockCullMode:(BOOL)mode;
- (void)setLockFillMode:(BOOL)mode;
- (void)setMeshBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setMeshBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setMeshBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setMeshBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setMeshSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setMeshSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setMeshSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setMeshSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setMeshTexture:(id)texture atIndex:(unint64_t)index;
- (void)setMeshTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setObjectBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setObjectBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setObjectBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setObjectBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setObjectSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setObjectSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setObjectSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setObjectSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setObjectTexture:(id)texture atIndex:(unint64_t)index;
- (void)setObjectTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
- (void)setRenderPipelineState:(id)state;
- (void)setScissorRect:(id *)rect;
- (void)setScissorRects:(id *)rects count:(unint64_t)count;
- (void)setStencilReferenceValue:(unsigned int)value;
- (void)setStencilStoreAction:(unint64_t)action;
- (void)setStencilStoreActionOptions:(unint64_t)options;
- (void)setTessellationFactorBuffer:(id)buffer offset:(unint64_t)offset instanceStride:(unint64_t)stride;
- (void)setTessellationFactorScale:(float)scale;
- (void)setThreadgroupMemoryLength:(unint64_t)length offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setTileAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setTileBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setTileBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setTileBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setTileBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setTileIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setTileIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setTileSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setTileSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setTileSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setTileSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setTileTexture:(id)texture atIndex:(unint64_t)index;
- (void)setTileTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setTileVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setTileVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setVertexAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setVertexAmplificationCount:(unint64_t)count viewMappings:(id *)mappings;
- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setVertexBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setVertexBufferOffset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets attributeStrides:(const unint64_t *)strides withRange:(_NSRange)range;
- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setVertexIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVertexIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setVertexSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setVertexSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setVertexSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setVertexSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setVertexTexture:(id)texture atIndex:(unint64_t)index;
- (void)setVertexTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setVertexVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVertexVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setViewport:(id *)viewport;
- (void)setViewports:(id *)viewports count:(unint64_t)count;
- (void)setVisibilityResultMode:(unint64_t)mode offset:(unint64_t)offset;
- (void)textureBarrier;
- (void)updateFence:(id)fence afterStages:(unint64_t)stages;
- (void)useHeap:(id)heap;
- (void)useHeap:(id)heap stages:(unint64_t)stages;
- (void)useHeaps:(const void *)heaps count:(unint64_t)count;
- (void)useHeaps:(const void *)heaps count:(unint64_t)count stages:(unint64_t)stages;
- (void)useResource:(id)resource usage:(unint64_t)usage;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage stages:(unint64_t)stages;
- (void)waitForFence:(id)fence beforeStages:(unint64_t)stages;
@end

@implementation CFXRemoteRenderCommandEncoder

- (CFXRemoteRenderCommandEncoder)initWithRemoteFrameBuilder:(__CFXRemoteFrameBuilder *)builder
{
  v8.receiver = self;
  v8.super_class = CFXRemoteRenderCommandEncoder;
  v4 = [(CFXRemoteRenderCommandEncoder *)&v8 init];
  v5 = v4;
  if (v4)
  {
    builder = v4->_builder;
    if (builder != builder)
    {
      if (builder)
      {
        CFRelease(builder);
        v5->_builder = 0;
      }

      if (builder)
      {
        builder = CFRetain(builder);
      }

      else
      {
        builder = 0;
      }

      v5->_builder = builder;
    }

    v5->_resourceProvider = sub_1AF12DB9C(builder);
    v5->_winding = 0;
  }

  return v5;
}

- (void)dealloc
{
  builder = self->_builder;
  if (builder)
  {
    CFRelease(builder);
    self->_builder = 0;
  }

  v4.receiver = self;
  v4.super_class = CFXRemoteRenderCommandEncoder;
  [(CFXRemoteRenderCommandEncoder *)&v4 dealloc];
}

- (unint64_t)_resourceIDForBuffer:(id)buffer
{
  if (buffer)
  {
    return objc_msgSend_resourceIDForBuffer_(self->_resourceProvider, a2, buffer, v3);
  }

  else
  {
    return 0;
  }
}

- (void)setDeferredBindingEnabled:(BOOL)enabled
{
  if ((byte_1EB658740 & 1) == 0)
  {
    byte_1EB658740 = 1;
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEC850();
    }
  }
}

- (void)setEncoder:(id)encoder
{
  if ((byte_1EB658741 & 1) == 0)
  {
    byte_1EB658741 = 1;
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEC884();
    }
  }
}

- (id)vertexBufferBoundAt:(unint64_t)at
{
  if ((byte_1EB658742 & 1) == 0)
  {
    byte_1EB658742 = 1;
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEC8B8();
    }
  }

  return 0;
}

- (id)fragmentBufferBoundAt:(unint64_t)at
{
  if ((byte_1EB658743 & 1) == 0)
  {
    byte_1EB658743 = 1;
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEC8EC();
    }
  }

  return 0;
}

- (NSString)label
{
  if ((byte_1EB658744 & 1) == 0)
  {
    byte_1EB658744 = 1;
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEC920();
    }
  }

  return 0;
}

- (void)setLabel:(id)label
{
  if ((byte_1EB658745 & 1) == 0)
  {
    byte_1EB658745 = 1;
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEC954();
    }
  }
}

- (unint64_t)tileWidth
{
  if ((byte_1EB658746 & 1) == 0)
  {
    byte_1EB658746 = 1;
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEC988();
    }
  }

  return 1;
}

- (unint64_t)tileHeight
{
  if ((byte_1EB658747 & 1) == 0)
  {
    byte_1EB658747 = 1;
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEC9BC();
    }
  }

  return 1;
}

- (void)insertDebugSignpost:(id)signpost
{
  if ((byte_1EB658748 & 1) == 0)
  {
    byte_1EB658748 = 1;
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEC9F0();
    }
  }
}

- (void)popDebugGroup
{
  if ((byte_1EB658749 & 1) == 0)
  {
    byte_1EB658749 = 1;
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECA24();
    }
  }
}

- (void)pushDebugGroup:(id)group
{
  if ((byte_1EB65874A & 1) == 0)
  {
    byte_1EB65874A = 1;
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECA58();
    }
  }
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset
{
  offsetCopy = offset;
  typeCopy = type;
  countCopy = count;
  primitivesCopy = primitives;
  v12 = objc_msgSend__resourceIDForBuffer_(self, a2, buffer, count);
  sub_1AF22DE78(self->_builder, primitivesCopy, countCopy, typeCopy, v12, offsetCopy, 0, 1, 0);
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount
{
  instanceCountCopy = instanceCount;
  offsetCopy = offset;
  typeCopy = type;
  countCopy = count;
  primitivesCopy = primitives;
  v14 = objc_msgSend__resourceIDForBuffer_(self, a2, buffer, count);
  sub_1AF22DE78(self->_builder, primitivesCopy, countCopy, typeCopy, v14, offsetCopy, 0, instanceCountCopy, 0);
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0
{
  instanceCountCopy = instanceCount;
  offsetCopy = offset;
  typeCopy = type;
  countCopy = count;
  primitivesCopy = primitives;
  v16 = objc_msgSend__resourceIDForBuffer_(self, a2, buffer, count);
  builder = self->_builder;

  sub_1AF22DE78(builder, primitivesCopy, countCopy, typeCopy, v16, offsetCopy, vertex, instanceCountCopy, instance);
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset
{
  bufferOffsetCopy = bufferOffset;
  offsetCopy = offset;
  typeCopy = type;
  primitivesCopy = primitives;
  v14 = objc_msgSend__resourceIDForBuffer_(self, a2, indirectBuffer, type);
  v17 = objc_msgSend__resourceIDForBuffer_(self, v15, buffer, v16);
  builder = self->_builder;

  sub_1AF22DF18(builder, primitivesCopy, typeCopy, v17, offsetCopy, v14, bufferOffsetCopy);
}

- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  offsetCopy = offset;
  primitivesCopy = primitives;
  v8 = objc_msgSend__resourceIDForBuffer_(self, a2, buffer, buffer);
  builder = self->_builder;

  sub_1AF22DED4(builder, primitivesCopy, v8, offsetCopy);
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count
{
  if ((byte_1EB65874B & 1) == 0)
  {
    byte_1EB65874B = 1;
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECA8C();
    }
  }
}

- (void)drawIndexedPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)indirectBufferOffset
{
  if ((byte_1EB65874C & 1) == 0)
  {
    byte_1EB65874C = 1;
    v9 = sub_1AF0D5194();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECAC0();
    }
  }
}

- (void)drawIndexedPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset instanceCount:(unint64_t)self0 baseInstance:(unint64_t)self1
{
  if ((byte_1EB65874D & 1) == 0)
  {
    byte_1EB65874D = 1;
    v11 = sub_1AF0D5194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECAF4();
    }
  }
}

- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  if ((byte_1EB65874E & 1) == 0)
  {
    byte_1EB65874E = 1;
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECB28();
    }
  }
}

- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  if ((byte_1EB65874F & 1) == 0)
  {
    byte_1EB65874F = 1;
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECB5C();
    }
  }
}

- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  if ((byte_1EB658750 & 1) == 0)
  {
    byte_1EB658750 = 1;
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECB90();
    }
  }
}

- (void)drawPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset
{
  if ((byte_1EB658751 & 1) == 0)
  {
    byte_1EB658751 = 1;
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECBC4();
    }
  }
}

- (void)drawPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
{
  if ((byte_1EB658752 & 1) == 0)
  {
    byte_1EB658752 = 1;
    v9 = sub_1AF0D5194();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECBF8();
    }
  }
}

- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha
{
  if ((byte_1EB658753 & 1) == 0)
  {
    byte_1EB658753 = 1;
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECC2C();
    }
  }
}

- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index
{
  if ((byte_1EB658754 & 1) == 0)
  {
    byte_1EB658754 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECC60();
    }
  }
}

- (void)setColorStoreActionOptions:(unint64_t)options atIndex:(unint64_t)index
{
  if ((byte_1EB658755 & 1) == 0)
  {
    byte_1EB658755 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECC94();
    }
  }
}

- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp
{
  if ((byte_1EB658756 & 1) == 0)
  {
    byte_1EB658756 = 1;
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECCC8();
    }
  }
}

- (void)setDepthStencilState:(id)state
{
  v6 = objc_msgSend_descForDepthStencilState_(self->_resourceProvider, a2, state, v3);
  builder = self->_builder;

  sub_1AF22D9BC(builder, v6, v5);
}

- (void)setDepthStoreAction:(unint64_t)action
{
  if ((byte_1EB658757 & 1) == 0)
  {
    byte_1EB658757 = 1;
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECCFC();
    }
  }
}

- (void)setDepthStoreActionOptions:(unint64_t)options
{
  if ((byte_1EB658758 & 1) == 0)
  {
    byte_1EB658758 = 1;
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECD30();
    }
  }
}

- (void)setRenderPipelineState:(id)state
{
  v5 = objc_msgSend_resourceIDForRenderPipelineState_(self->_resourceProvider, a2, state, v3);
  builder = self->_builder;

  sub_1AF22DE04(builder, v5);
}

- (void)setScissorRect:(id *)rect
{
  if ((byte_1EB658759 & 1) == 0)
  {
    byte_1EB658759 = 1;
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECD64();
    }
  }
}

- (void)setScissorRects:(id *)rects count:(unint64_t)count
{
  if ((byte_1EB65875A & 1) == 0)
  {
    byte_1EB65875A = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECD98();
    }
  }
}

- (void)setStencilReferenceValue:(unsigned int)value
{
  if ((byte_1EB65875B & 1) == 0)
  {
    byte_1EB65875B = 1;
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECDCC();
    }
  }
}

- (void)setStencilStoreAction:(unint64_t)action
{
  if ((byte_1EB65875C & 1) == 0)
  {
    byte_1EB65875C = 1;
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECE00();
    }
  }
}

- (void)setStencilStoreActionOptions:(unint64_t)options
{
  if ((byte_1EB65875D & 1) == 0)
  {
    byte_1EB65875D = 1;
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECE34();
    }
  }
}

- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  indexCopy = index;
  offsetCopy = offset;
  resourceProvider = self->_resourceProvider;
  CFXBufferSliceMake();
  v12 = objc_msgSend_builtinForBufferSlice_(resourceProvider, v11, v10, v11);
  if (v12)
  {
    v15 = v12;
    builder = self->_builder;

    sub_1AF22DB5C(builder, 2u, indexCopy, v15);
  }

  else
  {
    v17 = objc_msgSend_resourceIDForBuffer_(self->_resourceProvider, v13, buffer, v14);
    v18 = self->_builder;

    sub_1AF22DB14(v18, 2u, indexCopy, v17, offsetCopy);
  }
}

- (void)setFragmentBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  if ((byte_1EB65875E & 1) == 0)
  {
    byte_1EB65875E = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECE68();
    }
  }
}

- (void)setFragmentBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
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
      objc_msgSend_setFragmentBuffer_offset_atIndex_(self, a2, v10, v12, location++);
      --length;
    }

    while (length);
  }
}

- (void)setFragmentSamplerState:(id)state atIndex:(unint64_t)index
{
  indexCopy = index;
  v6 = objc_msgSend_descForSamplerState_(self->_resourceProvider, a2, state, index);
  builder = self->_builder;

  sub_1AF22DAD4(builder, 2u, indexCopy, v6);
}

- (void)setFragmentSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  if ((byte_1EB65875F & 1) == 0)
  {
    byte_1EB65875F = 1;
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECE9C();
    }
  }
}

- (void)setFragmentSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  if ((byte_1EB658760 & 1) == 0)
  {
    byte_1EB658760 = 1;
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECED0();
    }
  }
}

- (void)setFragmentSamplerStates:(const void *)states withRange:(_NSRange)range
{
  if ((byte_1EB658761 & 1) == 0)
  {
    byte_1EB658761 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECED0();
    }
  }
}

- (void)setFragmentTexture:(id)texture atIndex:(unint64_t)index
{
  indexCopy = index;
  v7 = objc_msgSend_builtinForTexture_(self->_resourceProvider, a2, texture, index);
  if (v7)
  {
    v10 = v7;
    builder = self->_builder;

    sub_1AF22DA94(builder, 2u, indexCopy, v10);
  }

  else
  {
    v12 = objc_msgSend_resourceIDForTexture_(self->_resourceProvider, v8, texture, v9);
    v13 = self->_builder;

    sub_1AF22DA54(v13, 2, indexCopy, v12);
  }
}

- (void)setFragmentTextures:(const void *)textures withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *textures++;
      objc_msgSend_setFragmentTexture_atIndex_(self, a2, v8, location++);
      --length;
    }

    while (length);
  }
}

- (void)setFragmentTexture:(id)texture atTextureIndex:(unint64_t)index samplerState:(id)state atSamplerIndex:(unint64_t)samplerIndex
{
  if ((byte_1EB658762 & 1) == 0)
  {
    byte_1EB658762 = 1;
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECF04();
    }
  }
}

- (void)setVertexAmplificationCount:(unint64_t)count viewMappings:(id *)mappings
{
  if ((byte_1EB658763 & 1) == 0)
  {
    byte_1EB658763 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECF38();
    }
  }
}

- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  indexCopy = index;
  offsetCopy = offset;
  resourceProvider = self->_resourceProvider;
  CFXBufferSliceMake();
  v12 = objc_msgSend_builtinForBufferSlice_(resourceProvider, v11, v10, v11);
  if (v12)
  {
    v15 = v12;
    builder = self->_builder;

    sub_1AF22DB5C(builder, 1u, indexCopy, v15);
  }

  else
  {
    v17 = objc_msgSend_resourceIDForBuffer_(self->_resourceProvider, v13, buffer, v14);
    v18 = self->_builder;

    sub_1AF22DB14(v18, 1u, indexCopy, v17, offsetCopy);
  }
}

- (void)setVertexBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  if ((byte_1EB658764 & 1) == 0)
  {
    byte_1EB658764 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECF6C();
    }
  }
}

- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
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
      objc_msgSend_setVertexBuffer_offset_atIndex_(self, a2, v10, v12, location++);
      --length;
    }

    while (length);
  }
}

- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  if ((byte_1EB658765 & 1) == 0)
  {
    byte_1EB658765 = 1;
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECFA0();
    }
  }
}

- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets attributeStrides:(const unint64_t *)strides withRange:(_NSRange)range
{
  if ((byte_1EB658766 & 1) == 0)
  {
    byte_1EB658766 = 1;
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECFD4();
    }
  }
}

- (void)setVertexBufferOffset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  if ((byte_1EB658767 & 1) == 0)
  {
    byte_1EB658767 = 1;
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDECF6C();
    }
  }
}

- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  if ((byte_1EB658768 & 1) == 0)
  {
    byte_1EB658768 = 1;
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED008();
    }
  }
}

- (void)setVertexSamplerState:(id)state atIndex:(unint64_t)index
{
  indexCopy = index;
  v6 = objc_msgSend_descForSamplerState_(self->_resourceProvider, a2, state, index);
  builder = self->_builder;

  sub_1AF22DAD4(builder, 1u, indexCopy, v6);
}

- (void)setVertexSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  if ((byte_1EB658769 & 1) == 0)
  {
    byte_1EB658769 = 1;
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED03C();
    }
  }
}

- (void)setVertexSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  if ((byte_1EB65876A & 1) == 0)
  {
    byte_1EB65876A = 1;
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED070();
    }
  }
}

- (void)setVertexSamplerStates:(const void *)states withRange:(_NSRange)range
{
  if ((byte_1EB65876B & 1) == 0)
  {
    byte_1EB65876B = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED0A4();
    }
  }
}

- (void)setVertexTexture:(id)texture atIndex:(unint64_t)index
{
  indexCopy = index;
  v7 = objc_msgSend_builtinForTexture_(self->_resourceProvider, a2, texture, index);
  if (v7)
  {
    v10 = v7;
    builder = self->_builder;

    sub_1AF22DA94(builder, 1u, indexCopy, v10);
  }

  else
  {
    v12 = objc_msgSend_resourceIDForTexture_(self->_resourceProvider, v8, texture, v9);
    v13 = self->_builder;

    sub_1AF22DA54(v13, 1, indexCopy, v12);
  }
}

- (void)setVertexTextures:(const void *)textures withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *textures++;
      objc_msgSend_setVertexTexture_atIndex_(self, a2, v8, location++);
      --length;
    }

    while (length);
  }
}

- (void)setViewport:(id *)viewport
{
  if ((byte_1EB65876C & 1) == 0)
  {
    byte_1EB65876C = 1;
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED0D8();
    }
  }
}

- (void)setViewports:(id *)viewports count:(unint64_t)count
{
  if ((byte_1EB65876D & 1) == 0)
  {
    byte_1EB65876D = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED10C();
    }
  }
}

- (void)useResource:(id)resource usage:(unint64_t)usage
{
  if ((byte_1EB65876E & 1) == 0)
  {
    byte_1EB65876E = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED140();
    }
  }
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage
{
  if ((byte_1EB65876F & 1) == 0)
  {
    byte_1EB65876F = 1;
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED174();
    }
  }
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage stages:(unint64_t)stages
{
  if (count)
  {
    stagesCopy = stages;
    usageCopy = usage;
    countCopy = count;
    do
    {
      v11 = *resources++;
      sub_1AF22DDC4(self->_builder, v11, stagesCopy, usageCopy);
      --countCopy;
    }

    while (countCopy);
  }
}

- (void)dispatchThreadsPerTile:(id *)tile
{
  if ((byte_1EB658770 & 1) == 0)
  {
    byte_1EB658770 = 1;
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED1A8();
    }
  }
}

- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset
{
  if ((byte_1EB658771 & 1) == 0)
  {
    byte_1EB658771 = 1;
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED1DC();
    }
  }
}

- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  if ((byte_1EB658772 & 1) == 0)
  {
    byte_1EB658772 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED1DC();
    }
  }
}

- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
{
  if ((byte_1EB658773 & 1) == 0)
  {
    byte_1EB658773 = 1;
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED210();
    }
  }
}

- (void)memoryBarrierWithScope:(unint64_t)scope afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
{
  if ((byte_1EB658774 & 1) == 0)
  {
    byte_1EB658774 = 1;
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED244();
    }
  }
}

- (void)sampleCountersInBuffer:(id)buffer atSampleIndex:(unint64_t)index withBarrier:(BOOL)barrier
{
  if ((byte_1EB658775 & 1) == 0)
  {
    byte_1EB658775 = 1;
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED278();
    }
  }
}

- (void)setFragmentAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  if ((byte_1EB658776 & 1) == 0)
  {
    byte_1EB658776 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED2AC();
    }
  }
}

- (void)setFragmentIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if ((byte_1EB658777 & 1) == 0)
  {
    byte_1EB658777 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED2E0();
    }
  }
}

- (void)setFragmentIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  if ((byte_1EB658778 & 1) == 0)
  {
    byte_1EB658778 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED314();
    }
  }
}

- (void)setFragmentVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if ((byte_1EB658779 & 1) == 0)
  {
    byte_1EB658779 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED348();
    }
  }
}

- (void)setFragmentVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  if ((byte_1EB65877A & 1) == 0)
  {
    byte_1EB65877A = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED37C();
    }
  }
}

- (void)setMeshBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  if ((byte_1EB65877B & 1) == 0)
  {
    byte_1EB65877B = 1;
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED3B0();
    }
  }
}

- (void)setMeshBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  if ((byte_1EB65877C & 1) == 0)
  {
    byte_1EB65877C = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED3E4();
    }
  }
}

- (void)setMeshBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  if ((byte_1EB65877D & 1) == 0)
  {
    byte_1EB65877D = 1;
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED418();
    }
  }
}

- (void)setMeshBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  if ((byte_1EB65877E & 1) == 0)
  {
    byte_1EB65877E = 1;
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED44C();
    }
  }
}

- (void)setMeshSamplerState:(id)state atIndex:(unint64_t)index
{
  if ((byte_1EB65877F & 1) == 0)
  {
    byte_1EB65877F = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED480();
    }
  }
}

- (void)setMeshSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  if ((byte_1EB658780 & 1) == 0)
  {
    byte_1EB658780 = 1;
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED4B4();
    }
  }
}

- (void)setMeshSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  if ((byte_1EB658781 & 1) == 0)
  {
    byte_1EB658781 = 1;
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED4E8();
    }
  }
}

- (void)setMeshSamplerStates:(const void *)states withRange:(_NSRange)range
{
  if ((byte_1EB658782 & 1) == 0)
  {
    byte_1EB658782 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED51C();
    }
  }
}

- (void)setMeshTexture:(id)texture atIndex:(unint64_t)index
{
  if ((byte_1EB658783 & 1) == 0)
  {
    byte_1EB658783 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED550();
    }
  }
}

- (void)setMeshTextures:(const void *)textures withRange:(_NSRange)range
{
  if ((byte_1EB658784 & 1) == 0)
  {
    byte_1EB658784 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED584();
    }
  }
}

- (void)setObjectBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  if ((byte_1EB658785 & 1) == 0)
  {
    byte_1EB658785 = 1;
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED5B8();
    }
  }
}

- (void)setObjectBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  if ((byte_1EB658786 & 1) == 0)
  {
    byte_1EB658786 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED5EC();
    }
  }
}

- (void)setObjectBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  if ((byte_1EB658787 & 1) == 0)
  {
    byte_1EB658787 = 1;
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED620();
    }
  }
}

- (void)setObjectBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  if ((byte_1EB658788 & 1) == 0)
  {
    byte_1EB658788 = 1;
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED654();
    }
  }
}

- (void)setObjectSamplerState:(id)state atIndex:(unint64_t)index
{
  if ((byte_1EB658789 & 1) == 0)
  {
    byte_1EB658789 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED688();
    }
  }
}

- (void)setObjectSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  if ((byte_1EB65878A & 1) == 0)
  {
    byte_1EB65878A = 1;
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED6BC();
    }
  }
}

- (void)setObjectSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  if ((byte_1EB65878B & 1) == 0)
  {
    byte_1EB65878B = 1;
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED6F0();
    }
  }
}

- (void)setObjectSamplerStates:(const void *)states withRange:(_NSRange)range
{
  if ((byte_1EB65878C & 1) == 0)
  {
    byte_1EB65878C = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED6F0();
    }
  }
}

- (void)setObjectTexture:(id)texture atIndex:(unint64_t)index
{
  if ((byte_1EB65878D & 1) == 0)
  {
    byte_1EB65878D = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED724();
    }
  }
}

- (void)setObjectTextures:(const void *)textures withRange:(_NSRange)range
{
  if ((byte_1EB65878E & 1) == 0)
  {
    byte_1EB65878E = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED758();
    }
  }
}

- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  if ((byte_1EB65878F & 1) == 0)
  {
    byte_1EB65878F = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED78C();
    }
  }
}

- (void)setTessellationFactorBuffer:(id)buffer offset:(unint64_t)offset instanceStride:(unint64_t)stride
{
  if ((byte_1EB658790 & 1) == 0)
  {
    byte_1EB658790 = 1;
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED7C0();
    }
  }
}

- (void)setTessellationFactorScale:(float)scale
{
  if ((byte_1EB658791 & 1) == 0)
  {
    byte_1EB658791 = 1;
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED7F4();
    }
  }
}

- (void)setThreadgroupMemoryLength:(unint64_t)length offset:(unint64_t)offset atIndex:(unint64_t)index
{
  if ((byte_1EB658792 & 1) == 0)
  {
    byte_1EB658792 = 1;
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED828();
    }
  }
}

- (void)setTileAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  if ((byte_1EB658793 & 1) == 0)
  {
    byte_1EB658793 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED85C();
    }
  }
}

- (void)setTileBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  if ((byte_1EB658794 & 1) == 0)
  {
    byte_1EB658794 = 1;
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED890();
    }
  }
}

- (void)setTileBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  if ((byte_1EB658795 & 1) == 0)
  {
    byte_1EB658795 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED8C4();
    }
  }
}

- (void)setTileBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  if ((byte_1EB658796 & 1) == 0)
  {
    byte_1EB658796 = 1;
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED8F8();
    }
  }
}

- (void)setTileBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  if ((byte_1EB658797 & 1) == 0)
  {
    byte_1EB658797 = 1;
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED92C();
    }
  }
}

- (void)setTileIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if ((byte_1EB658798 & 1) == 0)
  {
    byte_1EB658798 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED960();
    }
  }
}

- (void)setTileIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  if ((byte_1EB658799 & 1) == 0)
  {
    byte_1EB658799 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED994();
    }
  }
}

- (void)setTileSamplerState:(id)state atIndex:(unint64_t)index
{
  if ((byte_1EB65879A & 1) == 0)
  {
    byte_1EB65879A = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED9C8();
    }
  }
}

- (void)setTileSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  if ((byte_1EB65879B & 1) == 0)
  {
    byte_1EB65879B = 1;
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDED9FC();
    }
  }
}

- (void)setTileSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  if ((byte_1EB65879C & 1) == 0)
  {
    byte_1EB65879C = 1;
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEDA30();
    }
  }
}

- (void)setTileSamplerStates:(const void *)states withRange:(_NSRange)range
{
  if ((byte_1EB65879D & 1) == 0)
  {
    byte_1EB65879D = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEDA64();
    }
  }
}

- (void)setTileTexture:(id)texture atIndex:(unint64_t)index
{
  if ((byte_1EB65879E & 1) == 0)
  {
    byte_1EB65879E = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEDA98();
    }
  }
}

- (void)setTileTextures:(const void *)textures withRange:(_NSRange)range
{
  if ((byte_1EB65879F & 1) == 0)
  {
    byte_1EB65879F = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEDACC();
    }
  }
}

- (void)setTileVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if ((byte_1EB6587A0 & 1) == 0)
  {
    byte_1EB6587A0 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEDB00();
    }
  }
}

- (void)setTileVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  if ((byte_1EB6587A1 & 1) == 0)
  {
    byte_1EB6587A1 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEDB34();
    }
  }
}

- (void)setVertexAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  if ((byte_1EB6587A2 & 1) == 0)
  {
    byte_1EB6587A2 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEDB68();
    }
  }
}

- (void)setVertexIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if ((byte_1EB6587A3 & 1) == 0)
  {
    byte_1EB6587A3 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEDB9C();
    }
  }
}

- (void)setVertexIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  if ((byte_1EB6587A4 & 1) == 0)
  {
    byte_1EB6587A4 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEDBD0();
    }
  }
}

- (void)setVertexVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if ((byte_1EB6587A5 & 1) == 0)
  {
    byte_1EB6587A5 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEDC04();
    }
  }
}

- (void)setVertexVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  if ((byte_1EB6587A6 & 1) == 0)
  {
    byte_1EB6587A6 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEDC38();
    }
  }
}

- (void)setVisibilityResultMode:(unint64_t)mode offset:(unint64_t)offset
{
  if ((byte_1EB6587A7 & 1) == 0)
  {
    byte_1EB6587A7 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEDC6C();
    }
  }
}

- (void)textureBarrier
{
  if ((byte_1EB6587A8 & 1) == 0)
  {
    byte_1EB6587A8 = 1;
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEDCA0();
    }
  }
}

- (void)updateFence:(id)fence afterStages:(unint64_t)stages
{
  if ((byte_1EB6587A9 & 1) == 0)
  {
    byte_1EB6587A9 = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEDCD4();
    }
  }
}

- (void)useHeap:(id)heap
{
  if ((byte_1EB6587AA & 1) == 0)
  {
    byte_1EB6587AA = 1;
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEDD08();
    }
  }
}

- (void)useHeap:(id)heap stages:(unint64_t)stages
{
  if ((byte_1EB6587AB & 1) == 0)
  {
    byte_1EB6587AB = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEDD3C();
    }
  }
}

- (void)useHeaps:(const void *)heaps count:(unint64_t)count
{
  if ((byte_1EB6587AC & 1) == 0)
  {
    byte_1EB6587AC = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEDD70();
    }
  }
}

- (void)useHeaps:(const void *)heaps count:(unint64_t)count stages:(unint64_t)stages
{
  if ((byte_1EB6587AD & 1) == 0)
  {
    byte_1EB6587AD = 1;
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEDDA4();
    }
  }
}

- (void)waitForFence:(id)fence beforeStages:(unint64_t)stages
{
  if ((byte_1EB6587AE & 1) == 0)
  {
    byte_1EB6587AE = 1;
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEDDD8();
    }
  }
}

- (void)setLockCullMode:(BOOL)mode
{
  if ((byte_1EB6587AF & 1) == 0)
  {
    byte_1EB6587AF = 1;
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEDE0C();
    }
  }
}

- (BOOL)isCullModeLocked
{
  if ((byte_1EB6587B0 & 1) == 0)
  {
    byte_1EB6587B0 = 1;
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEDE40();
    }
  }

  return 0;
}

- (void)setLockFillMode:(BOOL)mode
{
  if ((byte_1EB6587B1 & 1) == 0)
  {
    byte_1EB6587B1 = 1;
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEDE74();
    }
  }
}

- (BOOL)isFillModeLocked
{
  if ((byte_1EB6587B2 & 1) == 0)
  {
    byte_1EB6587B2 = 1;
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEDEA8();
    }
  }

  return 0;
}

- (MTLDevice)device
{
  if ((byte_1EB6587B3 & 1) == 0)
  {
    byte_1EB6587B3 = 1;
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEDEDC();
    }
  }

  return 0;
}

@end