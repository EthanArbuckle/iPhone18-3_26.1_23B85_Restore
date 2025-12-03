@interface _PXGTextureStreamingSession
- (NSIndexSet)textureRequestIDs;
- (_PXGTextureStreamingSession)initWithDisplayAsset:(id)asset presentationController:(id)controller pixelBufferSource:(id)source pixelBufferSourcesProvider:(id)provider adjustment:(id)adjustment;
- (void)dealloc;
- (void)setPixelBufferPool:(__CVPixelBufferPool *)pool;
@end

@implementation _PXGTextureStreamingSession

- (void)dealloc
{
  [(_PXGTextureStreamingSession *)self setPixelBufferPool:0];
  v3.receiver = self;
  v3.super_class = _PXGTextureStreamingSession;
  [(_PXGTextureStreamingSession *)&v3 dealloc];
}

- (void)setPixelBufferPool:(__CVPixelBufferPool *)pool
{
  pixelBufferPool = self->_pixelBufferPool;
  if (pixelBufferPool != pool)
  {
    CVPixelBufferPoolRelease(pixelBufferPool);
    self->_pixelBufferPool = pool;
  }
}

- (NSIndexSet)textureRequestIDs
{
  v2 = [(NSMutableIndexSet *)self->_textureRequestIDs copy];

  return v2;
}

- (_PXGTextureStreamingSession)initWithDisplayAsset:(id)asset presentationController:(id)controller pixelBufferSource:(id)source pixelBufferSourcesProvider:(id)provider adjustment:(id)adjustment
{
  assetCopy = asset;
  controllerCopy = controller;
  sourceCopy = source;
  providerCopy = provider;
  adjustmentCopy = adjustment;
  v23.receiver = self;
  v23.super_class = _PXGTextureStreamingSession;
  v17 = [(_PXGTextureStreamingSession *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_displayAsset, asset);
    objc_storeStrong(&v18->_presentationController, controller);
    objc_storeStrong(&v18->_pixelBufferSource, source);
    objc_storeStrong(&v18->_pixelBufferSourcesProvider, provider);
    v19 = objc_alloc_init(MEMORY[0x277CCAB58]);
    textureRequestIDs = v18->_textureRequestIDs;
    v18->_textureRequestIDs = v19;

    objc_storeStrong(&v18->_displayAdjustment, adjustment);
  }

  return v18;
}

@end