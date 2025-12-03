@interface CFXRemoteArgumentBufferDescriptor
- (CFXRemoteArgumentBufferDescriptor)init;
- (void)dealloc;
- (void)patchArgumentBufferWithEncoder:(id)encoder encoderContext:(id *)context;
- (void)setBuffer:(unint64_t)buffer offset:(unint64_t)offset at:(int64_t)at;
- (void)setSampler:(id)sampler at:(int64_t)at;
- (void)setTexture:(unint64_t)texture at:(int64_t)at;
@end

@implementation CFXRemoteArgumentBufferDescriptor

- (CFXRemoteArgumentBufferDescriptor)init
{
  v3.receiver = self;
  v3.super_class = CFXRemoteArgumentBufferDescriptor;
  result = [(CFXRemoteArgumentBufferDescriptor *)&v3 init];
  if (result)
  {
    result->_buffers = 0;
    result->_textures = 0;
    result->_samplers = 0;
  }

  return result;
}

- (void)dealloc
{
  free(self->_buffers);
  free(self->_textures);
  free(self->_samplers);
  v3.receiver = self;
  v3.super_class = CFXRemoteArgumentBufferDescriptor;
  [(CFXRemoteArgumentBufferDescriptor *)&v3 dealloc];
}

- (void)setBuffer:(unint64_t)buffer offset:(unint64_t)offset at:(int64_t)at
{
  atCopy = at;
  offsetCopy = offset;
  v9 = malloc_type_realloc(self->_buffers, 16 * self->_bufferCount + 16, 0x1000040451B5BE8uLL);
  if (v9)
  {
    bufferCount = self->_bufferCount;
    v11 = &v9[bufferCount];
    v11->var0 = buffer;
    v11->var1 = offsetCopy;
    v11->var2 = atCopy;
    self->_buffers = v9;
    self->_bufferCount = bufferCount + 1;
  }
}

- (void)setTexture:(unint64_t)texture at:(int64_t)at
{
  atCopy = at;
  v7 = malloc_type_realloc(self->_textures, 16 * self->_textureCount + 16, 0x1000040D9A13B51uLL);
  if (v7)
  {
    textureCount = self->_textureCount;
    v9 = &v7[textureCount];
    v9->var0 = texture;
    v9->var1 = atCopy;
    self->_textures = v7;
    self->_textureCount = textureCount + 1;
  }
}

- (void)setSampler:(id)sampler at:(int64_t)at
{
  atCopy = at;
  v7 = malloc_type_realloc(self->_samplers, 12 * self->_samplersCount + 12, 0x10000403E1C8BA9uLL);
  if (v7)
  {
    self->_samplers = v7;
    v7[self->_samplersCount].var0 = sampler;
    samplersCount = self->_samplersCount;
    self->_samplers[samplersCount].var1 = atCopy;
    self->_samplersCount = samplersCount + 1;
  }
}

- (void)patchArgumentBufferWithEncoder:(id)encoder encoderContext:(id *)context
{
  if (self->_bufferCount)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = objc_msgSend_bufferForResourceID_(context->var3, a2, self->_buffers[v7].var0, context);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v10, v9, self->_buffers[v7].var1, self->_buffers[v7].var2);
      objc_msgSend_useResource_usage_stages_(context->var0, v11, v9, 1, 3);
      ++v8;
      ++v7;
    }

    while (v8 < self->_bufferCount);
  }

  if (self->_textureCount)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = objc_msgSend_textureForResourceID_(context->var3, a2, self->_textures[v12].var0, context);
      if (v14)
      {
        v15 = v14;
        objc_msgSend_setTexture_atIndex_(encoder, a2, v14, self->_textures[v12].var1);
        objc_msgSend_useResource_usage_stages_(context->var0, v16, v15, 1, 3);
      }

      ++v13;
      ++v12;
    }

    while (v13 < self->_textureCount);
  }

  if (self->_samplersCount)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = objc_msgSend_samplerStateForSamplerDesc_(context->var3, a2, *&self->_samplers[v17].var0, context);
      objc_msgSend_setSamplerState_atIndex_(encoder, v20, v19, self->_samplers[v17].var1);
      ++v18;
      ++v17;
    }

    while (v18 < self->_samplersCount);
  }
}

@end