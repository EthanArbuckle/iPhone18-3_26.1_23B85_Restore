@interface CFXRemoteArgumentEncoder
- (CFXRemoteArgumentEncoder)initWithRemoteFrameBuilder:(__CFXRemoteFrameBuilder *)a3 encoder:(id)a4;
- (void)dealloc;
- (void)setAccelerationStructure:(id)a3 atIndex:(unint64_t)a4;
- (void)setArgumentBuffer:(id)a3 offset:(unint64_t)a4;
- (void)setArgumentBuffer:(id)a3 startOffset:(unint64_t)a4 arrayElement:(unint64_t)a5;
- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setComputePipelineState:(id)a3 atIndex:(unint64_t)a4;
- (void)setComputePipelineStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setIndirectCommandBuffer:(id)a3 atIndex:(unint64_t)a4;
- (void)setIndirectCommandBuffers:(const void *)a3 withRange:(_NSRange)a4;
- (void)setIntersectionFunctionTable:(id)a3 atIndex:(unint64_t)a4;
- (void)setIntersectionFunctionTables:(const void *)a3 withRange:(_NSRange)a4;
- (void)setRenderPipelineState:(id)a3 atIndex:(unint64_t)a4;
- (void)setRenderPipelineStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setVisibleFunctionTable:(id)a3 atIndex:(unint64_t)a4;
- (void)setVisibleFunctionTables:(const void *)a3 withRange:(_NSRange)a4;
@end

@implementation CFXRemoteArgumentEncoder

- (CFXRemoteArgumentEncoder)initWithRemoteFrameBuilder:(__CFXRemoteFrameBuilder *)a3 encoder:(id)a4
{
  v11.receiver = self;
  v11.super_class = CFXRemoteArgumentEncoder;
  v6 = [(CFXRemoteArgumentEncoder *)&v11 init];
  v7 = v6;
  if (v6)
  {
    builder = v6->_builder;
    if (builder != a3)
    {
      if (builder)
      {
        CFRelease(builder);
        v7->_builder = 0;
      }

      if (a3)
      {
        v9 = CFRetain(a3);
      }

      else
      {
        v9 = 0;
      }

      v7->_builder = v9;
    }

    v7->_encoder = a4;
  }

  return v7;
}

- (void)dealloc
{
  sub_1AF22DD90(self->_builder);
  builder = self->_builder;
  if (builder)
  {
    CFRelease(builder);
    self->_builder = 0;
  }

  v4.receiver = self;
  v4.super_class = CFXRemoteArgumentEncoder;
  [(CFXRemoteArgumentEncoder *)&v4 dealloc];
}

- (void)setAccelerationStructure:(id)a3 atIndex:(unint64_t)a4
{
  v4 = sub_1AF0D5194();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDEC410(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)setArgumentBuffer:(id)a3 offset:(unint64_t)a4
{
  v4 = a4;
  objc_msgSend_setArgumentBuffer_offset_(self->_encoder, a2, a3, a4);
  builder = self->_builder;
  v11 = objc_msgSend_encodedLength(self->_encoder, v8, v9, v10);

  sub_1AF22DC08(builder, a3, v4, v11);
}

- (void)setArgumentBuffer:(id)a3 startOffset:(unint64_t)a4 arrayElement:(unint64_t)a5
{
  v5 = sub_1AF0D5194();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDEC410(v5, v6, v7, v8, v9, v10, v11, v12);
  }
}

- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v6 = a4;
  objc_msgSend_setBuffer_offset_atIndex_(self->_encoder, a2, a3, a4);
  builder = self->_builder;

  sub_1AF22DC6C(builder, a3, v6, a5);
}

- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v7 = a4;
  v8 = a3;
  objc_msgSend_setBuffers_offsets_withRange_(self->_encoder, a2, a3, a4);
  for (; length; --length)
  {
    v11 = *v8++;
    v10 = v11;
    v12 = *v7++;
    sub_1AF22DC6C(self->_builder, v10, v12, location++);
  }
}

- (void)setComputePipelineState:(id)a3 atIndex:(unint64_t)a4
{
  v4 = sub_1AF0D5194();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDEC410(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)setComputePipelineStates:(const void *)a3 withRange:(_NSRange)a4
{
  v4 = sub_1AF0D5194();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDEC410(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)setIndirectCommandBuffer:(id)a3 atIndex:(unint64_t)a4
{
  v4 = sub_1AF0D5194();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDEC410(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)setIndirectCommandBuffers:(const void *)a3 withRange:(_NSRange)a4
{
  v4 = sub_1AF0D5194();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDEC410(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)setIntersectionFunctionTable:(id)a3 atIndex:(unint64_t)a4
{
  v4 = sub_1AF0D5194();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDEC410(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)setIntersectionFunctionTables:(const void *)a3 withRange:(_NSRange)a4
{
  v4 = sub_1AF0D5194();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDEC410(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)setRenderPipelineState:(id)a3 atIndex:(unint64_t)a4
{
  v4 = sub_1AF0D5194();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDEC410(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)setRenderPipelineStates:(const void *)a3 withRange:(_NSRange)a4
{
  v4 = sub_1AF0D5194();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDEC410(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)setSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  v4 = a4;
  objc_msgSend_setSamplerState_atIndex_(self->_encoder, a2, a3, a4);
  builder = self->_builder;

  sub_1AF22DD34(builder, a3, v4, v7);
}

- (void)setSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  objc_msgSend_setSamplerStates_withRange_(self->_encoder, a2, a3, a4.location);
  for (; length; --length)
  {
    v9 = *v6++;
    sub_1AF22DD34(self->_builder, v9, location++, v8);
  }
}

- (void)setTexture:(id)a3 atIndex:(unint64_t)a4
{
  v4 = a4;
  objc_msgSend_setTexture_atIndex_(self->_encoder, a2, a3, a4);
  builder = self->_builder;

  sub_1AF22DCD8(builder, a3, v4, v7);
}

- (void)setTextures:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  objc_msgSend_setTextures_withRange_(self->_encoder, a2, a3, a4.location);
  for (; length; --length)
  {
    v9 = *v6++;
    sub_1AF22DCD8(self->_builder, v9, location++, v8);
  }
}

- (void)setVisibleFunctionTable:(id)a3 atIndex:(unint64_t)a4
{
  v4 = sub_1AF0D5194();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDEC410(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)setVisibleFunctionTables:(const void *)a3 withRange:(_NSRange)a4
{
  v4 = sub_1AF0D5194();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDEC410(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

@end