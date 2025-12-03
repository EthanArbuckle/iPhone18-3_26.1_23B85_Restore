@interface TSDMetalContext
- ($1AB5FA073B851C12C2339EC22442E995)timingInfo;
- (CGSize)layerSize;
- (MTLCommandBuffer)commandBuffer;
- (MTLCommandQueue)commandQueue;
- (MTLDevice)device;
- (MTLRenderCommandEncoder)renderEncoder;
- (MTLRenderPassDescriptor)passDescriptor;
- (TSDMetalShader)shader;
- (id)copyWithZone:(_NSZone *)zone;
- (void)retainObject:(id)object;
- (void)setCommandBuffer:(id)buffer;
@end

@implementation TSDMetalContext

- (void)setCommandBuffer:(id)buffer
{
  obj = buffer;
  WeakRetained = objc_loadWeakRetained(&self->_commandBuffer);

  if (WeakRetained != obj)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    retainedObjects = self->_retainedObjects;
    self->_retainedObjects = v5;
  }

  objc_storeWeak(&self->_commandBuffer, obj);
}

- (void)retainObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (!retainedObjects)
    {
      goto LABEL_5;
    }

    if ([(NSMutableSet *)retainedObjects count])
    {
LABEL_7:
      [(NSMutableSet *)self->_retainedObjects addObject:objectCopy];
      goto LABEL_8;
    }

    if (!self->_retainedObjects)
    {
LABEL_5:
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v7 = self->_retainedObjects;
      self->_retainedObjects = v6;
    }

    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x3032000000;
    v13[3] = __Block_byref_object_copy__14;
    v13[4] = __Block_byref_object_dispose__14;
    selfCopy = self;
    v14 = selfCopy;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = __Block_byref_object_copy__14;
    v11[4] = __Block_byref_object_dispose__14;
    v12 = self->_retainedObjects;
    WeakRetained = objc_loadWeakRetained(&selfCopy->_commandBuffer);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __32__TSDMetalContext_retainObject___block_invoke;
    v10[3] = &unk_279D48D28;
    v10[4] = v11;
    v10[5] = v13;
    [WeakRetained addCompletedHandler:v10];

    _Block_object_dispose(v11, 8);
    _Block_object_dispose(v13, 8);

    goto LABEL_7;
  }

LABEL_8:
}

void __32__TSDMetalContext_retainObject___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TSDMetalContext);
  WeakRetained = objc_loadWeakRetained(&self->_device);
  [(TSDMetalContext *)v4 setDevice:WeakRetained];

  [(TSDMetalContext *)v4 setPixelFormat:self->_pixelFormat];
  [(TSDMetalContext *)v4 setLayerSize:self->_layerSize.width, self->_layerSize.height];
  [(TSDMetalContext *)v4 setCurrentBuffer:self->_currentBuffer];
  [(TSDMetalContext *)v4 setTimingInfo:self->_timingInfo.currentTime, self->_timingInfo.displayLinkPresentationTime, self->_timingInfo.elapsedShowTime];
  v6 = objc_loadWeakRetained(&self->_commandQueue);
  [(TSDMetalContext *)v4 setCommandQueue:v6];

  v7 = objc_loadWeakRetained(&self->_commandBuffer);
  [(TSDMetalContext *)v4 setCommandBuffer:v7];

  v8 = objc_loadWeakRetained(&self->_passDescriptor);
  [(TSDMetalContext *)v4 setPassDescriptor:v8];

  v9 = objc_loadWeakRetained(&self->_shader);
  [(TSDMetalContext *)v4 setShader:v9];

  v10 = objc_loadWeakRetained(&self->_renderEncoder);
  [(TSDMetalContext *)v4 setRenderEncoder:v10];

  [(TSDMetalContext *)v4 setDestinationColorSpace:self->_destinationColorSpace];
  [(TSDMetalContext *)v4 setRetainedObjects:self->_retainedObjects];
  return v4;
}

- (MTLDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

- (CGSize)layerSize
{
  width = self->_layerSize.width;
  height = self->_layerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)timingInfo
{
  currentTime = self->_timingInfo.currentTime;
  displayLinkPresentationTime = self->_timingInfo.displayLinkPresentationTime;
  elapsedShowTime = self->_timingInfo.elapsedShowTime;
  result.var2 = elapsedShowTime;
  result.var1 = displayLinkPresentationTime;
  result.var0 = currentTime;
  return result;
}

- (MTLCommandQueue)commandQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_commandQueue);

  return WeakRetained;
}

- (MTLCommandBuffer)commandBuffer
{
  WeakRetained = objc_loadWeakRetained(&self->_commandBuffer);

  return WeakRetained;
}

- (MTLRenderPassDescriptor)passDescriptor
{
  WeakRetained = objc_loadWeakRetained(&self->_passDescriptor);

  return WeakRetained;
}

- (TSDMetalShader)shader
{
  WeakRetained = objc_loadWeakRetained(&self->_shader);

  return WeakRetained;
}

- (MTLRenderCommandEncoder)renderEncoder
{
  WeakRetained = objc_loadWeakRetained(&self->_renderEncoder);

  return WeakRetained;
}

@end