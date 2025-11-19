@interface CFXRemoteRenderCommandEncoder
- (BOOL)isCullModeLocked;
- (BOOL)isFillModeLocked;
- (CFXRemoteRenderCommandEncoder)initWithRemoteFrameBuilder:(__CFXRemoteFrameBuilder *)a3;
- (MTLDevice)device;
- (NSString)label;
- (id)fragmentBufferBoundAt:(unint64_t)a3;
- (id)vertexBufferBoundAt:(unint64_t)a3;
- (unint64_t)_resourceIDForBuffer:(id)a3;
- (unint64_t)tileHeight;
- (unint64_t)tileWidth;
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
- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5;
- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)insertDebugSignpost:(id)a3;
- (void)memoryBarrierWithResources:(const void *)a3 count:(unint64_t)a4 afterStages:(unint64_t)a5 beforeStages:(unint64_t)a6;
- (void)memoryBarrierWithScope:(unint64_t)a3 afterStages:(unint64_t)a4 beforeStages:(unint64_t)a5;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)a3;
- (void)sampleCountersInBuffer:(id)a3 atSampleIndex:(unint64_t)a4 withBarrier:(BOOL)a5;
- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6;
- (void)setColorStoreAction:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setColorStoreActionOptions:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setDeferredBindingEnabled:(BOOL)a3;
- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5;
- (void)setDepthStencilState:(id)a3;
- (void)setDepthStoreAction:(unint64_t)a3;
- (void)setDepthStoreActionOptions:(unint64_t)a3;
- (void)setEncoder:(id)a3;
- (void)setFragmentAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setFragmentBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setFragmentBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setFragmentBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setFragmentIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setFragmentIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setFragmentSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setFragmentSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setFragmentSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setFragmentSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setFragmentTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setFragmentTexture:(id)a3 atTextureIndex:(unint64_t)a4 samplerState:(id)a5 atSamplerIndex:(unint64_t)a6;
- (void)setFragmentTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setFragmentVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setFragmentVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setLabel:(id)a3;
- (void)setLockCullMode:(BOOL)a3;
- (void)setLockFillMode:(BOOL)a3;
- (void)setMeshBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setMeshBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setMeshBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setMeshBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setMeshSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setMeshSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setMeshSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setMeshSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setMeshTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setMeshTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setObjectBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setObjectBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setObjectBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setObjectBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setObjectSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setObjectSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setObjectSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setObjectSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setObjectTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setObjectTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setRenderPipelineState:(id)a3;
- (void)setScissorRect:(id *)a3;
- (void)setScissorRects:(id *)a3 count:(unint64_t)a4;
- (void)setStencilReferenceValue:(unsigned int)a3;
- (void)setStencilStoreAction:(unint64_t)a3;
- (void)setStencilStoreActionOptions:(unint64_t)a3;
- (void)setTessellationFactorBuffer:(id)a3 offset:(unint64_t)a4 instanceStride:(unint64_t)a5;
- (void)setTessellationFactorScale:(float)a3;
- (void)setThreadgroupMemoryLength:(unint64_t)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setTileAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setTileBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setTileBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setTileBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setTileBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setTileIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setTileIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setTileSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setTileSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setTileSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setTileSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setTileTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setTileTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setTileVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setTileVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setVertexAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setVertexAmplificationCount:(unint64_t)a3 viewMappings:(id *)a4;
- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setVertexBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setVertexBufferOffset:(unint64_t)a3 attributeStride:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setVertexBuffers:(const void *)a3 offsets:(const unint64_t *)a4 attributeStrides:(const unint64_t *)a5 withRange:(_NSRange)a6;
- (void)setVertexBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setVertexBytes:(const void *)a3 length:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setVertexIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setVertexIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setVertexSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setVertexSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setVertexSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setVertexSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setVertexTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setVertexTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setVertexVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setVertexVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setViewport:(id *)a3;
- (void)setViewports:(id *)a3 count:(unint64_t)a4;
- (void)setVisibilityResultMode:(unint64_t)a3 offset:(unint64_t)a4;
- (void)textureBarrier;
- (void)updateFence:(id)a3 afterStages:(unint64_t)a4;
- (void)useHeap:(id)a3;
- (void)useHeap:(id)a3 stages:(unint64_t)a4;
- (void)useHeaps:(const void *)a3 count:(unint64_t)a4;
- (void)useHeaps:(const void *)a3 count:(unint64_t)a4 stages:(unint64_t)a5;
- (void)useResource:(id)a3 usage:(unint64_t)a4;
- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5;
- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5 stages:(unint64_t)a6;
- (void)waitForFence:(id)a3 beforeStages:(unint64_t)a4;
@end

@implementation CFXRemoteRenderCommandEncoder

- (CFXRemoteRenderCommandEncoder)initWithRemoteFrameBuilder:(__CFXRemoteFrameBuilder *)a3
{
  v8.receiver = self;
  v8.super_class = CFXRemoteRenderCommandEncoder;
  v4 = [(CFXRemoteRenderCommandEncoder *)&v8 init];
  v5 = v4;
  if (v4)
  {
    builder = v4->_builder;
    if (builder != a3)
    {
      if (builder)
      {
        CFRelease(builder);
        v5->_builder = 0;
      }

      if (a3)
      {
        builder = CFRetain(a3);
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

- (unint64_t)_resourceIDForBuffer:(id)a3
{
  if (a3)
  {
    return objc_msgSend_resourceIDForBuffer_(self->_resourceProvider, a2, a3, v3);
  }

  else
  {
    return 0;
  }
}

- (void)setDeferredBindingEnabled:(BOOL)a3
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

- (void)setEncoder:(id)a3
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

- (id)vertexBufferBoundAt:(unint64_t)a3
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

- (id)fragmentBufferBoundAt:(unint64_t)a3
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

- (void)setLabel:(id)a3
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

- (void)insertDebugSignpost:(id)a3
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

- (void)pushDebugGroup:(id)a3
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

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7
{
  v7 = a7;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = objc_msgSend__resourceIDForBuffer_(self, a2, a6, a4);
  sub_1AF22DE78(self->_builder, v10, v9, v8, v12, v7, 0, 1, 0);
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8
{
  v8 = a8;
  v9 = a7;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v14 = objc_msgSend__resourceIDForBuffer_(self, a2, a6, a4);
  sub_1AF22DE78(self->_builder, v12, v11, v10, v14, v9, 0, v8, 0);
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10
{
  v10 = a8;
  v11 = a7;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v16 = objc_msgSend__resourceIDForBuffer_(self, a2, a6, a4);
  builder = self->_builder;

  sub_1AF22DE78(builder, v14, v13, v12, v16, v11, a9, v10, a10);
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(id)a5 indexBufferOffset:(unint64_t)a6 indirectBuffer:(id)a7 indirectBufferOffset:(unint64_t)a8
{
  v8 = a8;
  v9 = a6;
  v11 = a4;
  v12 = a3;
  v14 = objc_msgSend__resourceIDForBuffer_(self, a2, a7, a4);
  v17 = objc_msgSend__resourceIDForBuffer_(self, v15, a5, v16);
  builder = self->_builder;

  sub_1AF22DF18(builder, v12, v11, v17, v9, v14, v8);
}

- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5
{
  v5 = a5;
  v6 = a3;
  v8 = objc_msgSend__resourceIDForBuffer_(self, a2, a4, a4);
  builder = self->_builder;

  sub_1AF22DED4(builder, v6, v8, v5);
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5
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

- (void)drawIndexedPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 controlPointIndexBuffer:(id)a6 controlPointIndexBufferOffset:(unint64_t)a7 indirectBuffer:(id)a8 indirectBufferOffset:(unint64_t)a9
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

- (void)drawIndexedPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 controlPointIndexBuffer:(id)a8 controlPointIndexBufferOffset:(unint64_t)a9 instanceCount:(unint64_t)a10 baseInstance:(unint64_t)a11
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

- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
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

- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)a3 indirectBufferOffset:(unint64_t)a4 threadsPerObjectThreadgroup:(id *)a5 threadsPerMeshThreadgroup:(id *)a6
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

- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
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

- (void)drawPatches:(unint64_t)a3 patchIndexBuffer:(id)a4 patchIndexBufferOffset:(unint64_t)a5 indirectBuffer:(id)a6 indirectBufferOffset:(unint64_t)a7
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

- (void)drawPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseInstance:(unint64_t)a9
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

- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6
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

- (void)setColorStoreAction:(unint64_t)a3 atIndex:(unint64_t)a4
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

- (void)setColorStoreActionOptions:(unint64_t)a3 atIndex:(unint64_t)a4
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

- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5
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

- (void)setDepthStencilState:(id)a3
{
  v6 = objc_msgSend_descForDepthStencilState_(self->_resourceProvider, a2, a3, v3);
  builder = self->_builder;

  sub_1AF22D9BC(builder, v6, v5);
}

- (void)setDepthStoreAction:(unint64_t)a3
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

- (void)setDepthStoreActionOptions:(unint64_t)a3
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

- (void)setRenderPipelineState:(id)a3
{
  v5 = objc_msgSend_resourceIDForRenderPipelineState_(self->_resourceProvider, a2, a3, v3);
  builder = self->_builder;

  sub_1AF22DE04(builder, v5);
}

- (void)setScissorRect:(id *)a3
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

- (void)setScissorRects:(id *)a3 count:(unint64_t)a4
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

- (void)setStencilReferenceValue:(unsigned int)a3
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

- (void)setStencilStoreAction:(unint64_t)a3
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

- (void)setStencilStoreActionOptions:(unint64_t)a3
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

- (void)setFragmentBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v5 = a5;
  v6 = a4;
  resourceProvider = self->_resourceProvider;
  CFXBufferSliceMake();
  v12 = objc_msgSend_builtinForBufferSlice_(resourceProvider, v11, v10, v11);
  if (v12)
  {
    v15 = v12;
    builder = self->_builder;

    sub_1AF22DB5C(builder, 2u, v5, v15);
  }

  else
  {
    v17 = objc_msgSend_resourceIDForBuffer_(self->_resourceProvider, v13, a3, v14);
    v18 = self->_builder;

    sub_1AF22DB14(v18, 2u, v5, v17, v6);
  }
}

- (void)setFragmentBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
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

- (void)setFragmentBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
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
      objc_msgSend_setFragmentBuffer_offset_atIndex_(self, a2, v10, v12, location++);
      --length;
    }

    while (length);
  }
}

- (void)setFragmentSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  v4 = a4;
  v6 = objc_msgSend_descForSamplerState_(self->_resourceProvider, a2, a3, a4);
  builder = self->_builder;

  sub_1AF22DAD4(builder, 2u, v4, v6);
}

- (void)setFragmentSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
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

- (void)setFragmentSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
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

- (void)setFragmentSamplerStates:(const void *)a3 withRange:(_NSRange)a4
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

- (void)setFragmentTexture:(id)a3 atIndex:(unint64_t)a4
{
  v4 = a4;
  v7 = objc_msgSend_builtinForTexture_(self->_resourceProvider, a2, a3, a4);
  if (v7)
  {
    v10 = v7;
    builder = self->_builder;

    sub_1AF22DA94(builder, 2u, v4, v10);
  }

  else
  {
    v12 = objc_msgSend_resourceIDForTexture_(self->_resourceProvider, v8, a3, v9);
    v13 = self->_builder;

    sub_1AF22DA54(v13, 2, v4, v12);
  }
}

- (void)setFragmentTextures:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      objc_msgSend_setFragmentTexture_atIndex_(self, a2, v8, location++);
      --length;
    }

    while (length);
  }
}

- (void)setFragmentTexture:(id)a3 atTextureIndex:(unint64_t)a4 samplerState:(id)a5 atSamplerIndex:(unint64_t)a6
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

- (void)setVertexAmplificationCount:(unint64_t)a3 viewMappings:(id *)a4
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

- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v5 = a5;
  v6 = a4;
  resourceProvider = self->_resourceProvider;
  CFXBufferSliceMake();
  v12 = objc_msgSend_builtinForBufferSlice_(resourceProvider, v11, v10, v11);
  if (v12)
  {
    v15 = v12;
    builder = self->_builder;

    sub_1AF22DB5C(builder, 1u, v5, v15);
  }

  else
  {
    v17 = objc_msgSend_resourceIDForBuffer_(self->_resourceProvider, v13, a3, v14);
    v18 = self->_builder;

    sub_1AF22DB14(v18, 1u, v5, v17, v6);
  }
}

- (void)setVertexBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
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

- (void)setVertexBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
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
      objc_msgSend_setVertexBuffer_offset_atIndex_(self, a2, v10, v12, location++);
      --length;
    }

    while (length);
  }
}

- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
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

- (void)setVertexBuffers:(const void *)a3 offsets:(const unint64_t *)a4 attributeStrides:(const unint64_t *)a5 withRange:(_NSRange)a6
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

- (void)setVertexBufferOffset:(unint64_t)a3 attributeStride:(unint64_t)a4 atIndex:(unint64_t)a5
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

- (void)setVertexBytes:(const void *)a3 length:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
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

- (void)setVertexSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  v4 = a4;
  v6 = objc_msgSend_descForSamplerState_(self->_resourceProvider, a2, a3, a4);
  builder = self->_builder;

  sub_1AF22DAD4(builder, 1u, v4, v6);
}

- (void)setVertexSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
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

- (void)setVertexSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
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

- (void)setVertexSamplerStates:(const void *)a3 withRange:(_NSRange)a4
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

- (void)setVertexTexture:(id)a3 atIndex:(unint64_t)a4
{
  v4 = a4;
  v7 = objc_msgSend_builtinForTexture_(self->_resourceProvider, a2, a3, a4);
  if (v7)
  {
    v10 = v7;
    builder = self->_builder;

    sub_1AF22DA94(builder, 1u, v4, v10);
  }

  else
  {
    v12 = objc_msgSend_resourceIDForTexture_(self->_resourceProvider, v8, a3, v9);
    v13 = self->_builder;

    sub_1AF22DA54(v13, 1, v4, v12);
  }
}

- (void)setVertexTextures:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      objc_msgSend_setVertexTexture_atIndex_(self, a2, v8, location++);
      --length;
    }

    while (length);
  }
}

- (void)setViewport:(id *)a3
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

- (void)setViewports:(id *)a3 count:(unint64_t)a4
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

- (void)useResource:(id)a3 usage:(unint64_t)a4
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

- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5
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

- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5 stages:(unint64_t)a6
{
  if (a4)
  {
    v6 = a6;
    v7 = a5;
    v8 = a4;
    do
    {
      v11 = *a3++;
      sub_1AF22DDC4(self->_builder, v11, v6, v7);
      --v8;
    }

    while (v8);
  }
}

- (void)dispatchThreadsPerTile:(id *)a3
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

- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5
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

- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
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

- (void)memoryBarrierWithResources:(const void *)a3 count:(unint64_t)a4 afterStages:(unint64_t)a5 beforeStages:(unint64_t)a6
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

- (void)memoryBarrierWithScope:(unint64_t)a3 afterStages:(unint64_t)a4 beforeStages:(unint64_t)a5
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

- (void)sampleCountersInBuffer:(id)a3 atSampleIndex:(unint64_t)a4 withBarrier:(BOOL)a5
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

- (void)setFragmentAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
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

- (void)setFragmentIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
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

- (void)setFragmentIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
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

- (void)setFragmentVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
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

- (void)setFragmentVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
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

- (void)setMeshBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
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

- (void)setMeshBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
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

- (void)setMeshBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
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

- (void)setMeshBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
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

- (void)setMeshSamplerState:(id)a3 atIndex:(unint64_t)a4
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

- (void)setMeshSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
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

- (void)setMeshSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
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

- (void)setMeshSamplerStates:(const void *)a3 withRange:(_NSRange)a4
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

- (void)setMeshTexture:(id)a3 atIndex:(unint64_t)a4
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

- (void)setMeshTextures:(const void *)a3 withRange:(_NSRange)a4
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

- (void)setObjectBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
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

- (void)setObjectBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
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

- (void)setObjectBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
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

- (void)setObjectBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
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

- (void)setObjectSamplerState:(id)a3 atIndex:(unint64_t)a4
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

- (void)setObjectSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
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

- (void)setObjectSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
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

- (void)setObjectSamplerStates:(const void *)a3 withRange:(_NSRange)a4
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

- (void)setObjectTexture:(id)a3 atIndex:(unint64_t)a4
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

- (void)setObjectTextures:(const void *)a3 withRange:(_NSRange)a4
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

- (void)setObjectThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4
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

- (void)setTessellationFactorBuffer:(id)a3 offset:(unint64_t)a4 instanceStride:(unint64_t)a5
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

- (void)setTessellationFactorScale:(float)a3
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

- (void)setThreadgroupMemoryLength:(unint64_t)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
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

- (void)setTileAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
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

- (void)setTileBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
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

- (void)setTileBufferOffset:(unint64_t)a3 atIndex:(unint64_t)a4
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

- (void)setTileBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
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

- (void)setTileBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
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

- (void)setTileIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
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

- (void)setTileIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
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

- (void)setTileSamplerState:(id)a3 atIndex:(unint64_t)a4
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

- (void)setTileSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
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

- (void)setTileSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
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

- (void)setTileSamplerStates:(const void *)a3 withRange:(_NSRange)a4
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

- (void)setTileTexture:(id)a3 atIndex:(unint64_t)a4
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

- (void)setTileTextures:(const void *)a3 withRange:(_NSRange)a4
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

- (void)setTileVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
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

- (void)setTileVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
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

- (void)setVertexAccelerationStructure:(id)a3 atBufferIndex:(unint64_t)a4
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

- (void)setVertexIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
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

- (void)setVertexIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
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

- (void)setVertexVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
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

- (void)setVertexVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
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

- (void)setVisibilityResultMode:(unint64_t)a3 offset:(unint64_t)a4
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

- (void)updateFence:(id)a3 afterStages:(unint64_t)a4
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

- (void)useHeap:(id)a3
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

- (void)useHeap:(id)a3 stages:(unint64_t)a4
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

- (void)useHeaps:(const void *)a3 count:(unint64_t)a4
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

- (void)useHeaps:(const void *)a3 count:(unint64_t)a4 stages:(unint64_t)a5
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

- (void)waitForFence:(id)a3 beforeStages:(unint64_t)a4
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

- (void)setLockCullMode:(BOOL)a3
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

- (void)setLockFillMode:(BOOL)a3
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