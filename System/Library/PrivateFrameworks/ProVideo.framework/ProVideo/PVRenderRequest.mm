@interface PVRenderRequest
- (CGSize)outputSize;
- (PVRenderRequest)initWithOutputs:(id)outputs atTime:(id *)time outputSize:(CGSize)size;
@end

@implementation PVRenderRequest

- (PVRenderRequest)initWithOutputs:(id)outputs atTime:(id *)time outputSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  outputsCopy = outputs;
  v16.receiver = self;
  v16.super_class = PVRenderRequest;
  v11 = [(PVRenderRequest *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_outputNodes, outputs);
    v13 = *&time->var0;
    v12->_time.epoch = time->var3;
    *&v12->_time.value = v13;
    v12->_outputSize.width = width;
    v12->_outputSize.height = height;
    *&v12->_priority = 0x200000001;
    v12->_gpuPriority = 1;
    v12->_highQuality = 0;
    v12->_parentCode = +[PVRenderRequestJobDelegate jobTypeTag];
    v12->_childCode = 0;
    v12->_outputCVPixelBufferFormat = 0;
    userContext = v12->_userContext;
    v12->_userContext = 0;
  }

  return v12;
}

- (CGSize)outputSize
{
  width = self->_outputSize.width;
  height = self->_outputSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end