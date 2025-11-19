@interface _PXGTextureStreamingSession
- (NSIndexSet)textureRequestIDs;
- (_PXGTextureStreamingSession)initWithDisplayAsset:(id)a3 presentationController:(id)a4 pixelBufferSource:(id)a5 pixelBufferSourcesProvider:(id)a6 adjustment:(id)a7;
- (void)dealloc;
- (void)setPixelBufferPool:(__CVPixelBufferPool *)a3;
@end

@implementation _PXGTextureStreamingSession

- (void)dealloc
{
  [(_PXGTextureStreamingSession *)self setPixelBufferPool:0];
  v3.receiver = self;
  v3.super_class = _PXGTextureStreamingSession;
  [(_PXGTextureStreamingSession *)&v3 dealloc];
}

- (void)setPixelBufferPool:(__CVPixelBufferPool *)a3
{
  pixelBufferPool = self->_pixelBufferPool;
  if (pixelBufferPool != a3)
  {
    CVPixelBufferPoolRelease(pixelBufferPool);
    self->_pixelBufferPool = a3;
  }
}

- (NSIndexSet)textureRequestIDs
{
  v2 = [(NSMutableIndexSet *)self->_textureRequestIDs copy];

  return v2;
}

- (_PXGTextureStreamingSession)initWithDisplayAsset:(id)a3 presentationController:(id)a4 pixelBufferSource:(id)a5 pixelBufferSourcesProvider:(id)a6 adjustment:(id)a7
{
  v22 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = _PXGTextureStreamingSession;
  v17 = [(_PXGTextureStreamingSession *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_displayAsset, a3);
    objc_storeStrong(&v18->_presentationController, a4);
    objc_storeStrong(&v18->_pixelBufferSource, a5);
    objc_storeStrong(&v18->_pixelBufferSourcesProvider, a6);
    v19 = objc_alloc_init(MEMORY[0x277CCAB58]);
    textureRequestIDs = v18->_textureRequestIDs;
    v18->_textureRequestIDs = v19;

    objc_storeStrong(&v18->_displayAdjustment, a7);
  }

  return v18;
}

@end